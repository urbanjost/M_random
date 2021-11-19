module M_random
  implicit none
  private

  public :: say_hello
contains
  subroutine say_hello
    print *, "Hello, M_random!"
  end subroutine say_hello
end module M_random
