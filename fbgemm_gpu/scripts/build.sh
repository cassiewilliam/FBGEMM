export CUDA_ARCH_LIST="9.0+PTX"   # Hopper，按需改
export CUDACXX=/usr/local/cuda/bin/nvcc
export CUDA_BIN_PATH=/usr/local/cuda
export CUDNN_INCLUDE_DIR=/usr/include
export CUDNN_LIBRARY=/usr/lib/x86_64-linux-gnu
export NVML_LIB_PATH=/usr/lib/x86_64-linux-gnu/libnvidia-ml.so.1
export NCCL_LIB_PATH=/usr/lib/x86_64-linux-gnu/libnccl.so.2

export TORCH_CUDA_ARCH_LIST='9.0+PTX'
export MAX_JOBS=8
export NVCC_THREADS=8

python setup.py --build-target genai \
                --build-variant cuda \
                --nvml_lib_path=${NVML_LIB_PATH} \
                --nccl_lib_path=${NCCL_LIB_PATH} \
                -DTORCH_CUDA_ARCH_LIST="${CUDA_ARCH_LIST}" \
                build_ext --inplace