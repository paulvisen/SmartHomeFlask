#-*- coding: UTF-8 -*- 
from flask import Flask
from flask.ext.sqlalchemy import SQLAlchemy

db=SQLAlchemy()

sqlUrl="mysql://root:zhang@123@127.0.0.1:3306/flaskdb?charset=utf8"

def create_app():
    app=Flask(__name__)
    app.config['SQLALCHEMY_DATABASE_URI']=sqlUrl
    db.init_app(app)
    return app
