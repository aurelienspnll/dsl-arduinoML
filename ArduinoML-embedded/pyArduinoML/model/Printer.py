from pyArduinoML.model.NamedElement import NamedElement
from pyArduinoML.model.Transition import Transition
from pyArduinoML.model.ActionSound import ActionSound
from pyArduinoML.model.LogicTransition import *
from pyArduinoML.model.Mode import Mode
from pyArduinoML.model.transition.LogicTransitionOfTransitions import LogicTransitionOfTransitions
from pyArduinoML.model.transition.LogicTransitionOfSensorAndTransitions import LogicTransitionOfSensorAndTransitions
from pyArduinoML.model.NextStateError import NextStateError
import SIGNAL

class Printer:
    def __init__(self, timestamp, type, bricks=()):
        self.bricks = bricks
        self.type = type
        self.timestamp = timestamp

    def setup(self):
        """
        Arduino code for the state.

        :return: String
        """
        rtr = ""
        rtr += "\n\nvoid printData(String mode, String state, float timestamp"
        for i in range(len(self.bricks)):
            rtr += ", int value%d" % i
        rtr += "){\n"
        rtr += "\tSerial.print(\"m:\");"
        rtr += "\n\tSerial.print(mode);"
        rtr += "\n\tSerial.print(\",s:\");"
        rtr += "\n\tSerial.print(state);"
        rtr += "\n\tSerial.print(\"|\");"
        rtr += "\n\tSerial.print(timestamp);"
        rtr += "\n\tSerial.print(\"|\");"
        for i in range(len(self.bricks)):
            #l sera le mode a ajouter
            rtr += "\n\tSerial.print(\"%s,%s,\");" % (self.bricks[i], self.type)
            rtr += "\n\tSerial.print(value%d);" % i
            rtr += "\n\tSerial.print(\";\");"
        rtr += "\n\tSerial.println(\"\");"
        rtr += "\n}\n"
        return rtr

    def setup_print(self):
        rtr = ""
        rtr = "unsigned long currentMillis = millis();\n\tfloat dif = currentMillis - previousMillis;\n\t"
        rtr += "if(dif >= interval){\n\t\tpreviousMillis = currentMillis;\n\t\ttimestamp += dif/1000.0;\t// to seconds\n\t\t"
        rtr += "printData(current_mode, current_state_string, timestamp"
        for i in range(len(self.bricks)):
            rtr += ", analogRead(%s)" % self.bricks[i]
        rtr += ");\n\t}"
        return rtr
