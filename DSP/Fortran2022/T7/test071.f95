program ex08
      integer,dimension(6)::a=(/1,2,3,4,5,0/)
      integer,dimension(6)::b=(/0,1,1,1,1,0/)
      integer,dimension(6)::c=0
      integer::i,j
      open(1,file='XX.data',status='replace')
      do i=1,6
      do j=6,1,-1
      c(i)=c(i)+a(modulo(6-j,6)+1)*b(modulo(j+i-2,6)+1)
      enddo
      enddo
      write(*,*) c(1),c(2)
      do i=-11,21
      write(1,'(2I3)') i,c(modulo(i,6)+1)
      enddo
      close(1)
      open(1,file='XX1.data',status='replace')
      open(2,file='XX2.data',status='replace')
      do i=-11,21
      write(1,'(2I3)') i,a(modulo(i,6)+1)
      write(2,'(2I3)') i,b(modulo(i,6)+1)
      enddo
      close(1)
      close(2)
      end program ex08
