from transition.TransitionType import AND, OR
import SIGNAL
from Sensor import *
from pyArduinoML.model.Transition import Transition

class LogicTransition(Transition):
    def __init__(self, sensor_a, value_a, type, sensor_b, value_b, nextstate):
        """
        Constructor.
        Ordre des args important -> plus lisible pour l'utilisateur.
        :param sensor_a, sensor_b: Sensor, sensor which value is checked to trigger the transition
        :param value_a, sensor_b: SIGNAL, value that the sensor must have to trigger the transition
        :param type : type of logical expression between a and b (AND / OR)
        :param nextstate: State, state to change to when the transition is triggered
        :return:
        """
        Transition.__init__(self, sensor_a, value_a, nextstate)
        self.sensor_b = sensor_b
        self.value_b = value_b
        self.type = type

    def toArduino(self):
        str = "" + sensorAndValueToString(self.sensor, self.value)
        str += " %s " % (self.type)
        str += sensorAndValueToString(self.sensor_b, self.value_b)
        return str

def sensorAndValueToString(sensor, value):
    return "digitalRead(%s) == %s" % (sensor.name, SIGNAL.value(value))

#Works !
def recursion(transiton):
    res = "("
    if isinstance(transiton, LogicTransition): #Point d'arret
        res += transiton.toArduino() + ")"
        return res