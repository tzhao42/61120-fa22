# Uncomment if using make
# make -C interpreter; exit

# CMake build process
: ${CMAKE_DIR:=cmake-build-grading}

cmake -D CMAKE_BUILD_TYPE=Release -S . -B $CMAKE_DIR
cmake --build $CMAKE_DIR

# create symlinks, so that executables are accessible in the source tree
rm interpreter/mitscript-parser interpreter/mitscript-parse-tree interpreter/mitscript
BUILD_DIR=$(realpath $CMAKE_DIR)
ln -s $BUILD_DIR/interpreter/mitscript-parser interpreter/mitscript-parser
ln -s $BUILD_DIR/interpreter/mitscript-parse-tree interpreter/mitscript-parse-tree
ln -s $BUILD_DIR/interpreter/mitscript interpreter/mitscript