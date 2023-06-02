program convert

 implicit none

 real :: tempf , tempc

 tempf = 89

 call FtoC(tempf , tempc)
 print * , tempc

end program convert

subroutine FtoC(tempf, tempc)
 
 real , intent(in) :: tempf
 real , intent(out) :: tempc
 tempc = (tempf - 32)*5/9

end subroutine
