#rm -r build
#rm -r run

mkdir build
cd build

#cmake -DCMAKE_Fortran_COMPILER:FILEPATH=/opt/intel/oneapi/compiler/2021.3.0/linux/bin/intel64/ifort -DCMAKE_C_COMPILER:FILEPATH=/opt/intel/oneapi/compiler/2021.3.0/linux/bin/intel64/icc -DCMAKE_CXX_COMPILER:FILEPATH=/opt/intel/oneapi/compiler/2021.3.0/linux/bin/intel64/icpc ..
#cmake
cd Evolution
make -j8
