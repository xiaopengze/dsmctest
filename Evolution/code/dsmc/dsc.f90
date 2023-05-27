Module Couple
Implicit none
real(8):: Cup, Cdown, dt1 ,dt2, Qup ,Qdown
real(8):: Efup,Efdown,EEup,EEdown,Tup,Tdown
integer:: ierror
contains
subroutine Couple_main()
!real(8):: Cup, Cdown, dt1 ,dt2, Qup ,Qdown
!real(8):: Efup,Efdown,EEup,EEdown,Tup,Tdown
integer:: ierror
character(len=20):: kk,ee
OPEN(UNIT=128,FILE='../input/test.txt',STATUS='OLD',IOSTAT=ierror,ACCESS='append')
!计算一个总能量，省的在这里费事

call initial(Qup,Qdown,Cup,Cdown,Tup,Tdown,dt1)
write(*,*)Tup,Tdown
call update(Qup,Cup,Tup,dt1)
call update(Qdown,Cdown,Tdown,dt1)
write(*,*)Tup,Tdown
write(128,*)Tup,Tdown
end subroutine Couple_main

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
subroutine  myupdate(PowerFlux1,PowerFlux2,SeePowerFlux1,SeePowerFlux2)
real(8)::PowerFlux1,PowerFlux2,SeePowerFlux1,SeePowerFlux2
Tup=Tup+ (PowerFlux1+SeePowerFlux1)/Cup
Tdown=Tdown+(PowerFlux2+SeePowerFlux2)/Cdown
OPEN(UNIT=128,FILE='../input/test.txt',STATUS='OLD',IOSTAT=ierror,ACCESS='append')
write(128,*)Tup,Tdown
write(*,*)PowerFlux1,PowerFlux2,SeePowerFlux1,SeePowerFlux2
end subroutine myupdate
subroutine myinitial()
Qup=1
Qdown=1
Cup=1
Cdown=1
Tup=1500
Tdown=300
dt1=1
end subroutine myinitial
end Module Couple
