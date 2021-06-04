# MNIST training model for csquare

[![GitHub license](https://img.shields.io/github/license/csquare-ai/mnist-horovod-example)](https://github.com/csquare-ai/mnist-horovod-example/blob/main/LICENSE)

<p style="text-align: center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/2/27/MnistExamples.png" alt="MNIST dataset sample">
</p>

This example is meant to be deployed on csquare.

## Maintainers

- Sicong Zhuang <sicong@csquare.ai>, Data Scientist & Deep Learning Engineer at csquare
- Mathieu Bour <mathieu@csquare.ai>, Lead Platform Engineer at csquare

## Training

The `train.py` is the training itself. Refer to its content to see the possible options and flags.

```
Usage: python train.py [--options (see table below)]
```

| Option                        | Description                                             | Default value                |
| ----------------------------- | ------------------------------------------------------- | ---------------------------- |
| `--epochs`                    | Number of epochs to train                               | `10`                         |
| `--batch-size`                | Input batch size for training                           | `64`                         |
| `--test-batch-size`           | Input batch size for testing                            | `1000`                       |
| `--train-dir`                 | Training dataset directory                              | `/datasets/mnist`            |
| `--val-dir`                   | Validation dataset directory                            | `/datasets/mnist`            |
| `--checkpoint-format`         | Checkpoint filename format                              | `checkpoint-{epoch}.pth.tar` |
| `--checkpoints-dir`           | Checkpoint directory location                           | `.`                          |
| `--lr`                        | Learning rate                                           | `0.01`                       |
| `--momentum`                  | SGD momentum                                            | `0.5`                        |
| `--gradient-predivide-factor` | Apply gradient predivide factor in optimizer            | `1.0`                        |
| `--no-cuda`                   | Disables CUDA training                                  | `False`                      |
| `--seed`                      | Random seed                                             | `42`                         |
| `--log-interval`              | How many batches to wait before logging training status | `10`                         |
| `--fp16-allreduce`            | Use fp16 compression during allreduce                   | `False`                      |
| `--use-adasum`                | Use adasum algorithm to do reduction                    | `False`                      |

## Multi-node training

This model support multi-node training via Horovod ([https://github.com/horovod/horovod](horovod/horovod)). See Horovod
documentation for more details.

## Deploy this model on csquare

### Configure the model

We are writing this section, it will be vailable very soon!

### Docker image

This model is optimized to use [Horovod's prebuilt Docker image for Pytorch](https://hub.docker.com/r/horovod/horovod/tags?page=1&ordering=last_updated).
In particular, you can use:

- With GPUs: [horovod/horovod:0.20.0-tf2.3.0-torch1.6.0-mxnet1.6.0.post0-py3.7-cuda10.1](https://hub.docker.com/layers/horovod/horovod/0.20.0-tf2.3.0-torch1.6.0-mxnet1.6.0.post0-py3.7-cuda10.1/images/sha256-e7459ce7e799b09cb4da463d6e997e8a50212972d7bfac2c218f9080a2c8e24b?context=explore)
- Without GPUs (CPU-only): [horovod/horovod:0.20.0-tf2.3.0-torch1.6.0-mxnet1.5.0-py3.7-cpu](https://hub.docker.com/layers/horovod/horovod/0.20.0-tf2.3.0-torch1.6.0-mxnet1.5.0-py3.7-cpu/images/sha256-c60a0caeebb23c50ad6b73eaa19928feba114bfc2301ec30bc2a8c6b294ea41a?context=explore)
