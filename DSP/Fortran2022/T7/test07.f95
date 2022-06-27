program ex07
      integer,dimension(3)::z=(/3,1,3/)
      integer,dimension(4)::a=(/1,1,3,2/)
      integer,dimension(5)::b=(/1,0,2,3,1/)
      integer,dimension(6)::c=(/1,1,3,2,0,0/)
      integer,dimension(7)::d=(/1,1,3,2,0,0,0/)
      integer::i,j

      open(1,file='X.data',status='replace')
      do i=1,4
      write(1,"(2I2)") i-1,a(i)
      enddo
      close(1)

      open(1,file='X1.data',status='replace')
      do i=-10,9
      write(1,"(2i4)") i,b(abs(modulo(i,5))+1)
      enddo
      close(1)      

      open(1,file='X2.data',status='replace')
      c=(/1,0,0,2,3,1/)
      do i=0,5
      write(1,"(2I2)") i,c(abs(modulo(i,6))+1)
      enddo
      close(1)

      open(1,file='X3.data',status='replace')
      do i=1,3
      write(1,"(2I2)") i-1,z(i)
      enddo
      close(1)


      open(1,file='X4.data',status='replace')
      c=(/1,1,3,2,0,0/)
      do i=-12,11
      write(1,"(2I2)") i,c(abs(modulo(i,6))+1)
      enddo
      close(1)


      open(1,file='X5.data',status='replace')
      b=(/3,2,0,1,1/)
      do i=1,5
      write(1,"(2I2)") i-1,b(i)
      enddo
      close(1)



      open(1,file='X6.data',status='replace')
      do i=1,7
      write(1,"(2I2)") i-1,d(i)
      enddo
      close(1)

      
      end program ex07
