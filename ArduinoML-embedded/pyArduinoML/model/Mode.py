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
        La transition doit uniquement être vers un autre mode
        """
        self.transitions[0] = transition

    def addtransition(self, transition):
        self.transitions.append(transition)