   XLA_FLAGS=--xla_gpu_cuda_data_dir=/usr/local/cuda  python tof_nerf.py --config config/config_fast.txt \
    --dataset_type mitsuba \
    --scan dino \
    --datadir $2 \
    --expname synthetic_dino_$1_dynamic_pose_opt \
    --depth_range 16.0 --scene_scale 1.0 --falloff_range 8.0 \
    --min_depth_fac 0.05 --max_depth_fac 0.55 \
    --num_views $1 \
    --num_frames $1 \
    --tof_image_width 512 --tof_image_height 512 \
    --tof_scale_factor 0.5 \
    --color_image_width 512 --color_image_height 512 \
    --color_scale_factor 0.5 \
    --lrate 1e-3 --lrate_decay 500  \
    --lrate_calib 1e-3 --lrate_decay_calib 250 \
    --i_img 5000 \
    --i_save 50000 \
    --i_video 50001 \
    --train_both \
    --view_step 1 --view_start 0 --total_num_views 121 \
    --val_start 61 --val_end 122 \
    --optimize_poses --pose_reg_weight 0.0 --use_relative_poses --optimize_relative_pose --colocated_pose \
    --identity_pose_initialization \
    --flip_pose \
    --static_scene_iters 5000 --calibration_pretraining \
    --model_reset_iters 5000 --reset_static_model \
    --dynamic --empty_weight 0.0 --empty_weight_decay 0.1 --empty_weight_decay_steps 500 \
    --latent_code_size 256 \
    --tof_weight 8.0 --tof_weight_decay 0.5 --tof_weight_decay_steps 125 \
    --radiance_weight 2.0 --no_radiance_iters 0 \
    --extrinsics_file data/render_poses/spiral_dino.npy \
    --extrinsics_scale 1.1 \
    #--double_transmittance \

