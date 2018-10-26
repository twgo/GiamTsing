#!/bin/bash
set -e 

mkdir -p giam/
for x in /segmented/TC/*_segmented/ ; do
   echo "$x:"
   sed -i 's/usr.*train_free/segmented/g' $x/wav.scp
   bash decode_nnet3.sh exp/chain/tdnn_1a_sp/graph_test/ exp/chain/tdnn_1a_sp/lang-3grams/ $x exp/chain/tdnn_1a_sp/decode_giam
   cp exp/chain/tdnn_1a_sp/decode_giam/scoring/7.0.0.txt giam/`basename $x`.txt
done

