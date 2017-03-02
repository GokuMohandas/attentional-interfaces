##Interpretability via Attentional and Memory-based Interfaces Using TensorFlow
A closer look at the reasoning inside your deep networks.

TLDR: This post will serve as a gentle introduction to attentional and memory-based interfaces in deep neural architectures using Tensorflow. Incorporation of attention mechanisms is very simple and can offer transparency/interpretability to our complex models. We will conclude with extensions and caveats of the interfaces. 

### Set Up:
#### Setting up environment:

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
```

#### Start ipython notebook:
```bash
ipython3 notebook
```
