#! /bin/bash

conda install -c conda-forge nodejs -y
conda install -c conda-forge plotly -y
conda install -c conda-forge dash -y
conda install -c conda-forge ipywidgets -y

export NODE_OPTIONS=--max-old-space-size=4096
jupyter labextension install @jupyter-widgets/jupyterlab-manager@3.1 --no-build
jupyter labextension install jupyterlab-plotly --no-build
jupyter labextension install plotlywidget --no-build
jupyter lab build
unset NODE_OPTIONS 
