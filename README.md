## array2d2, a column-major array library for the Mercury language

This library has been straightforwardly adapted from the language library
array2d.m.  
The code in array2d2.m is subject to the same licensing conditions as those of
the original Mercury source code (see COPYING.LIB and COPYING).  
  
### Motivation
  
This library proposes to store 2d data in column-major order, while the
standard library uses row-major order.  
This will facilitate interfacing with statistical software (like R and Python
libraries), which often store 2d data in column-major data tables (like R's
data frames).  
The expected benefit is that, if used properly in conjunction with appropriate
representations of empirical issues, transposing operations should be avoided,
with the related processing overhead.  
  
### Building

Just run `make` (or `make clean` to clean up the build).  
A small test file will be compiled together with the library.  
To just build the library, run `mmakefile depend && mmakefile`  





