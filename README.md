# GiamTsing
驗證實驗

### 處理wav
```
tiautsakiok-trs $ find . -name '*[LR].wav' -exec cp {} . \;
```

### docker
```
$ docker cp ihc_segmented/ hok8-bu7_pian7sik4_1:/segmented               
$ docker cp giam.sh hok8-bu7_pian7sik4_1:/usr/local/hok8-bu7/kaldi/egs/taiwanese/s5c-8k/giam.sh
$ docker cp giam_hua.sh hok8-bu7_pian7sik4_1:/usr/local/hok8-bu7/kaldi/egs/taiwanese/s5c-8k-huagi/giam.sh

docker exec -ti hok8-bu7_pian7sik4_1 bash
cd /usr/local/hok8-bu7/kaldi/egs/taiwanese/s5c-8k && bash -x giam.sh
cd /usr/local/hok8-bu7/kaldi/egs/taiwanese/s5c-8k-huagi && bash -x giam.sh

$ docker cp hok8-bu7_pian7sik4_1:/usr/local/hok8-bu7/kaldi/egs/taiwanese/s5c-8k/giam giam_tai
$ docker cp hok8-bu7_pian7sik4_1:/usr/local/hok8-bu7/kaldi/egs/taiwanese/s5c-8k-huagi/giam giam_hua
```
