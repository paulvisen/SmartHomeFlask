#-*- coding: UTF-8 -*- 

from flask import Blueprint
from flask import request,jsonify,json
from models import *

import traceback
import sys

scenetask=Blueprint("scene_task",__name__)

# 10 设置设备场景任务
@scenetask.route('/setscenetask',methods=['POST'])
def setscenetask():
    try:
        id = request.json['token']
        scenetask = request,json['scenetask']
        scene = Scene(user_id=id,taskcode=scenetask)
        scene.add();
        state = 'successful'
        reason = ''
    except Exception, e:
        print e
        state = 'fail'
        reason = '服务器异常'
    return jsonify({'state':state,'reason':reason})

#11 获取个人场景列表
@scenetask.route('/getscenetask',methods=['POST'])
def getscenetask():
    result = []
    try:
        id =request.json['token']
        scenelist = Scene.query.filter_by(user_id=id).all()
        if scenelist is None:
            state = 'fail'
            reason = '该用户之前未创建场景'
        else:
            for scene in scenelist:
                output = {'scenetask':scene.taskcode}
                result.append(output)
            state = 'successful'
            reason = ''
    except Exception, e:
        print e 
        state = 'fail'
        reason = '服务器异常'
    return jsonify({'state':state,'reason':reason,'scenelist':result})                   

#12 更改个人场景列表并且提交

@scenetask.route('/editscenelist',methods=['POST'])
def editscenelist():
    try:
        id = request.json['token']
        scenelist = request.json['scenelist']
        json_string=json.dumps(scenelist)
        scenedata=json.loads(json_string)
        for scenechange in scenedata:
            temp=Scene(user_id=id,taskcode=scenechange['scenetask'])
            temp.add()
        
        state = 'successful'
        reason = ''     
    except Exception, e:
        print e 
        state = 'fail'
        reason = '服务器异常'    
    return jsonify({'state':state,'reason':reason})                   


