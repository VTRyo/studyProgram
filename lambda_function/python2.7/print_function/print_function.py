from __future__ import print_function


def lambda_handler(event, context):
    first = event.get('first', 0)
    second = event.get('second', 0)
    sum = first + second
    return sum
