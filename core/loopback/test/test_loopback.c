#include <unistd.h>
#include <sys/types.h>
#include <time.h>
#include <errno.h>

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <termios.h>
#include <sys/stat.h>
#include <sys/ioctl.h>

#define BUFLEN 500
#define MSGLEN 1024
#define INFGTLEN 500
#define CMDLEN 500

#define NUM_OBS_PAUSE 1000000

int baudnum2sym(int num_baud, speed_t *sym_baud) {
    int ret;
    ret = 0;
    switch (num_baud) {
    case 9600:
	*sym_baud = B9600;
	break;
    case 115200:
	*sym_baud = B115200;
	break;
    case 230400:
	*sym_baud = B230400;
	break;
    case 460800:
	*sym_baud = B460800;
	break;
    case 500000:
	*sym_baud = B500000;
	break;
    case 576000:
	*sym_baud = B576000;
	break;
    case 921600:
	*sym_baud = B921600;
	break;
    case 1000000:
	*sym_baud = B1000000;
	break;
    default:
	ret = -1;
	break;
    }
    return(ret);
}

int main(int argc, char *argv[]) {
    int fd;
    int dat_fd;
    char *sftty;
    char *dat_fname;
    struct termios options;

    char *sbuf, *rbuf;
    size_t nbuf;
    char errmsg[MSGLEN];
    char lsofcmd[CMDLEN];
    char *spos;
    char *rpos;
    size_t clen, srem, rrem;
    ssize_t slen, rlen;
    int qlen;
    int i;
    int num_err;
    int ret;

    struct timespec ts_begin;
    struct timespec ts_end;
    struct timespec ts_sleep;
    int dt_sec, dt_nsec;
    double dt;

    struct stat stat_buf;

    int num_pause;
    int cycl_rem_print, count, num_send_end;
    int num_baud;
    speed_t sym_baud;
    
    if (argc != 4) {
        fprintf(stderr,"usage %s [tty] [baud] [file]\n",argv[0]);
        exit(1);
    }
    sftty = argv[1];
    num_baud = atoi(argv[2]);
    dat_fname = argv[3];

    ret = stat(sftty,&stat_buf);
    if (ret == -1) {
	fprintf(stderr,"unable to find %s\n",sftty);
	exit(1);
    }
    snprintf(lsofcmd,CMDLEN,"lsof %s > /dev/null",sftty);
    ret = system(lsofcmd);
    if (WEXITSTATUS(ret) != 1) {
	fprintf(stderr,"unable to open %s exclusively\n",sftty);
	exit(1);
    }
    snprintf(errmsg,MSGLEN,"unable to open %s",sftty);
    fd = open(sftty, O_RDWR | O_NOCTTY | O_NDELAY);
    if (fd == -1) {
        perror(errmsg);
        exit(1);
    }
    fcntl(fd, F_SETFL, FNDELAY);

    snprintf(errmsg,MSGLEN,"unable to open %s",dat_fname);
    dat_fd = open(dat_fname, O_RDONLY);
    if (dat_fd == -1) {
        perror(errmsg);
        exit(1);
    }
    if (fstat(dat_fd, &stat_buf) == -1) {
        perror("fstat(dat_fd) failed");
        exit(1);
    }
    nbuf = stat_buf.st_size;
    sbuf = (char *)malloc(nbuf);
    rbuf = (char *)malloc(nbuf);

    tcgetattr(fd, &options);

    ret = baudnum2sym(num_baud, &sym_baud);
    if (ret == -1) {
	fprintf(stderr,"unknown baud rate\n");
	exit(1);
    }
    ret = cfsetispeed(&options, sym_baud);
    if (ret == -1) perror("cfsetispeed");
    ret = cfsetospeed(&options, sym_baud);
    if (ret == -1) perror("cfsetospeed");

    options.c_cflag |= (CLOCAL | CREAD);

    options.c_cflag &= ~PARENB;
    options.c_cflag &= ~CSTOPB;
    options.c_cflag &= ~CSIZE;
    options.c_cflag |= CS8;

    options.c_lflag &= ~(ICANON | ECHO | ECHOE | ISIG);

    options.c_iflag &= ~(INLCR | IGNCR | ICRNL | IUCLC);
    
    options.c_oflag &= ~OPOST;

    ret = tcsetattr(fd, TCSAFLUSH, &options);
    if (ret == -1) perror("tcsetattr");

    ts_sleep.tv_sec = 0;
    ts_sleep.tv_nsec = 1000000L;
    rlen = 1;
    while (rlen > 0) {
        rlen = read(fd,rbuf,nbuf);
        nanosleep(&ts_sleep,NULL);
    }

    num_err = 0;
    clen = read(dat_fd, sbuf, nbuf);
    if (clen != nbuf) {
        fprintf(stderr,"clen != nbuf\n");
        exit(1);
    }
    close(dat_fd);

    clock_gettime(CLOCK_REALTIME,&ts_begin);
    for (i=0;i < NUM_OBS_PAUSE; i++){
        asm("pause");
    }
    clock_gettime(CLOCK_REALTIME,&ts_end);
    dt_sec = ts_end.tv_sec - ts_begin.tv_sec;
    dt_nsec = ts_end.tv_nsec - ts_begin.tv_nsec;
    dt = (double) dt_sec + 1.0e-9*(double) dt_nsec;
    dt = dt/NUM_OBS_PAUSE;
    num_pause = (int)(100.0e-6/dt);
    printf("number pause for 100 us = %d\n",num_pause);
    cycl_rem_print = 0.1/100e-6;
    
    spos = sbuf;
    rpos = rbuf;
    srem = nbuf;
    rrem = nbuf;
    count = 0;
    num_send_end = 0;
    clock_gettime(CLOCK_REALTIME,&ts_begin);
    while (srem > 0 || rrem > 0) {
        if (srem > 0) {
            if (rrem - srem < INFGTLEN) {
                ret = ioctl(fd, TIOCOUTQ, &qlen);
                if (ret == -1) perror("TIOCOUTQ");
                if (qlen < BUFLEN/2) {
                    clen = (srem<BUFLEN)?srem:BUFLEN;
                    slen = write(fd,spos,clen);
                    if (slen <= 0) {
                        fprintf(stderr,"write failed. srem = %ld\n", srem);
                    }
                    spos = spos + slen;
                    srem = srem - slen;
                }
            }
        } else {
            num_send_end += 1;
        }

        if (rrem > 0) {
            ret = ioctl(fd, TIOCINQ, &qlen);
            if (ret == -1) perror("TIOCINQ");
            if (qlen > 0) {
                rlen = read(fd,rpos,BUFLEN);
                if (rlen <= 0) {
                    fprintf(stderr,"read failed. rrem = %ld\n", rrem);
                }
                rpos = rpos + rlen;
                rrem = rrem - rlen;
            }
        }
        count = count + 1;
        if (count == cycl_rem_print) {
            printf("%12ld %12ld byte\n", srem, rrem);
            count = 0;
        }
        if (num_send_end > (double)INFGTLEN*10.0/(double)num_baud/1e-4*10) {
            printf("stop waiting for data\n");
            break;
        }
        for (i=0;i < num_pause; i++){
            asm("pause");
        }
    }
    clock_gettime(CLOCK_REALTIME,&ts_end);

    close(fd);

    printf("checking errors\n");
    num_err = 0;
    for (i=0; i < nbuf; i++) {
        if (sbuf[i] != rbuf[i]) { 
            num_err = num_err + 1;
            printf("C %d %hhx %hhx\n", i, sbuf[i], rbuf[i]);
        }
    }

    printf("\n\ntotal errors = %d\n",num_err);
    dt_sec = ts_end.tv_sec - ts_begin.tv_sec;
    dt_nsec = ts_end.tv_nsec - ts_begin.tv_nsec;
    dt = (double) dt_sec + 1.0e-9*(double) dt_nsec;
    printf("total time = %12.3f\n", dt);
    printf("observed baud = %10.1f\n", (double) (nbuf*10)/dt);
    printf("error rate = %10.8f\n", (double)num_err / (double)nbuf);

    exit(0);
}
