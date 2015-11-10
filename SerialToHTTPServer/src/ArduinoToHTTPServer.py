# coding=UTF-8
'''
Created on Sep 22, 2013

@author: rcsdnj
'''
import serial
from sys import stdout
import thread
from time import sleep
import time

import BaseHTTPServer
import HTTPHandler


class ArduinoToHTTPServer(object):
    '''
    classdocs
    '''

    isRunning = False
    serialPort = None
    httpd = None
    currentTemperature = 0.0
    
    HOST_NAME = '0.0.0.0' # !!!REMEMBER TO CHANGE THIS!!!
    PORT_NUMBER = 8080 # Maybe set this to 9000.
    
    def __init__(self):        
        '''
        Constructor
        '''
        self.isRunning = True
        
        self.initArduinoSerial()
        self.initHTTPHandler()
        
        

    def initArduinoSerial(self):
        self.serialPort = serial.Serial('/dev/ttyUSB0', 57600, timeout=1000)
        print self.serialPort.name
        thread.start_new_thread(self.updateWebsiteFromArduino, ())
        
    def initHTTPHandler(self):
        server_class = BaseHTTPServer.HTTPServer
        
        self.httpd = server_class((self.HOST_NAME, self.PORT_NUMBER), HTTPHandler.MyHandler)
        print time.asctime(), "Server Starts - %s:%s" % (self.HOST_NAME, self.PORT_NUMBER)
        try:
            self.httpd.serve_forever()
        except KeyboardInterrupt:
            pass
        self.httpd.server_close()
        print time.asctime(), "Server Stops - %s:%s" % (self.HOST_NAME, self.PORT_NUMBER)
        
    def updateWebsiteFromArduino(self):
        while (self.isRunning):
            currentTemperature = self.readArduino()
            stdout.write("\r%s" % currentTemperature )
            stdout.flush()
            sleep(1)
            HTTPHandler.MyHandler.temperature = currentTemperature

    def readArduino(self):
        temp = self.serialPort.readline().rstrip()
        try:
            temperature = temp + "ᵒC"
        except ValueError:
            temperature = "Erro na leitura!"
        return temperature;

    
        
        
        
