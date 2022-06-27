program ex05
      integer::A=5,B=-3,C=2,D=1,fs,i
      real::PI=3.1415,fx,j
      open(1,file='Xat.data',status='replace')
      open(2,file='X1n.data',status='replace')
      fs=12
      do i=0,48
      fx=A*cos(2*PI/fs*i)+B*cos(3*PI/fs*i)+C*cos(6*PI/fs*i)+D*cos(8*PI/fs*i)
      write(2,'(i2,f9.4)') i,fx
      enddo
      j=0.0
      do while(j<4.0)
      fx=A*cos(2*PI*j)+B*cos(3*PI*j)+C*cos(6*PI*j)+D*cos(8*PI*j)
      write(1,'(f5.2,f9.4)') j,fx
      j=j+0.01
      end do
      close(1)
      close(2)
      open(1,file='X2n.data',status='replace')
      fs=20
      do i=0,80
      fx=A*cos(2*PI/fs*i)+B*cos(3*PI/fs*i)+C*cos(6*PI/fs*i)+D*cos(8*PI/fs*i)
      write(1,'(i2,f9.4)') i,fx
      enddo
      close(1)
end program ex05
