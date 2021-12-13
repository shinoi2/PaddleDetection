MACHINE_TYPE=`uname -m`
echo "MACHINE_TYPE: "${MACHINE_TYPE}

# 以下无需改动
rm -rf build
mkdir -p build
cd build
cmake .. \
    -DWITH_GPU=ON \
    -DWITH_MKL=ON \
    -DWITH_TENSORRT=OFF \
    -DPADDLE_DIR=/paddle_inference \
    -DCUDA_LIB=/usr/local/cuda/lib64 \
    -DCUDNN_LIB=/usr/lib/x86_64-linux-gnu \
    -DPADDLE_LIB_NAME=libpaddle_inference \
    -DWITH_KEYPOINT=OFF \
    -DWITH_MOT=OFF

make
echo "make finished!"
