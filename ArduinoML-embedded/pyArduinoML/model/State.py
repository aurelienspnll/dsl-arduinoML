from pyArduinoML.model.NamedElement import NamedElement
from pyArduinoML.model.Transition import Transition
from pyArduinoML.model.transition.LogicTransition import *
from pyArduinoML.model.transition.LogicTransitionOfTransitions import LogicTransitionOfTransitions
from pyArduinoML.model.transition.LogicTransitionOfSensorAndTransitions import LogicTransitionOfSensorAndTransitions
import SIGNAL

class State(NamedElement):
    """
    A state in the application.

    """

    def __init__(self, name, actions=(), transition=None):
        """
        Constructor.

        :param name: String, name of the state
        :param actions: List[Action], sequence of actions to do when entering the state (size should be > 0)
        :param transition: Transition, unique outgoing transition
        :return:
        """
        NamedElement.__init__(self, name)
        self.transitions = []
        self.transitions.append(transition)
        self.actions = actions

    def settransition(self, transition):
        """
        Sets the transition of the state
        :param transition: Transition
        :return:
        """
        self.transitions[0] = transition

    def addtransition(self, transition):
        """
        Add the transition
        :param transition: Transition
        :return:
        """
        self.transitions.append(transition)

    def setup(self):
        """
        Arduino code for the state.

        :return: String
        """
        rtr = ""
        rtr += "void state_%s() {\n" % self.name
        # generate code for state actions
        for action in self.actions:
            rtr += "\tdigitalWrite(%s, %s);\n" % (action.brick.name, SIGNAL.value(action.value))

        rtr += "\tboolean guard =  millis() - time > debounce;\n"
        # generate code for the transition
        rtr += "\tif ("
        ##TODO : POUR CHAQUES TRANSITIONS PAS BESOINS DE REGARDE LE NEXTSTATE GRACE AUX NOUVEAU TYPE
        for t in self.transitions:
            if isinstance(t, Transition): #Regular case -> only one transition here. transiton.len() == 1
                rtr += "digitalRead(%s) == %s" % (t.sensor.name, SIGNAL.value(t.value))
            elif isinstance(t, LogicTransition):
                rtr += t.toArduino()
            elif isinstance(t, LogicTransitionOfTransitions):
                rtr += recursion(t)
            elif isinstance(t, LogicTransitionOfSensorAndTransitions):
                rtr += recursion(t)
        #print(self.transitions)
        rtr += " && guard) {\n\t\ttime = millis(); state_%s();\n\t} else {\n\t\tstate_%s();\n\t}" \
                  % (self.transitions[0].nextstate.name, self.name)
        #penser quand on aura du multi-transactionel et donc pas forcement de else mais plusieurs if
        # end of state
        rtr += "\n}\n"
        return rtr
