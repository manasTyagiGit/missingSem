#!/usr/bin/env python

import signal, time

def handler (signum, time) :
    print ("Got a SIGINT (Ctrl + C), but not stopping...Use CTRL + \ to quit")

signal.signal(signal.SIGINT, handler)

i = 0

while True:
    time.sleep(.1)
    print ("\r{}".format(i), end = "")
    i += 1