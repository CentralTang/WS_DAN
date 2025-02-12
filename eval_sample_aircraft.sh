#!/usr/bin/env bash

DATASET="Aircraft"
TRAIN_DIR="./$DATASET/WS_DAN/TRAIN/ws_dan_part_32_1"
TEST_DIR="./$DATASET/WS_DAN/TEST/ws_dan_part_32_1"

python eval_sample.py --checkpoint_path=$TRAIN_DIR \
                         --dataset_name=$DATASET \
                         --dataset_split_name='test' \
                         --dataset_dir="../Data/$DATASET/Data/tfrecords" \
                         --eval_dir=$TEST_DIR \
                         --model_name='inception_v3_bap' \
                         --batch_size=12 \
                         --eval_image_size=448\
                         --gpus=""\
                         --num_classes=200\
                         --feature_maps="Mixed_6e"\
                         --attention_maps="Mixed_7a_b0"\
                         --num_parts=32