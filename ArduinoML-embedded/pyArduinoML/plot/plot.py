# -*- coding: utf-8 -*-

# sudo pip3 install matplotlib
# sudo apt-get install python3-tk
# sudo pip3 install pyserial

import serial
from matplotlib import pyplot as plt
from time import time


class plotLine():
    def __init__(self, name, plt):
        self.name = name
        self.ydata = []
        self.line = plt.plot(self.ydata, label = self.name)[0]

    def updateData(self, data):
        self.ydata.append(data)

    def updateDrawing(self, xdata):
        self.line.set_xdata(xdata)
        self.line.set_ydata(self.ydata)



class plotText():
    def __init__(self, name, plt):
        self.name = name
        self.value = 0
        self.text = plt.text(0.8, 1, self.name, transform=plt.gcf().transFigure)

    def updateData(self, data):
        self.value = data

    def updateDrawing(self):
        self.text.set_text(self.name + ": " + str(self.value))

    def updateY(self, y):
        self.text.set_y(y)


def createElement(type, name, plt):
    if type == "l":
        return plotLine(name, plt)
    elif type == "t":
        return plotText(name, plt)



# Set variables
serialPort = '/dev/ttyACM0'
baudRate = 9600
plotElementsList = {}

# Y axe
ydata = []
yrange = [0, 800]

# X axe
timepoints = []
view_time = 8 # seconds of data to view at
xrange = [0, view_time]

# Set plot attributes
plt.ion()       # set plot to animate

# figure settings
fig = plt.figure(figsize=(20,10))
fig.suptitle('Live Data Arduino', fontsize='16', fontweight='bold')
plt.subplots_adjust(right=0.77)

# axes settings
plt.axes().grid(True)
plt.ylim(yrange)
plt.xlim(xrange)
plt.xlabel('Time (seconds)', fontsize='12', fontstyle='italic')
plt.ylabel('Value', fontsize='12', fontstyle='italic')


#line1 = plt.plot(ydata, label='Sensor 1qsqssqs')[0]
#line2, = plt.plot([1, 2, 3], label='Sensor 2')
#line3, = plt.plot([1, 2, 3], label='Sensor 3')


# Connect to arduino's serial port
serialConnection = serial.Serial(serialPort, baudRate)
serialConnection.flushInput()   # flush any junk left in the serial buffer

isLegendCreated = False
hasStarted = False


# collect the data and plot a moving frame
while True :
    serialConnection.reset_input_buffer()
    data = serialConnection.readline().decode('utf-8').replace("\r\n", "")

    # sometimes the incoming data is garbage, so just 'try' to do this
    try:
        #print(data)

        # nuit,off|timestamp|SENSOR,l,185;temp,t,235;light,t,285
        values = data.split('|')
        modeState = values[0].split(',')


        if "mode" not in plotElementsList:
            elem = createElement("t", "Mode", plt)
            plotElementsList["mode"] = elem
        else:
            elem = plotElementsList["mode"]
        elem.updateData(modeState[0])
        elem.updateDrawing()


        if "state" not in plotElementsList:
            elem = createElement("t", "State", plt)
            plotElementsList["state"] = elem
        else:
            elem = plotElementsList["state"]
        elem.updateData(modeState[1])
        elem.updateDrawing()

        sensorList = values[1].split(";")

        for sensor in sensorList:
            temp = sensor.split(',')
            name = temp[0]
            type = temp[1]
            val =  int(temp[2])

            if name not in plotElementsList:
                elem = createElement(type, name, plt)
                plotElementsList[name] = elem
            else:
                elem = plotElementsList[name]
            elem.updateData(val)


            if type == "t":
                elem.updateDrawing()

            elif type == "l":
                if not hasStarted:
                    start_time = time()
                    hasStarted = True
                timepoints.append(time()-start_time)
                current_time = timepoints[-1]
                elem.updateDrawing(timepoints)


        # slide the viewing frame along
        if current_time > view_time:
            plt.xlim([current_time-view_time,current_time])

    # if the try statement throws an error, just do nothing
    except: pass

    # update the plot
    fig.canvas.draw()

    if not isLegendCreated:
        # Legend settings
        legend = plt.legend(title="Legend", bbox_to_anchor=(1.04,1), loc="upper left")

        textYdisplay = 1 - legend.get_window_extent().height / fig.get_window_extent().height - 0.20
        plt.text(0.84, textYdisplay, "Value", fontsize=11, transform=plt.gcf().transFigure)

        # set y position for text elements
        y = textYdisplay - 0.05

        for e in plotElementsList:
            elem = plotElementsList[e]
            if isinstance(elem, plotText):
                elem.updateY(y)
                y -= 0.04

        isLegendCreated = True

serialConnection.close()