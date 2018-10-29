#include "./simulator.h"

const unsigned int MEM_SIZE = 0x100010;
const unsigned int STACK_POS = 0x100000;
int debug_mode = 0;
const char* Regs[] = {"zero","ra","sp","gp","tp","t0","t1","t2","s0(fp)","s1","a0","a1","a2","a3","a4","a5","a6","a7","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11","t3","t4","t5","t6"};

int main(int argc,char **argv){

  FILE *fp;
  int opt;
  while((opt=getopt(argc,argv,"dh"))!=-1){
    switch(opt){
      case 'd':
        fprintf(stdout,"simulate in debug mode...\n");
        debug_mode = 1;
        break;
      case 'h':
        usage();
        exit(1);
        break;
    }
  }


  if((argc-optind)==0){
    usage();
    exit(1);
  }

  fp = fopen(argv[optind],"r");
  if(fp==NULL){
    fprintf(stderr,"fopen failed\n");
    fprintf(stderr,"can not open %s\n",argv[optind]);
    exit(1);
  }

  FILE *in = fopen("input","rb");
  if(in==NULL){
    fprintf(stderr,"input file not found\n");
  }
  FILE *out = fopen("output","wb");
  if(out==NULL){
    fprintf(stderr,"can not create output file\n");
  }


  Simulator *sim = init(MEM_SIZE,STACK_POS,in,out);

  load(sim,fp);
  Op *op = (Op *)malloc(sizeof(Op));
  exec(sim,op);
  fclose(fp);
  destroy(sim);
  free(sim);
  sim=NULL;
  exit(0);
}
