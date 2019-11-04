
# get ABY with the examples of our semester project
git clone --recursive https://github.com/llorencroma/ABY.git -b eurecom
cd ABY

# build ABY
mkdir build && cd build
cmake -DABY_BUILD_EXE=On ..
make 

