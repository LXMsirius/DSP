program ex09
      complex(kind=4)::a
      integer,dimension(6)::x=(/1,2,4,3,0,5/)
      complex,dimension(6)::Xa=(0,0)
      real::PI=3.14159,k
      integer::i,j
      do i=0,5
      do j=0,5
      Xa(i+1)=Xa(i+1)+x(j+1)*complex(cos(2*PI/6*i*j),-sin(2*PI/6*i*j))
      enddo
      enddo
      a=complex(10,1*10)
      write(*,'(f8.3,f8.3)') real(a),aimag(a)
      open(1,file='X2.data',status='replace')
      do i=1,6
      k=sqrt(real(Xa(i))**2+aimag(Xa(i))**2)
      write(1,'(i3,f8.3,f8.3)') i-1,k,k
      enddo
      close(1)
      open(1,file='X22.data',status='replace')
      do i=1,6
      write(1,'(3i3)') i-1,x(i),x(i)
      enddo
      close(1)
      end program ex09
