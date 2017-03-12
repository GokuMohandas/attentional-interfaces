##Interpretability via Attentional and Memory-based Interfaces Using TensorFlow
A closer look at the reasoning inside your deep networks.

TLDR: This post will serve as a gentle introduction to attentional and memory-based interfaces in deep neural architectures using Tensorflow. Incorporation of attention mechanisms is very simple and can offer transparency/interpretability to our complex models. We will conclude with extensions and caveats of the interfaces.

Update: Please use TensorFlow v1.0.0, future versions may cause things to break.

### Set Up:
Note: You can also set up with the Dockerfile in the repo. For GPU versions, etc. check out tensorflow docker repo @ https://github.com/tensorflow/tensorflow/tree/master/tensorflow/tools/docker

#### Setting up environment using Docker containers:
```bash
docker build -t USERNAME/CONTAINER_NAME:cpu -f Dockerfile.cpu .
docker run -it -p 8888:8888 -p 6006:6006 REPOSITORY:TAG bash
ipython3 notebook
```

#### Setting up environment on local machine:

```bash
Required:
    python 3.3+
    pip 9.0.1 (sudo easy_install pip)
    virtualenv (pip install virtualenv)
Optional: CUDA enabled GPU (explicity define cpu components (embedding, etc.)
```

```bash
cd attention
make help
```
The above should layout the following commands to execute (copy and paste these one by one):
```bash
make venv
source oreilly-attention-venv/bin/activate
make load-data
ipython3 notebook attention
```

#### Start ipython notebook:
```bash
ipython3 notebook
```
