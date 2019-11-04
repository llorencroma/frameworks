
# get ABY with the examples of our semester project
git clone -b eurecom --recursive https://github.com/llorencroma/ABY.git
cd ABY
git checkout -b eurecom 

# copy our working examples 
for EX in mult3 crosstabs innerprod
do
  cp -r ~/source/$EX src/examples/
  echo 'add_subdirectory('$EX')' >> src/examples/CMakeLists.txt
done

cp ~/source/geninput.py src/examples/

# build ABY
mkdir build && cd build
cmake -DABY_BUILD_EXE=On ..
make 

