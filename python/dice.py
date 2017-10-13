# import random

# class Dice:
#     face_num = 6
#     def shoot(self):
#         return random.randint(1,self.face_num)

# import random

# class Dice:
#     face_num = 6
#     def __init__(self):
#         print('Hello')
        
#     def shoot(self):
#         return random.randint(1,self.face_num)

import random

class Dice():
    def __init__(self,val):
        self.face_num = val
        
    def shoot(self):
        return random.randint(1,self.face_num)