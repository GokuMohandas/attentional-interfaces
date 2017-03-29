#!/usr/bin/env bash

DATA_DIR=attention/data
mkdir $DATA_DIR

# Download reviews
REVIEWS_DIR=$DATA_DIR/reviews
mkdir $REVIEWS_DIR
url=http://ai.stanford.edu/~amaas/data/sentiment/aclImdb_v1.tar.gz
fname=`basename $url`

# Move reviews data
curl -SLO $url
tar zxvf $fname
mv aclImdb/* $REVIEWS_DIR/
rm -r aclImdb

# Remove the tar.gz
rm aclImdb_v1.tar.gz

# Download GloVe
GLOVE_DIR=$DATA_DIR/glove
mkdir $GLOVE_DIR
wget http://nlp.stanford.edu/data/glove.6B.zip -O $GLOVE_DIR/glove.6B.zip
unzip $GLOVE_DIR/glove.6B.zip -d $GLOVE_DIR

# Load preprocessed data/ trained model
mv processed_reviews.zip $DATA_DIR/processed_reviews.zip
unzip $DATA_DIR/processed_reviews.zip -d $DATA_DIR
rm $DATA_DIR/processed_reviews.zip
rm -rf $DATA_DIR/__MACOSX


