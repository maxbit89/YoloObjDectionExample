import cv2
from darkflow.net.build import TFNet
import matplotlib.pyplot as plt

options = {
 'model': '/data/cfg/yolo.cfg',
 'config': '/data/cfg',
 'load': '/data/yolov2.weights',
 'batch': 2,
 'epoch': 5,
 'train': True,
 'annotation': '/data/annots/',
 'dataset': '/data/images/'
}
tfnet = TFNet(options)

tfnet.train()
