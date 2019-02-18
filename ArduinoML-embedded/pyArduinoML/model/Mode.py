from pyArduinoML.model.NamedElement import NamedElement
from pyArduinoML.model.Transition import Transition
from pyArduinoML.model.ActionSound import ActionSound
from pyArduinoML.model.transition.LogicTransition import *
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

    def setupTransition(self):
        """
        Arduino code for transitions of the mode.

        :return: String
        """
        rtr = "\tif("
        for t in self.transitions:
            #if t.nextState is Instance of State raise ERROR
            rtr += t.toArduino()
            """
            elif isinstance(t, LogicTransitionOfTransitions):
                rtr += recursion(t)
            elif isinstance(t, LogicTransitionOfSensorAndTransitions):
                rtr += recursion(t)
            """
        rtr += ") {\n\t\tmode_%s();\n\t}" % (self.transitions[0].nextstate.name)
        #penser quand on aura du multi-transactionel et donc pas forcement de else mais plusieurs if
        # end of state
        return rtr
