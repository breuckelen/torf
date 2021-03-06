XLA_FLAGS=--xla_gpu_cuda_data_dir=/usr/local/cuda python torf.py --config config/config_static.txt \
    --dataset_type mitsuba \
    --scan $1 \
    --expname $1_$2 \
    --num_views 16 \
    --num_frames 16 \
    --train_views $5 \
    --tof_image_width $3 --tof_image_height $4 \
    --tof_scale_factor 0.5 \
    --color_image_width $3 --color_image_height $4 \
    --color_scale_factor 0.5 \
    --i_img 1000 \
    --i_save 20000 \
    --i_video 20000 \
    --view_step 1 --view_start 0 --total_num_views 16