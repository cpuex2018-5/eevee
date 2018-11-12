#include "simulator.h"
extern int debug_mode;
extern const char *Regs[];
extern const char *fRegs[];

void print_regs(Simulator *sim){
  for(int i=0;i<32;i++){
    fprintf(stdout,"Reg %02d(%7s):   D:%8d   H:%8x\n",i,Regs[i],sim->registers[i],sim->registers[i]);
  }
}


void print_fregs(Simulator *sim){
  for(int i=0;i<32;i++){
    if (std::isnan(sim->f_registers[i])) {
      std::string str = to_string(sim->f_registers[i]);
      fprintf(stdout,"fReg %02d(%7s):  D:%s\n",i,fRegs[i],str.c_str());
    } else {
      fprintf(stdout,"fReg %02d(%7s):  D:%f\n",i,fRegs[i],sim->f_registers[i]);
    }
  }
}


void dump_memory(Simulator *sim,int start,int end){
  if(start < 0) start = 0;
  if(end > 0x100010) end = 0x100010;
  int len = end - start;
  if(len < 0) len = 0;

  int sp = sim->registers[2];
  for(int i=0;i<len;i++){
    if(i%16 == 0){
      fprintf(stdout,"%07x :",(start+i));
    }
    if((start+i)==sp){
      printf("\x1b[41m%02x\x1b[49m ",(unsigned char)sim->data_memory[start+i]);
    }
    else{
      printf("%02x ",(unsigned char)sim->data_memory[start+i]);
    }
      if(i%16 == 15){
      fprintf(stdout,"\n");
    }
  }
  fprintf(stdout,"\n");
  fflush(stdout);
}

void list_breakpoints(Simulator *sim){
  fprintf(stdout,"list of breakpoints...\n");
  for(unsigned int i=0;i<sim->breakpoints.size();i++){
    fprintf(stdout,"breakpoints[%03d]: pc: %08d\n",i,sim->breakpoints[i]);
  }
}

void delete_breakpoints(Simulator *sim){
  for(unsigned int i=0;sim->breakpoints.size()>0;i++){
    sim->breakpoints.erase(sim->breakpoints.begin());
  }
}

void add_breakpoints(Simulator *sim,int v){
  if(v<0){
    fprintf(stdout,"Warning! you are setting a breakpoint outside text memory\n");
  }
  if((unsigned int) v > sim->text_size){
    fprintf(stdout,"Warning! you are setting a breakpoint outside text memory\n");
  }
  if(v%4!=0){
    fprintf(stdout,"Warning! breakpoints must be set at pc which is multiple of 4\n");
  }
  for(unsigned int i=0;i<sim->breakpoints.size();i++){
    if(sim->breakpoints[i]==(unsigned int)v){
      fprintf(stdout,"breakpoints already set\n");
      return;
    }
  }
  sim -> breakpoints.push_back(v);
}

int debug_parse(Simulator *sim,std::string& buffer,std::vector<std::string> &dbginst){
  //return 1 if input is empty else return 0
  int curr_pos = 0;
  int start_pos = 0;
  while(skip(buffer[curr_pos])){
    curr_pos++;
  }
  if(buffer[curr_pos]=='\0'){
    return 1;
  }

  start_pos = curr_pos;
  while(!skip(buffer[curr_pos]) && buffer[curr_pos] != '\0'){
    curr_pos++;
  }
  dbginst.push_back(buffer.substr(start_pos,curr_pos-start_pos));
  while(skip(buffer[curr_pos])){
    curr_pos++;
  }
  if(buffer[curr_pos] == '\0'){
    return 0;
  }

  start_pos = curr_pos;
  while(!skip(buffer[curr_pos]) && buffer[curr_pos] != '\0'){
    curr_pos++;
  }
  dbginst.push_back(buffer.substr(start_pos,curr_pos-start_pos));
  while(skip(buffer[curr_pos])){
    curr_pos++;
  }
  if(buffer[curr_pos] == '\0'){
    return 0;
  }

  start_pos = curr_pos;
  while(!skip(buffer[curr_pos]) && buffer[curr_pos] != '\0'){
    curr_pos++;
  }
  dbginst.push_back(buffer.substr(start_pos,curr_pos-start_pos));
  return 0;
}



int debug_exec(Simulator *sim,std::vector<std::string> &dbginst){
  //return -1 if "c",return 0 if other command, return -1 if command is wrong
  
  if(dbginst[0]=="p" && dbginst.size()==2){
    if(dbginst[1]=="r"){
      print_regs(sim);
    }
    else if(dbginst[1]=="fr"){
      print_fregs(sim);
    }
    else{
      fprintf(stderr,"(unknown)\n");
    }
    return 0;
  }
  else if(dbginst[0] == "d" && (dbginst.size()==2 || dbginst.size()==3)){
    if(dbginst[1]=="sp" && dbginst.size()==2){
      int sp = sim->registers[2];
      int start = sp - 100;
      if(start < 0) start = 0;
      int end = sp + 100;
      if(end > 0x100010) end = 0x100010;
      dump_memory(sim,start,end);
    }
    else if(dbginst.size()==3){
      int start = 0;
      int end = 0;
      try{
        start = std::stoi(dbginst[1],nullptr,10);
        end = std::stoi(dbginst[2],nullptr,10);
        dump_memory(sim,start,end);
      }
      catch (...){
        fprintf(stderr,"arguments must be an integer!!\n");
      }
    }
    else{
      fprintf(stderr,"(unknown)\n");
    }
    return 0;
  }
  else if(dbginst[0] == "c" && dbginst.size() == 1){
    debug_mode = 0;
    printf("continue...\n");
    return 1;
  }
  else if(dbginst[0] == "i" && dbginst.size() == 2){
    if(dbginst[1]=="b"){
      list_breakpoints(sim);
    }
    else{
      printf("(unknown)\n");
    }
    return 0;
  }
  else if(dbginst[0] == "delete" && dbginst.size()==1){
    delete_breakpoints(sim);
    printf("breakpoints deleted\n");
    return 0;
  }
  else if(dbginst[0] == "delete" && dbginst.size()==2){
    int index = 0;
    try{
      index = std::stoi(dbginst[1],nullptr,10);
    }
    catch (...){
      fprintf(stderr,"arguments must be an integer\n");
    }
    if(index < 0 || (unsigned int)index > sim->breakpoints.size()-1 || sim->breakpoints.size()==0){
      fprintf(stderr,"invalid argument\n");
      return 0;
    }
    sim->breakpoints.erase(sim->breakpoints.begin()+index);
    return 0;
  }
  else if(dbginst[0] == "b" && dbginst.size()==2){
    int bp = 0;
    try{
      bp = std::stoi(dbginst[1],nullptr,10);
      add_breakpoints(sim,bp);
    }
    catch (...){
      fprintf(stderr,"argument must be an integer!!\n");
    }
    return 0;
  }
  else{
    fprintf(stderr,"(unknown)\n");
  }
  return -1;
}

