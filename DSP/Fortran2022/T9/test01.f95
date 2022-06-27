program ex09
      !complex(kind=4)::a
      real,dimension(11)::x1=0
      real,dimension(101)::x2=0
      complex,dimension(11)::Xa1=(0,0)
      complex,dimension(101)::Xa2=(0,0)
      real::PI=3.14159,k
      integer::i,j

      do i=0,10
      x1(i+1)=cos(0.48*PI*i)+cos(0.52*PI*i)
      x2(i+1)=x1(i+1)
      enddo

      do i=0,10
      do j=0,10
      Xa1(i+1)=Xa1(i+1)+x1(j+1)*complex(cos(2*PI/11*i*j),-sin(2*PI/11*i*j))
      enddo
      enddo

      open(1,file='Xk1.data',status='replace')
      do i=1,11
      k=sqrt(real(Xa1(i))**2+aimag(Xa1(i))**2)
      write(1,'(i3,f8.3,f8.3)') i-1,k,k
      enddo
      close(1)

      open(2,file='Xk2.data',status='replace')
      do i=0,100
      do j=0,100  
      Xa2(i+1)=Xa2(i+1)+x2(j+1)*complex(cos(2*PI/101*i*j),-sin(2*PI/101*i*j))
      enddo
      enddo
      do i=0,100
      k=sqrt(real(Xa2(i+1))**2+aimag(Xa2(i+1))**2)
      write(2,'(i3,f8.3,f8.3)') i,k,k
      enddo
      close(2)

      open(1,file='Xk3.data',status='replace')
      do i=0,100
      x2(i+1)=cos(i*PI*0.48)+cos(i*PI*0.52)
      enddo
      Xa2=0
      do i=0,100
      do j=0,100
      Xa2(i+1)=Xa2(i+1)+x2(j+1)*complex(cos(2*PI/101*i*j),-sin(2*PI/101*i*j))
      enddo
      enddo
      do i=0,100
      k=sqrt(real(Xa2(i+1))**2+aimag(Xa2(i+1))**2)
      write(1,'(i3,f8.3,f8.3)') i,k,k
      enddo
      close(1)



      end program ex09
