from pyArduinoML.model.NamedElement import NamedElement
from pyArduinoML.model.Transition import Transition
from pyArduinoML.model.transition.LogicTransition import LogicTransition
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
        self.transition = []
        self.transition.append(transition)
        self.actions = actions

    def settransition(self, transition):
        """
        Sets the transition of the state
        :param transition: Transition
        :return:
        """
        self.transition[0] = transition

    def addtransition(self, transition):
        """
        Add the transition
        :param transition: Transition
        :return:
        """
        self.transition.append(transition)

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
        transition = self.transition
        #rtr += "\tif (digitalRead(%s) == %s && guard) {\n\t\ttime = millis(); state_%s();\n\t} else {\n\t\tstate_%s();\n\t}" \
        #       % (transition.sensor.name, SIGNAL.value(transition.value), transition.nextstate.name, self.name)
        rtr += "\tif ("
        for t in transition:
            if isinstance(t, Transition): #Regular case -> only one transition here. transiton.len() == 1
                rtr += "digitalRead(%s) == %s && " % (t.sensor.name, SIGNAL.value(t.value))
            elif isinstance(t, LogicTransition):
                rtr += "digitalRead(%s) == %s %s digitalRead(%s) == %s" % (t.sensor_a.name, SIGNAL.value(t.value_a), t.type, t.sensor_b.name, SIGNAL.value(t.value_b))
        rtr += " && guard) {\n\t\ttime = millis(); state_%s();\n\t} else {\n\t\tstate_%s();\n\t}" \
                  % (transition[0].nextstate.name, self.name)
        #penser quand on aura du multi-transactionel et donc pas forcement de else mais plusieurs if
        # end of state
        rtr += "\n}\n"
        return rtr
