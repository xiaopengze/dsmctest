#include<iostream>

#include"library.h"
using namespace std;
int main()
{   char a[]=" ";
    char**hh;
    int m;
    void *P;
     cout<<"hello"<<endl;
    sparta_open_no_mpi(0,nullptr,&P);
    sparta_command(P,"hello");
    cout<<"hello"<<endl;
    return 0;
}