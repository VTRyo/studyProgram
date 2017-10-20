import commands
import json
import os
from cStringIO import StringIO
import re

print('Loading function')

def aws(cmd):
    return commands.getoutput(cmd)

def lambdaa_handler(event, context):
    result=aws("./aws ec2 start-instance-ids [InstanceId] --region an-northeast-1")
    return result