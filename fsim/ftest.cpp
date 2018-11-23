#include "./fsim.h"
int main(){
  cout << fisneg(-1.2) << endl;
  cout << fisneg(1.2) << endl;
  cout << fpuabs(1.2) << endl;
  cout << fpuabs(-1.2) << endl;
  cout << fless(2.0,3.0) << endl;
  cout << fless(3.0,2.0) << endl;
  cout << fpuneg(-1.25) << endl;
  cout << fpuneg(1.25) << endl;
  cout << fispos(-1.25) << endl;
  cout << fispos(1.25) << endl;
  cout << fiszero(0.0) << endl;
  
  cout << fiszero(-1.25) << endl;
  cout << fmul(1.2,1.2) << endl;
  cout << fmul(-1.2,-1.2) << endl;
  cout << fmul(1.3,-1.3) << endl;
  cout << fadd(1.2,1.2) << endl;
  cout << fmul(0.0,1.3) << endl;
  cout << fadd(0.0,1.32) << endl;
  
  cout << fadd(-1.3,10.3) << endl;
  cout << fadd(10.3,-1.5) << endl;
  cout << fsub(10.3,1.6) << endl;
  cout << fsqrt(6) << endl;
  cout << fsqrt(0) << endl;
  cout << fsqrt(2.38) << endl;
  cout << finv(2) << endl;
  cout << finv(-2) << endl;
  cout << finv(0.5) << endl;
  cout << finv(-0.324) << endl;
  cout << finv(0.324) << endl;
  cout << finv(0) << endl;
  cout << fdiv(2,1) << endl;
  cout << fdiv(-23.451,31.35) << endl;
  cout << fdiv(1146408,364913) << endl;
  cout << fadd(-1.24,1.24) << endl;
  return 0;
}
