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
virtualenv -p python3 oreilly-attention-venv
source oreilly-attention-venv/bin/activate
pip install -r requirements.txt
python setup.py <install | develop>
```

```bash
export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-0.12.1-py3-none-any.whl
sudo pip3 install --upgrade $TF_BINARY_URL
```

#### Start ipython notebook:
```bash
ipython3 notebook
```

#### (Optional) Enable jupyter extensions (for code folding):
```bash
jupyter nbextensions_configurator enable --user
```
    Then before opening the attention.ipynb, go to http://localhost:8888/ > Nbextensions > (check)CodeFolding. Restart the notebook server again.
    
#### (Optional) Notebook Rendering (font, spacing, etc.)
```bash
Go to ../oreilly-attention-venv/lib/python3.6/site-packages/notebook/static/custom and replace custom.css with the custom.css in our attention directory. (Credit: https://raw.githubusercontent.com/titipata/customize_ipython_notebook/master/custom.css)
```

#### Load the data (load data and GloVe embeddings):
```bash
bash fetch_data.sh
```
