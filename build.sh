cd ./data
#Download Pre trained wights from: https://pjreddie.com/darknet/yolov2/
wget -N https://pjreddie.com/media/files/yolov2.weights
cd ../darkflow
git pull
git checkout master
cd ..
docker build --tag yolo2:1.0 .
