# [SIGGRAPH 2025] GSHeadRelight: Fast Relightability for 3D Gaussian Head Synthesis 

<a href="http://www.geometrylearning.com/GSHeadRelight"><img src="https://img.shields.io/badge/Project_Page-green" alt="Project Page"></a>
<a href="https://dl.acm.org/doi/10.1145/3721238.3730614"><img src="https://img.shields.io/badge/Paper-red" alt="Paper"></a>
<a href="http://www.geometrylearning.com/JittorGL"><img src="https://img.shields.io/badge/Jittor-blue" alt="Jittor"></a>

Official jittor implementation for "GSHeadRelight: Fast Relightability for 3D Gaussian Head Synthesis".

For pytorch implementation please see (https://github.com/IGLICT/GSHeadRelight).

![teaser](asset/images/teaser.png)



## Environment Set-up

First, clone this repository to your local machine, and install the dependencies (jittor and other basic python package). 

```bash
conda create -n gsheadrelight_jittor python=3.10
conda activate gsheadrelight_jittor
python3.10 -m pip install jittor
pip install -r requirements.txt
```

Then, Compile the submodules based on C++ and Cuda. 

```bash
cd diff_gaussian_rasterization
cmake .
make -j
cd ../jittorutils
cmake .
make -j
```


## Inference


```bash
sh gen_videos.sh
```

Modify **network_pkl, seeds** in **gen_videos.sh**,and we provide the checkpoint here (https://drive.google.com/file/d/1u6-Ll5C__7g2sXPDNQPmuHNF42Dwawj-).




## Acknowledgements

Thanks to these great repositories: [Gaussian-splatting-Jittor](https://github.com/otakuxiang/gaussian-splatting-jittor.git),[GSGAN](https://github.com/hse1032/GSGAN.git) and many other inspiring works in the community.

