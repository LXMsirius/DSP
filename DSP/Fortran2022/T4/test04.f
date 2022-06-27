        PROGRAM EX04
                INTEGER::I,J,F0,FS,A=3
                REAL::PI=3.14,B,W
                !B=0
                write(*,*) 'please enter A and B'
                read(*,*) A,B
                write(*,*) 'please enter F0 and Fs'
                read(*,*) F0,Fs
                B=PI*B
                W=SAMPLE(A,B,F0,FS)
        END PROGRAM EX04
        FUNCTION SAMPLE(A,B,F0,FS) !抽样函数
                REAL::PI=3.14,B,W,J=0.0
                INTEGER::I,A,F0,FS
                CHARACTER(2)::filename
                CHARACTER(3)::fx
                write(*,*) "please enter fx"
                read(*,*) fx
                W=2*PI*F0/FS
                write(*,*) "请输入序列名称:"
                read(*,'(A2)') filename
                OPEN(1,FILE=filename//"n.data",STATUS='REPLACE')
                OPEN(2,FILE=filename//"t.data",STATUS='REPLACE')
                if (fx=='cos')  then
                DO I=0,FS/F0*3
                WRITE(1,'(i2,f9.1)') I,A*cos(W*I+B)
                ENDDO
                DO WHILE(J<3.0/F0)
                WRITE(2,'(F7.5,F9.3)') J,A*cos(2*PI*F0*J+B)
                J=J+0.02/F0
                ENDDO

                else
                DO I=0,FS/F0*3
                WRITE(1,'(i2,f9.1)') I,A*sin(W*I+B)
                ENDDO
                DO WHILE(J<3.0/F0)
                WRITE(2,'(F7.5,F9.3)') J,A*sin(2*PI*F0*J+B)
                J=J+0.02/F0
                ENDDO
                end if
                CLOSE(1)
                CLOSE(2)
                SAMPLE=1
        END FUNCTION SAMPLE
