from pyArduinoML.model.NamedElement import NamedElement
from pyArduinoML.model.Transition import Transition
from pyArduinoML.model.ActionSound import ActionSound
from pyArduinoML.model.transition.LogicTransition import *
from pyArduinoML.model.transition.LogicTransitionOfTransitions import LogicTransitionOfTransitions
from pyArduinoML.model.transition.LogicTransitionOfSensorAndTransitions import LogicTransitionOfSensorAndTransitions
import SIGNAL

class Mode(NamedElement):
    """
    A mode in the application.

    """

    def __init__(self, name, state, transition=None):
        NamedElement.__init__(self, name)
        self.transitions = []
        self.transitions.append(transition)
        self.initState = state

    def settransition(self, transition):
        """
        La transition doit uniquement etre vers un autre mode
        """
        self.transitions[0] = transition

    def addtransition(self, transition):
        self.transitions.append(transition)

    def setup(self):
        """
        Arduino code for the mode.

        :return: String
        """
        name_str = ""
        name_str += "mode_%s" % self.name
        rtr = ""
        rtr += "void " + name_str + "() {\n"
        # generate code for state actions
        rtr += "\tif(current_mode != \"" + name_str + "\") { \n"
        rtr += "\t\tcurrent_mode = \"%s\";\n" % name_str
        rtr += "\t\tcurrent_state = state_%s;\n" % self.initState.name
        rtr += "\t}\n"
        rtr += "\tcurent_state();\n"
        rtr += "}"
        return rtr
