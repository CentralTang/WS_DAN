#!/usr/bin/env bash

DATASET="Dog"
TRAIN_DIR="./$DATASET/WS_DAN/TRAIN/ws_dan_part_32"
MODEL_PATH='./pre_trained/inception_v3.ckpt'

python train_sample.py --learning_rate=0.0001 \
                            --dataset_name=$DATASET \
                            --dataset_dir="../Data/$DATASET/Data/tfrecords" \
                            --train_dir=$TRAIN_DIR \
                            --checkpoint_path=$MODEL_PATH \
                            --max_number_of_steps=80000 \
                            --weight_decay=1e-5 \
                            --model_name='inception_v3_bap' \
                            --checkpoint_exclude_scopes="InceptionV3/bilinear_attention_pooling" \
                            --batch_size=8 \
                            --train_image_size=448 \
                            --num_clones=1 \
                            --gpus="0"\
                            --feature_maps="Mixed_7c"\
                            --attention_maps="Mixed_7c"\
                            --num_parts=32
