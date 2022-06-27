program ex08
        integer,dimension(5)::a=(/1,0,2,1,3/)
        integer,dimension(9)::b=0
        integer,dimension(10)::c=0
        integer::i=1,j=1
        do i=1,5
        do j=1,5
        b(i+j-1)=b(i+j-1)+a(i)*a(j)
        enddo
        enddo

        open(1,file='X.data',status='replace')
        do i=0,4
        write(1,'(3I3)') i,a(i+1),a(i+1)
        enddo
        close(1)

        a=0
        do i=0,8
        a(modulo(i,5)+1)=a(modulo(i,5)+1)+b(i+1)
        enddo

        open(1,file='XX.data',status='replace')
        do i=1,9
        write(1,'(3I3)') i-1,b(i),b(i)
        enddo
        close(1)


        open(1,file='XX5.data',status='replace')
        do i=1,5
        write(1,'(3I3)') i-1,a(i),a(i)
        enddo
        close(1)

        do i=0,8
        c(modulo(i,10)+1)=c(modulo(i,10)+1)+b(i+1)
        enddo

        open(1,file='XX10.data',status='replace')
        do i=1,10
        write(1,'(3I3)') i-1,c(i),c(i)
        enddo
        close(1)
        end program ex08
