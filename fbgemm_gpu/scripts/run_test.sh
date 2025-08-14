CUDA_VISIBLE_DEVICES=4,5,6,7 \
python experimental/gen_ai/test/moe/layers_test.py \
  --mp-size 2 --ep-size 2 --num-experts 16