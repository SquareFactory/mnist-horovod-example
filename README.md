# MNIST training model for csquare

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
