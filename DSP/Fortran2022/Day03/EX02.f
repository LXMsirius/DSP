        program ex02
                implicit none
                integer :: f,fact=1
                do f=1,10
                fact=f*fact
                write(*,*) f,fact
                end do
                end program ex02
