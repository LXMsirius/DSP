        program ex06
                integer::i
                real::Xn,t,j,Xw
                real::PI=3.1415
                !N=5,x(n)的离散傅里叶级数
                open(1,file="Xk.data",status='replace')
                do i=-5,5
                if (mod(i,5)==0) then
                        t=5.0
                else
                        t=sin(PI*i)/sin(PI*i/5)
                endif
                Xn=sqrt(cos(4*PI*i/5)**2+sin(4*PI*i/5)**2)
                !Xn*sin(PI*i)/sin(Pi*i/5)
                write(1,'(i2,i3)') i,nint(Xn*t)
                enddo
                close(1)
                !x(n)的傅里叶变换
                open(1,file='Xw.data',status='replace')
                do i=-44,44
                if(mod(i,40)/=0) then
                j=i*PI/20.0
                Xw=sqrt(cos(2*j*PI)**2+sin(2*j*PI)**2)
                write(1,'(f6.3,f8.4)') j,Xw*sin(5*j/2)/sin(j/2)
                else
                        write(1,'(f6.3,f8.4)') i*PI/20.0,5.00
                endif
                enddo
                close(1)
                !N=10,x(n)的离散傅里叶级数
                open(1,file="Xk10.data",status='replace')
                do i=-10,10
                if (mod(i,10)==0) then
                        t=5.0
                else
                        t=sin(PI*i/2)/sin(PI*i/10)
                endif
                Xn=sqrt(cos(2*PI*i/5)**2+sin(2*PI*i/5)**2)
                !Xn*sin(PI*i)/sin(Pi*i/5)
                write(1,'(i3,f6.2)') i,abs(Xn*t)
                enddo
                close(1)
                end program ex06

