#!./scripts/train_cyclegan.sh
# fog
python train.py --dataroot ./datasets/ACDC/fog --name fog_cyclegan --model cycle_gan --n_epochs 50 --n_epochs_decay 50 --load_size 960 --crop_size 512

# snow
python train.py --dataroot ./datasets/ACDC/snow --name snow_cyclegan --model cycle_gan --n_epochs 50 --n_epochs_decay 50 --load_size 960 --crop_size 512

# rain
python train.py --dataroot ./datasets/ACDC/rain --name rain_cyclegan --model cycle_gan --n_epochs 50 --n_epochs_decay 50 --load_size 960 --crop_size 512

# 预测

#!./scripts/test_cyclegan.sh
# fog
python test.py --dataroot /home/dch/alldatasets/Cityscapes/leftImg8bit/train --name fog_cyclegan --model test --checkpoints_dir /home/dch/CycleGAN-for-AEDA/checkpoints/ --results_dir CycleGANCityscapes_fog --dataset_mode single --model_suffix _A --no_dropout --load_size 1728 972 --preprocess resize

# rain
python test.py --dataroot /home/dch/alldatasets/Cityscapes/leftImg8bit/train --name rain_cyclegan --model test --checkpoints_dir /home/dch/CycleGAN-for-AEDA/checkpoints/ --results_dir CycleGANCityscapes_rain --dataset_mode single --model_suffix _A --no_dropout --load_size 1728 972 --preprocess resize

# snow
python test.py --dataroot /home/dch/alldatasets/Cityscapes/leftImg8bit/train --name snow_cyclegan --model test --checkpoints_dir /home/dch/CycleGAN-for-AEDA/checkpoints/ --results_dir CycleGANCityscapes_snow --dataset_mode single --model_suffix _A --no_dropout --load_size 1728 972 --preprocess resize

# 数据格式
--ACDC
----fog
------trainA
------trainB
----rain
------trainA
------trainB
----snow
------trainA
------trainB