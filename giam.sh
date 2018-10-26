#!/bin/bash
set -e 

mkdir -p giam/
for x in /segmented/TW/*_segmented/ ; do
   echo "$x:"
   sed -i 's/usr.*train_free/segmented/g' $x/wav.scp
   bash 服務來試nnet3.sh exp/chain/tdnn_1a_sp_203-8k-kasu2/graph_test/ exp/chain/tdnn_1a_sp_203-8k-kasu2/lang-3grams/ $x exp/chain/tdnn_1a_sp_203-8k-kasu2/decode_giam
   cp exp/chain/tdnn_1a_sp_203-8k-kasu2/decode_giam/scoring/7.0.0.txt giam/`basename $x`.txt
done

