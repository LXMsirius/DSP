        program test02!对位相乘向加法
                integer :: x(5),h(4),y(8)=0,a,b
                !integer,dimension(5) :: x
                a=1
                b=3
                x=(/1,2,4,3,6/)
                h=(/2,1,5,7/)
                do i=5,1,-1
                do j=4,1,-1
                        y(i+j-1)=y(i+j-1)+x(i)*h(j)
                end do
                end do
                open(1,FILE="t2.dat",status='replace')
                open(2,FILE="x.dat",status='replace')
                open(3,FILe="h.dat",status='replace')
                do i=1,5
                write(2,"(2I4)") i-a,x(i)
                end do
                do j=1,4
                write(3,"(2I4)") j-b,h(j)
                end do
                do i=1,8
                write(1,"(2I4)") i-a-b+1,y(i)
                end do
                close(1)
                close(2)
                close(3)
                end program test02
