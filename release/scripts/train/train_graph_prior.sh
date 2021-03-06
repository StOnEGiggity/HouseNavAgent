#!/usr/bin/env bash

python3 HRL/learn_graph.py --task-name roomnav --env-set train --house -200 --seed 0 \
    --render-gpu 0 \
    --segmentation-input none \
    --success-measure see \
    --training-mode mle \
    --graph-eps 0.0001 --n-trials 25 \
    --motion random \
    --terminate-measure mask --max-exp-steps 300 \
    --save-dir ./graph/brm_prior
