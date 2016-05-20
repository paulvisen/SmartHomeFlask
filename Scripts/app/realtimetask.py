#-*- coding: UTF-8 -*- 

from flask import Blueprint
from flask import request,jsonify,json 
from models import *

import traceback
import sys

real_time_task=Blueprint("real_time_task",__name__)


# 11. 设置实时任务  

@real_time_task.route('/setrealtimetask',methods=['POST'])
def setrealtimetask():
    try:
        user_id=request.json['token']
        device_id = request.json['device_id']
        scenetask = request.json['scenetask']
        realtimetask = RealTimeTask(user_id=user_id,device_id=device_id,taskcode=scenetask)
        realtimetask.add()
        state = 'sucessful'
        reason = ''
    except Exception, e:
        print e 
        state = 'fail'
        reason = '服务器异常'
    return jsonify({'state':state,'reason':reason})           




@real_time_task.route('/realtimetask/add',methods=["POST"])
def add():
    
    try:
        id=request.values.get('id','default')
        taskcode=request.values.get('taskcode','default')
        user_id=request.values.get('user_id','default')

        trt=RealTimeTask(id=id,taskcode=taskcode,user_id=user_id)
        trt.add()
        state = 'sucessful'
        reason = ''
    except Exception, e:
        print e
        state = 'fail'
        reason = '服务器异常'
    return jsonify({'state':state,'reason':reason})

@real_time_task.route('/realtimetask/delete',methods=["POST"])
def delete():
    try:
        id=request.values.get('id','default')
        taskcode=request.values.get('taskcode','default')
        user_id=request.values.get('user_id','default')

        tempTask=RealTimeTask(id=id,taskcode=taskcode,user_id=user_id)
        try:
            tempTask.delete()
            state = 'successful'
            reason = ''
        except Exception, e:
            print e
            state = 'fail'
            reason = '数据库异常' 
    except Exception, e:
        print e
        state = 'fail'
        reason = '服务器异常'
    return jsonify({'state':state,'reason':reason})

