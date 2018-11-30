#include "./simulator.h"

const unsigned int MEM_SIZE  = 0x100010;
const unsigned int STACK_POS = MEM_SIZE - 0x10;
int debug_mode = 0;
int fpu_mode = 0;
const char* Regs[] = {"zero","ra","sp","gp","tp","t0","t1","t2","s0(fp)","s1","a0","a1","a2","a3","a4","a5","a6","a7","s2","s3","s4","s5","s6","s7","s8","s9","s10","s11","t3","t4","t5","t6"};
const char* fRegs[] ={"ft0","ft1","ft2","ft3","ft4","ft5","ft6","ft7","fs0","fs1","fa0","fa1","fa2","fa3","fa4","fa5","fa6","fa7","fs2","fs3","fs4","fs5","fs6","fs7","fs8","fs9","fs10","fs11","ft8","ft9","ft10","ft11"};
int main(int argc,char **argv){

  FILE *fp;
  int opt;
  while((opt=getopt(argc,argv,"dhf"))!=-1){
    switch(opt){
      case 'd':
        fprintf(stdout,"simulate in debug mode...\n");
        debug_mode = 1;
        break;
      case 'h':
        usage();
        exit(1);
        break;
      case 'f':
        fprintf(stdout,"use fpu...\n");
        fpu_mode = 1;
        break;
    }
  }


  if((argc-optind)==0){
    usage();
    exit(1);
  }

  std::string binfilename = argv[optind];
  std::string coefilename = binfilename.substr(0, binfilename.size() - 4) + ".coe";
  fp = fopen(binfilename.c_str(),"r");
  if(fp==NULL){
    fprintf(stderr,"fopen failed\n");
    fprintf(stderr,"can not open %s\n",argv[optind]);
    exit(1);
  }
  FILE *coef = fopen(coefilename.c_str(),"rb");
  if(coef==NULL){
    fprintf(stderr,"coe file not found\n");
  }
  FILE *in = fopen("contest_input.bin","rb");
  if(in==NULL){
    fprintf(stderr,"input file not found\n");
  }
  FILE *out = fopen("output.ppm","wb");
  if(out==NULL){
    fprintf(stderr,"can not create output file\n");
  }


  Simulator *sim = init(MEM_SIZE,STACK_POS,in,out,coef);
  load(sim,fp);
  Op *op = (Op *)malloc(sizeof(Op));
  exec(sim,op);
  free(op);
  op=NULL;
  fclose(fp);
  fclose(out);
  fclose(in);
  fclose(coef);
  destroy(sim);
  free(sim);
  sim=NULL;
  exit(0);
}
