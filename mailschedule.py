from subprocess import call
import os
import schedule
import time


def gmail():
    call(['C:/Users/gobika/AppData/Local/Programs/Python/Python39/python.exe', '-m', 'robot',
          'C:/Users/gobika/PycharmProjects/Chess/TestCase/mail.robot'])


schedule.every(5).seconds.do(gmail)
# schedule.every(5).hours.do(gmail)
time.sleep(2)

while 1:
    schedule.run_pending()
    time.sleep(3)
