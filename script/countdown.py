#!/bin/python3
import datetime


class timer:
    def __init__(self, d):
        self.delta = (d - datetime.datetime.now())
        self.days, self.seconds = self.delta.days, self.delta.seconds
        self.hours = self.days * 24 + self.seconds // 3600
        self.minutes = (self.seconds % 3600) // 60
        if self.minutes < 10:
            self.minutes = "0" + str(self.minutes)
        self.seconds = self.seconds % 60
        if self.seconds < 10:
            self.seconds = "0" + str(self.seconds)
        


    def __repr__(self):
        return str(self.hours) + ":" + str(self.minutes) + ":" + str(self.seconds)
    
t = timer(datetime.datetime(2022, 6, 10, 9, 00, 00))
print(t)
#print("🐧",t,sep="   ")
