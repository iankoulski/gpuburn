# gpuburn

Multi-GPU CUDA stress test based on a fork of http://wili.cc/blog/gpu-burn.html

# Fork description

* Updated CUDA version
* Updated base OS
* Added default user account


# Usage

Docker image usage:

```
docker run -it --rm --gpus all iankoulski/gpuburn 60
```

GPU Burn usage:

```
gpu_burn [OPTIONS] [TIME]

    -m X   Use X MB of memory
    -m N%  Use N% of the available GPU memory
    -d     Use doubles
    -tc    Try to use Tensor cores (if available)
    -l     List all GPUs in the system
    -i N   Execute only on GPU N
    -h     Show this help message

Example:
gpu_burn -d 3600
```

For more details, please see: [https://github.com/wilicc/gpu-burn](https://github.com/wilicc/gpu-burn)

