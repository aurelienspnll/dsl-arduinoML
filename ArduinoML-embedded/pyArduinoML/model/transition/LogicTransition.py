from AbstractTransition import AbstractTransition
from LogicTransitionOfTransitions import LogicTransitionOfTransitions
from LogicTransitionOfSensorAndTransitions import LogicTransitionOfSensorAndTransitions
from TransitionType import AND, OR
from .. import SIGNAL
from ..Sensor import *

class LogicTransition(AbstractTransition):
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
        self.sensor_a = sensor_a
        self.value_a = value_a
        self.sensor_b = sensor_b
        self.value_b = value_b
        AbstractTransition.__init__(self, type, nextstate)

    def toArduino(self):
        return "digitalRead(%s) == %s %s digitalRead(%s) == %s" \
        % (self.sensor_a.name, SIGNAL.value(self.value_a), self.type, self.sensor_b.name, SIGNAL.value(self.value_b))

"""
    def toArduinoTEST(self):
        return "digitalRead(%s) == %s %s digitalRead(%s) == %s" \
        % (self.sensor_a, self.value_a, self.type, self.sensor_b, self.value_b)
"""

def sensorAndValueToString(sensor, value):
    return "digitalRead(%s) == %s" % (sensor.name, SIGNAL.value(value))

#Works !
def recursion(transiton):
    res = "("
    if isinstance(transiton, LogicTransition): #Point d'arret
        res += transiton.toArduino() + ")"
        return res
    elif isinstance(transiton, LogicTransitionOfSensorAndTransitions):
        res += sensorAndValueToString(transiton.sensor, transiton.value)
        res += " " + transiton.type + " " + recursion(transiton.transiton) + ")"
        return res
    elif isinstance(transiton, LogicTransitionOfTransitions):
        res += recursion(transiton.transiton_a)
        res += " " + transiton.type + " " + recursion(transiton.transiton_b) + ")"
        return res

'''
if __name__ == '__main__':
    a = LogicTransition("a", 1, AND, "b", 1, "testA")
    c = LogicTransition("c", 1, AND, "d", 1, "testC")
    button = Sensor("BUTTON", 9)
    toto = LogicTransitionOfTransitions(a, OR, c, "toto")
    test = LogicTransitionOfSensorAndTransitions(button, "1", OR, c, "toto")
    print("-----TEST 1-----")
    print(recursionTEST(test))
    print("-----TEST 2-----")
    toto2 = LogicTransitionOfTransitions(a, AND, a, "coucou")
    print(recursionTEST(toto2))
    print("-----TEST 3-----")
    toto2 = LogicTransitionOfTransitions(toto, AND, a, "coucou")
    print(recursionTEST(toto2))
    print("-----TEST 4-----")
    toto2 = LogicTransitionOfTransitions(a, AND, toto, "coucou")
    print(recursionTEST(toto2))
    print("-----TEST 5-----")
    toto2 = LogicTransitionOfTransitions(toto, OR, toto, "coucou")
    print(recursionTEST(toto2))
'''
