        program test03!对位相乘向加法
                integer ::x(5),h(3)
                integer ::R_xh(7)=0,R_hx(7)=0,R_xx(9)=0,R_hh(5)=0
                integer xsize,hsize,x0,h0
                !integer,dimension(5) :: x
                x0=1
                h0=1!
                xsize=size(x)!x的容量
                hsize=size(h)!h的容量
                x=(/5,4,3,2,1/)
                h=(/2,4,6/)
                do i=5,1,-1
                do j=1,3!互相关函数
                R_xh(i-j+hsize-h0+1)=R_xh(i-j+hsize-h0+1)+x(i)*h(j)
                end do
                end do
                do i=3,1,-1
                do j=1,5
                R_hx(i-j+xsize-x0+1)=R_hx(i-j+xsize-x0+1)+h(i)*x(j)
                end do
                end do
                do i=5,1,-1
                do j=1,5
                R_xx(i-j+xsize-x0+1)=R_xx(i-j+xsize-x0+1)+x(i)*x(j)
                end do
                end do
                do i=3,1,-1
                do j=1,3
                R_hh(i-j+hsize-h0+1)=R_hh(i-j+hsize-h0+1)+h(i)*h(j)
                end do
                end do
                open(1,FILE="R_xh.dat",status='replace')
                open(2,FILE="x.dat",status='replace')
                open(3,FILE="h.dat",status='replace')
                open(4,FILE="R_xx.dat",status='replace')
                open(5,FILE="R_hh.dat",status='replace')
                open(6,FILE="R_hx.dat",status='replace')
                do i=1,5
                write(2,"(2I4)") i-x0,x(i)
                end do
                do j=1,3
                write(3,"(2I4)") j-h0,h(j)
                end do
                do i=1,7
                write(1,"(2I4)") i-hsize,R_xh(i)
                end do
                do i=1,xsize+xsize-1
                write(4,"(2I4)") i-xsize,R_xx(i)
                end do
                do i=1,hsize+hsize-1
                write(5,"(2I4)") i-hsize,R_hh(i)
                end do
                do i=1,xsize+hsize-1
                write(6,"(2I4)") i-xsize,R_hx(i)
                end do
                close(1)
                close(2)
                close(3)
                close(4)
                close(5)
                end program test03
