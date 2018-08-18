TF_INC=$(python -c 'import tensorflow as tf; print(tf.sysconfig.get_include())')
TF_LIB=$(python -c 'import tensorflow as tf; print(tf.sysconfig.get_lib())')

g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /public/qianyue/anaconda2/envs/PUNet/lib/python2.7/site-packages/tensorflow/include  -I /usr/local/cuda-9.0/include -lcudart -L /usr/local/cuda-9.0/lib64/ -O2 -I$TF_INC/external/nsync/public -L$TF_LIB -ltensorflow_framework 
