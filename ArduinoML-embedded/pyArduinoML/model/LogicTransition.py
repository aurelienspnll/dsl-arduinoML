from transition.TransitionType import AND, OR
from Sensor import *
from pyArduinoML.model.Transition import *

class LogicTransition():
    def __init__(self, sensor_a, value_a, type, sensor_b, value_b, nextstate, comparison_a = "==", comparison_b = "==", read_a = "digital", read_b = "digital"):
        """
        Constructor.
        Ordre des args important -> plus lisible pour l'utilisateur.
        :param sensor_a, sensor_b: Sensor, sensor which value is checked to trigger the transition
        :param value_a, sensor_b: SIGNAL, value that the sensor must have to trigger the transition
        :param type : type of logical expression between a and b (AND / OR)
        :param nextstate: State, state to change to when the transition is triggered
        :return:
        """
        self.transition_a = Transition(sensor_a, value_a, nextstate, comparison=comparison_a, read=read_a)
        self.transition_b = Transition(sensor_b, value_b, nextstate, comparison=comparison_b, read=read_b)
        self.nextstate = nextstate
        self.type = type

    def toArduino(self):
        str = "" + self.transition_a.toArduino()
        str += " %s " % (self.type)
        str += self.transition_b.toArduino()
        return str