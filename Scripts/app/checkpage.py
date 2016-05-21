#-*- coding: UTF-8 -*- 
#用户功能模块 可以实现用户注册、登录、修改密码等功能 (已经测试完毕)
from flask import Blueprint
from flask import request,jsonify,json 
from models import *


import traceback

import sys
reload(sys)
sys.setdefaultencoding('utf-8')

check_page=Blueprint('check_page',__name__)

# 1. 用户注册
@check_page.route('/register',methods=["POST"])
def register_user():
    try:
        token=''
        username=request.json['username']
        password = request.json['password']
        u=User.query.filter_by(username= str(username)).first()

        if u is None:

            u=User(username=username,password=password)
            u.add()
            state='successful'
            tmp = getTokenInformation(username)
            token = tmp.id
            reason=''
        else:
            state='fail'
            reason='用户名重复'
            token='-1'
 
    except Exception, e:
        print e
        state = 'fail'
        reason = '服务器异常'
        token = '-1'
    return jsonify({'state':state,'reason':reason,'token':token})

# 2. 用户登录
@check_page.route('/login',methods=['POST'])
def login():
    try:
        token = ''
        username=request.json['username']
        password=request.json['password']
        u=User(username=username,password=password)
        
        if u.isExisted():
            state = 'successful'
            reason = ''
            tmp= getTokenInformation(username)
            token = tmp.id
            
        else:
            state = 'fail'
            reason='用户名密码错误'
            token = '-1'
    except Exception, e:
        print 'login error!'
        print e
        state = 'fail'
        reason = '服务器异常'
        token = '-1'
    response = jsonify({'state':state,'resaon':reason,'token':token})
    return response    
             
             
             
 
 # 3. 用户个人信息提交
@check_page.route('/editprofile',methods=['POST'])
def editprofile():
    try:
        token = request.json['token']
        name = request.json['name']
        qq = request.json['qq']
        phone = request.json['phone']
        wechat = request.json['wechat']
        usersinfo=UsersInfo.query.filter_by(token=token).first()
        if usersinfo is None:
            info = UsersInfo(name=name,phone=phone,qq=qq,wechat=wechat,token=token)
            info.add()
            state = 'successfual'
            reason = ''

        else:
            usersinfo.name = name
            usersinfo.qq = qq
            usersinfo.phone = phone
            usersinfo.wechat = wechat
            usersinfo.token = token
            try:
                db.session.add(usersinfo)
                db.session.commit()
                state = 'successful'
                reason = ''
            except Exception, e:
                print e
                db.session.rollback()
                state = 'fail'
                reason = '个人信息更新失败'
                
    except Exception, e:
        print e 
        state = 'fail'
        reason = '服务器异常'
    return jsonify({'state':state,'reason':reason,'token':token})              
             
              
# 4. 获取用户个人信息
@check_page.route('/getprofile',methods=['POST'])
def getprofile():
    try:
        token = request.json['token']
        usersinfo = UsersInfo.query.filter_by(token=token).first()
        if usersinfo is None:
            state = 'fail'
            reason = '该用户未注册应用'
            return jsonify({'state':state,'reason':reason,'token':token})
        else:
            name = usersinfo.name;
            qq = usersinfo.qq;
            phone = usersinfo.phone;
            wechat = usersinfo.wechat;
            state='successful'
            reason = ''

            return jsonify({'state':state,'reason':reason,'token':token,'name':name,'qq':qq,'phone':phone,'wechat':wechat})
    except Exception, e:
        print e
        state = 'fail'
        reason = '服务器异常'   
                         
    return jsonify({'state':state,'reason':reason,'token':token})
             
             
# 5. 用户重置密码
@check_page.route('/editpasswd',methods=['POST'])
def resetpasswd():
    try:    
        token = request.json['token']
        password = request.json['password']
        u=User.query.filter_by(id=token).first()
# 可以尝试前面加  _and  或者  前面加_or 操作        
        if u is None:
            state='fail'
            reason='该手机号尚未注册或与该用户未绑定'
        else:
            u.password=password
            try:
                db.session.add(u)
                db.session.commit()
                state='successful'
                reason=''
            except Exception, e:
                print e
                db.session.rollback()
                state = 'fail'
                reason = '数据库事务提交失败'
    except Exception, e:
        print e
        state='fail'
        reason='服务器异常'
    return jsonify({'state':state,'reason':reason}) 
        






