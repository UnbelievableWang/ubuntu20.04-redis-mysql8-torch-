
cmake  -D CMAKE_BUILD_TYPE=RELEASE -D WITH_CUDA=ON  -D CUDA_GENERATION=Auto -D ENABLE_FAST_MATH=1  -D CUDA_FAST_MATH=1 -D WITH_CUBLAS=1 -D WITH_CUDNN=ON -D WITH_OPENCL=ON -D INSTALL_PYTHON_EXAMPLES=ON   -D BUILD_EXAMPLES=ON -D BUILD_TIFF=ON -DCMAKE_INSTALL_PREFIX=/usr/local/opencv2  OPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules .. 
make -j8
make install 



 sudo apt-get install build-essential
 sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
 sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
 sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev liblapacke-dev
 sudo apt-get install libxvidcore-dev libx264-dev
 sudo apt-get install libatlas-base-dev gfortran 
 sudo apt-get install ffmpeg
 
 
