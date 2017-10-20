import commands
import json
import os
from cStringIO import StringIO
import re

print('Loading function')

def aws(cmd):
    return commands.getoutput(cmd)

def lambda_handler(event, context):
    result=aws("./aws ec2 stop-instances --instance--ids [InstanceId] --region ap-northeast-1")
    return result