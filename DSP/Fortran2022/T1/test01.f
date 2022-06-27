        program test01
                implicit none
                real,dimension(400) :: x1,x2,y1,y2,y3
                integer :: i
                open(1,FILE="1054.dat",status='old')
                open(2,FILE="1055.dat",status='old')
                do i=1,400
                read(1,*) x1(i),y1(i)
                read(2,*) x2(i),y2(i)
                y3(i)=y1(i)+y2(i)
                end do
                close(1)
                close(2)
                open(3,FILE="1056.dat",status='replace')
                do i=1,400
                write(3,"(2F11.3)") x1(i),y3(i)
                end do
                close(3)
                open(1,FILE="1054.dat_Dif",status="replace")
                open(2,FILE="1055.dat_Dif",status="replace")
                do i=1,399
                write(1,"(2F11.3)") x1(i),y1(i+1)-y1(i)
                end do
                do i=2,400
                write(2,"(2F11.3)") x2(i),y2(i)-y2(i-1)
                end do
                close(1)
                close(2)
        end program test01
