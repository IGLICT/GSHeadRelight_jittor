#!/bin/bash
device_id=1
network_pkl=/path/to/network.pkl
resolution=512

trunc=0.7
seeds=0,9
opacity_ones=False
lighting_pattern='envmap'
outdir=out
grid=1x1
with_bg=False

CUDA_VISIBLE_DEVICES=${device_id} python gen_videos_gsparams.py --outdir=${outdir}/ --trunc=${trunc} --seeds=${seeds} --grid=${grid} \
    --network=${network_pkl} --image_mode=image \
    --nrr=${resolution} --opacity_ones=${opacity_ones} --lighting_pattern=${lighting_pattern} \
