# -*- coding: utf-8 -*-

# sudo pip3 install matplotlib
# sudo apt-get install python3-tk
# sudo pip3 install pyserial
# python3 plot.py

import time
import serial
from matplotlib import pyplot as plt


class plotLine():
    def __init__(self, name, plt):
        self.name = name
        self.ydata = []
        self.xdata = []
        self.line = plt.plot(self.xdata, self.ydata, label = self.name)[0]

    def updateData(self, x, y):
        self.xdata.append(x)
        self.ydata.append(y)

    def updateDrawing(self):
        self.line.set_data(self.xdata, self.ydata)


class plotText():
    def __init__(self, name, plt):
        self.name = name
        self.value = 0
        self.text = plt.text(0.8, 1, self.name, transform=plt.gcf().transFigure)

    def updateData(self, val):
        self.value = val

    def updateDrawing(self):
        self.text.set_text(self.name + ":   " + str(self.value))

    def updateYposition(self, y):
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
modeLabel = "Mode"
stateLabel = "State"

# Y axe
ydata = []
view_value = 500
pad_top = 100
yrange = [0, view_value]

# X axe
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

# legend
isLegendCreated = False

# Connect to arduino's serial port
serialConnection = serial.Serial(serialPort, baudRate)
serialConnection.flushInput()   # flush any junk left in the serial buffer
time.sleep(0.1)                 #  a little sleep time so buffer gets properly flushed



# collect the data and plot a moving frame
while True :
    serialConnection.reset_input_buffer()
    data = serialConnection.readline().decode('utf-8').replace("\r\n", "")      # m:nuit,s:off|1.00|SENSOR,l,185;temp,l,235;light,t,285

    # sometimes the incoming data is garbage, so just 'try' to do this
    try:
        #print(data)
        values = data.split('|')

        # Set text for mode and state
        modeState = values[0].split(',')
        for ms in modeState:
            temp = ms.split(":")
            txt = ""

            if temp[0] == "m":
                txt = modeLabel
            elif temp[0] == "s":
                txt = stateLabel

            if txt not in plotElementsList:
                elem = createElement("t", txt, plt)
                plotElementsList[txt] = elem
            else:
                elem = plotElementsList[txt]
            elem.updateData(temp[1])
            elem.updateDrawing()

        # Get timestamps
        timestamp = float(values[1])

        # Set plots for sensors
        sensorList = values[2].split(";")
        for sensor in sensorList:
            temp = sensor.split(',')
            name = temp[0]
            type = temp[1]
            val =  int(temp[2])

            # add or get element in list
            if name not in plotElementsList:
                elem = createElement(type, name, plt)
                plotElementsList[name] = elem
            else:
                elem = plotElementsList[name]

            # update data
            if type == "t":
                elem.updateData(val)
            elif type == "l":
                elem.updateData(timestamp, val)
                current_time = timestamp
                current_value = val

            elem.updateDrawing()

        # slide the viewing frame along
        if current_time > view_time:
            plt.xlim([current_time-view_time,current_time])

        # update y limit if there is a value out of the current limit
        if current_value > view_value - pad_top:
            view_value = current_value + pad_top
            plt.ylim([0, view_value])

    # if the try statement throws an error, just do nothing
    except:
        pass

    # update the plot
    fig.canvas.draw()

    if not isLegendCreated:
        # Legend settings
        legend = plt.legend(title="Legend", bbox_to_anchor=(1.04,1), loc="upper left")

        textYdisplay = 1 - legend.get_window_extent().height / fig.get_window_extent().height - 0.20
        plt.text(0.82, textYdisplay, "Variables", fontsize=11, transform=plt.gcf().transFigure)

        # set y position for text elements
        y = textYdisplay - 0.05

        if modeLabel in plotElementsList:
            plotElementsList[modeLabel].updateYposition(y)
            y -= 0.04

        if stateLabel in plotElementsList:
            plotElementsList[stateLabel].updateYposition(y)
            y -= 0.04

        for e in plotElementsList:
            elem = plotElementsList[e]
            if e != modeLabel and e != stateLabel and isinstance(elem, plotText):
                elem.updateYposition(y)
                y -= 0.04

        isLegendCreated = True


serialConnection.close()