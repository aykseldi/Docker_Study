#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Aug 30 08:26:58 2020

@author: aliyukseldi
"""


from flask import Flask, Response
from datetime import datetime,timedelta
import time
import requests

app = Flask(__name__)
start_time=time.time()
deneme='uptime since'

@app.route("/")
def hello():
    return "Hello World!"

@app.route("/healthz")
def healthcheck():
    response = requests.get('http://0.0.0.0:8080')
    return {
        "status": response.status_code,
        "version": '0.0.1',
        "uptime":  'uptime since ' +  (datetime.now() -  timedelta(seconds=time.time()-start_time)).strftime("%m-%d-%Y, %H:%M:%S")
       
    }

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0', port='8080')
            #port=8080)