#https://pjreddie.com/darknet/yolov2/
mkdir data
cd data && wget -N https://pjreddie.com/media/files/yolov2.weights
wget -N https://drive.google.com/drive/folders/1jKKb0e5kocPtBpEeg9UhPLhnxmTsBSTy?usp=sharing
cd ..
cd darkflow && git pull && git checkout master 
cd ..
pwd
docker build --tag yolo2:1.0 -f Dockerfile .
