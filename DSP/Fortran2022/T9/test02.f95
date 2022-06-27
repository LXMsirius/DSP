program ex10
        real,dimension(64)::xn=0
        complex,dimension(64)::Xk=(0,0)
        integer::i,j,f1=90,f2=130,f3=320,fs=600
        real::PI=3.14159,k

        do i=0,63
        xn(i+1)=sin(2*PI*i*f1/fs)+1.3*sin(2*PI*i*f2/fs)+1.6*sin(2*PI*i*f3/fs)
        enddo

        do i=0,63
        do j=0,63
        Xk(i+1)=Xk(i+1)+xn(j+1)*complex(cos(2*PI*i*j/64),-sin(2*PI*i*j/64))
        enddo
        enddo

        open(1,file='Xk4.data',status='replace')
        do i=0,63
        k=sqrt(real(Xk(i+1))**2+aimag(Xk(i+1))**2)
        write(1,'(i3,2f8.3)') i+1,k,k
        enddo
        close(1)
        end program ex10
