program main
implicit none
real(8):: Cup, Cdown, dt1 ,dt2, Qup ,Qdown
real(8):: Efup,Efdown,EEup,EEdown,Tup,Tdown
integer:: ierror
character(len=20):: kk,ee
OPEN(UNIT=8,FILE='./test.txt',STATUS='OLD',IOSTAT=ierror,ACCESS='append')
!计算一个总能量，省的在这里费事
call initial(Qup,Qdown,Cup,Cdown,Tup,Tdown,dt1)
write(*,*)Tup,Tdown
call update(Qup,Cup,Tup,dt1)
call update(Qdown,Cdown,Tdown,dt1)
write(*,*)Tup,Tdown
end program main

subroutine initial(Qup,Qdown,Cup,Cdown,Tup,Tdown,dt1)
real(8):: Qup,Qdown,Cup,Cdown,Tup,Tdown,dt1

Qup=1
Qdown=1
Cup=1
Cdown=1
Tup=1500
Tdown=300
dt1=1
end subroutine initial
subroutine update(Q,C,T,dt1)
real(8):: Q,C,T,dt1
T=T+Q*dt1/C
end subroutine update

