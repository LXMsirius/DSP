        PROGRAM EX041
                INTEGER::I,J,F0=50,FS=720,A=1
                REAL::PI=3.14,B=0,W
                W=SAMPLE(A,B,F0,FS)
        END PROGRAM EX041
        FUNCTION SAMPLE(A,B,F0,FS) !抽样函数
                REAL::PI=3.1415,B,W,J=0.0,fx
                INTEGER::I,A,F0,F1=80,F2=180,FS
                OPEN(1,FILE="x4n.data",STATUS='REPLACE')
                OPEN(2,FILE="x4t.data",STATUS='REPLACE')
                DO I=0,180
                J=cos(2*PI*F0/FS*I)+cos(2*PI*F1/FS*I)+cos(2*PI*F2/FS*I)
                WRITE(1,'(i3,f9.1)') I,J
                ENDDO
                J=0
                DO WHILE(J<20.0/F0)
                fx=COS(2*PI*F0*J)+COS(2*PI*F1*J)+COS(2*PI*F2*J)
                WRITE(2,'(F7.5,F9.3)') J,fx
                J=J+0.02/F0
                ENDDO
                CLOSE(1)
                CLOSE(2)
                OPEN(1,FILE='x3n.data',STATUS='REPLACE')
                OPEN(2,FILE='x3t.data',STATUS='REPLACE')
                DO I=0,16
                WRITE(1,'(I2,1X,F9.3)') I,COS(100*Pi/400*I)
                ENDDO
                J=0.0
                DO WHILE(J<PI/10)
                WRITE(2,'(F5.3,1X,F9.3)') J,COS(100*J)
                J=J+0.001
                ENDDO
                SAMPLE=1
        END FUNCTION SAMPLE
