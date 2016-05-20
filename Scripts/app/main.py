#-*- coding: UTF-8 -*- 

""""from falsk ,jsonfiy,json"""




from flask import Flask
from flask import session
from flask import redirect
from models import *
from hashmd5 import *
from checkpage import check_page
from devicelist import device_list
from historydata import history_data
from scenetask import scenetask

import os,stat


app=create_app()

##注册蓝本路由

app.register_blueprint(check_page)    #注册与登录
app.register_blueprint(device_list)   #获取设备列表
app.register_blueprint(history_data)  #获取设备历史信息
app.register_blueprint(scenetask)  #实时任务列表操作

   
    
if __name__=='__main__':
    app.run()