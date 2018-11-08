#include "./fsim.h"
int main(){
  //unsigned char p = 0;
  cout << fisneg(-1.2) << endl;
  cout << fisneg(1.2) << endl;
  cout << fabs(1.2) << endl;
  cout << fabs(-1.2) << endl;
  cout << fless(2.0,3.0) << endl;
  cout << fless(3.0,2.0) << endl;
  cout << fneg(-1.25) << endl;
  cout << fneg(1.25) << endl;
  cout << fispos(-1.25) << endl;
  cout << fispos(1.25) << endl;
  cout << fiszero(0.0) << endl;
  cout << fiszero(-1.25) << endl;
  return 0;
}
