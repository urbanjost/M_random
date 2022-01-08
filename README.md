## NAME
   M_random(3f) - a module of pseudo random procedures
   (LICENSE:)
## SYNOPSIS
```text
   use M_random, only: init_random_seed_by_system_clock
   use M_random, only: init_random_seed_by_dat
   use M_random, only: init_random_seed
   
   use M_random, only: random_string
   use M_random, only: random_hex
   use M_random, only: random_int
   
   use M_random, only: random_kiss64
   use M_random, only: scramble
   
   use M_random, only: mtprng_state, mtprng_init, mtprng_init_by_array, &
   & mtprng_rand64, mtprng_rand
   use M_random, only: mtprng_rand_range, mtprng_rand_real1, &
   & mtprng_rand_real2, mtprng_rand_real3
```
## DESCRIPTION
  The M_random(3fm) module contains routines to support random number
  generation. This includes supplements for the Fortran intrinsic
  random_seed(3f).

## BUILDING THE MODULE USING make(1) ![gmake](docs/images/gnu.gif)
     git clone https://github.com/urbanjost/M_random.git
     cd M_random/src
     # change Makefile if not using one of the listed compilers
     
     # for gfortran
     make clean
     make F90=gfortran gfortran
     
     # for ifort
     make clean
     make F90=ifort ifort

     # for nvfortran
     make clean
     make F90=nvfortran nvfortran

This will compile the Fortran module and basic example
program that exercise the routine.

## BUILD and TEST with FPM ![-](docs/images/fpm_logo.gif)

   Alternatively, download the github repository and build it with
   fpm ( as described at [Fortran Package Manager](https://github.com/fortran-lang/fpm) )

   ```bash
        git clone https://github.com/urbanjost/M_random.git
        cd M_random
        fpm run "*"
        fpm run --example "*"
        fpm test
   ```

   or just list it as a dependency in your fpm.toml project file.

```toml
        [dependencies]
        M_random        = { git = "https://github.com/urbanjost/M_random.git" }
```
## DOCUMENTATION

### USER
![manpages](docs/images/manpages.gif)

   - A single page that uses javascript to combine all the HTML
     descriptions of the man-pages is at 
     [BOOK_M_random](https://urbanjost.github.io/M_random/BOOK_M_random.html).

   - a simple index to the man-pages in HTML form for the
   [routines](https://urbanjost.github.io/M_random/man3.html) 
   and [programs](https://urbanjost.github.io/M_random/man1.html) 

   - There are man-pages in the repository download in the docs/ directory
     that may be installed on ULS (Unix-Like Systems).

   + [manpages.zip](https://urbanjost.github.io/M_random/manpages.zip)
   + [manpages.tgz](https://urbanjost.github.io/M_random/manpages.tgz)

   - [CHANGELOG](docs/CHANGELOG.md) provides a history of significant changes

### DEVELOPER
   - [ford(1) output](https://urbanjost.github.io/M_random/fpm-ford/index.html).
<!--
   - [doxygen(1) output](https://urbanjost.github.io/M_random/doxygen_out/html/index.html).
-->
   - [github action status](docs/STATUS.md) 
---
