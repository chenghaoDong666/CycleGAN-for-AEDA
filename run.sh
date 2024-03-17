#!./scripts/train_cyclegan.sh
# fog
python train.py --dataroot ./datasets/ACDC/fog --name fog_cyclegan --model cycle_gan --n_epochs 50 --n_epochs_decay 50 --load_size 960 --crop_size 512

# snow
python train.py --dataroot ./datasets/ACDC/snow --name snow_cyclegan --model cycle_gan --n_epochs 50 --n_epochs_decay 50 --load_size 960 --crop_size 512

# rain
python train.py --dataroot ./datasets/ACDC/rain --name rain_cyclegan --model cycle_gan --n_epochs 50 --n_epochs_decay 50 --load_size 960 --crop_size 512


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