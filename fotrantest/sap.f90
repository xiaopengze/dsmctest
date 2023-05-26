PROGRAM sap
integer:: ierror
character(len=20):: kk,ee
OPEN(UNIT=8,FILE='./test.txt',STATUS='OLD',IOSTAT=ierror,ACCESS='append')
ierror=9
WRITE(8,*)ierror
write(8,100)
100 FORMAT('1','laji fortran')

write (8,101)
101 FORMAT('0' 'laji')


CLOSE (UNIT=8)
OPEN(UNIT=8,FILE='test.txt',STATUS='OLD',IOSTAT=ierror)
read(8,*)kk
write(*,*)kk
read(8,*)kk
write(*,*)kk
BACKSPACE(UNIT=8,IOSTAT=ierror)
read(8,*)kk
write(*,*)kk
CLOSE (UNIT=8)
OPEN(UNIT=8,FILE='test.txt',STATUS='OLD',IOSTAT=ierror,ACCESS='append')
BACKSPACE(UNIT=8,IOSTAT=ierror)
BACKSPACE(UNIT=8,IOSTAT=ierror)
read(8,*)kk,ee
write(*,*)kk,ee
CLOSE (UNIT=8)
END PROGRAM sap