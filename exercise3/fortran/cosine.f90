program outputdata
implicit none

   real, dimension(30) :: y
   integer :: i
   integer, parameter :: points=30

   ! data
   do i = 1,points
      y(i) = cos(i/(float(points) -1) *2.0 * 3.14)
   end do

   ! output data into a file
   open(1, file = 'cosine_f90.txt', status='new')
   do i = 1,points
      write(1,*) y(i)
   end do
   close(1)

end program outputdata
