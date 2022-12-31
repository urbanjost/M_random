      program demo_scramble
      use M_random, only : scramble, init_random_seed_by_system_clock
      implicit none
      character(len=*),parameter :: list(*)=[character(len=5) :: &
      & 'one','two','three','four','five',&
      & 'six','seven','eight','nine','ten']
      integer                    :: i
      integer                    :: n=size(list)
      character(len=len(list))   :: newlist(size(list))
      call init_random_seed_by_system_clock()
      do i = 1,8
         ! use random values as indices to randomize array
         newlist=list(scramble(n))
         write(*,'(*(a,1x))') newlist
      enddo
      end program demo_scramble
