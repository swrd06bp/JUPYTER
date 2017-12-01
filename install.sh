#!/bin/bash

# assign jupyter_dir
JUPYTER_DIR=$HOME/.jupyter
# create dir
mkdir $JUPYTER_DIR
# get certification
yes '' | openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout $JUPYTER_DIR/mykey.key -out $JUPYTER_DIR/mycert.pem
# copy the file to the dir
cp jupyter_notebook_config.py $JUPYTER_DIR/jupyter_notebook_config.py
# change jupyter_dir
sed -i -e "s/JUPYTER_DIR/$JUPYTER_DIR/g" $JUPYTER_DIR/jupyter_notebook_config.py
sed -i -e "s/JUPYTER_DIR/$JUPYTER_DIR/g" run_jupyter.py


