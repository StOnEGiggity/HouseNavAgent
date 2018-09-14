#!/bin/bash

all_targets="office dining_room"
size=15000

for target in $all_targets
do
CUDA_VISIBLE_DEVICES=1 python3 data_gen.py --seed 10 --env-set train \
    --n-house 200 --n-partition 10 --n-proc 10 \
    --sample-size $size --t-max 25 \
    --include-object-target --fixed-target $target \
    --hardness 0.6 --max-birthplace-steps 15 --min-birthplace-grids 1 \
    --segmentation-input color --depth-input --resolution normal \
    --success-measure see-stop \
    --multi-target \
    --save-dir ./_sup_data_/$target --log-rate 500 \
    --max-expansion 50000 \
    --sanity-check
    # --render-gpu 0,1
    # --include-object-target
    # --include-mask-feature
done
