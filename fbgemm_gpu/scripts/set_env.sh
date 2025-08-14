# 1) 克隆分支（官方提示的那个分支）

rm -rf triton-ws
git clone -b ws-3.2.x https://github.com/cassiewilliam/triton.git triton-ws
cd triton-ws/python

# 2) 环境要求
# Python 3.10/3.11、CUDA >= 12.2（Hopper建议12.3+）、gcc >= 9、CMake & Ninja
pip install -U cmake ninja wheel setuptools pybind11 lit filelock

# 4) 安装（本地可编辑模式便于更新）
pip install -v -e .