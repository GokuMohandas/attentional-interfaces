# Clean up
clean:
	rm *.pyc; \
	rm notes/*.pyc; \
	rm -rf notes/__pycache__

# Instructions
help:
	echo "make venv"; \
	echo "source oreilly-attention-venv/bin/activate"; \
	echo "make load-data"; \
	echo "ipython3 notebook attention.ipynb"; \

# Docker
docker:
	# -- not used bc ipynb

# Virtual environment
venv:

	# Initialize venv and activate it
	virtualenv -p python3 oreilly-attention-venv; \

	# Load PyPI packages
	source oreilly-attention-venv/bin/activate; \
	pip install -r requirements.txt;

	# Load TensorFlow v1.0
	source oreilly-attention-venv/bin/activate; \
	sudo pip3 install --upgrade tensorflow;

# Load data
load-data:

	# Load data and GloVe embeddings
	bash fetch_data.sh

# Python files
execute:
	# -- not used bc ipynb