from pyArduinoML.model.State import State
from pyArduinoML.model.Mode import Mode
from pyArduinoML.model.Transition import Transition
from pyArduinoML.model.LogicTransition import LogicTransition
from pyArduinoML.model.transition.TransitionType import AND, OR
from pyArduinoML.methodchaining.TransitionBuilder import TransitionBuilder
from pyArduinoML.methodchaining.LogicTransitionBuilder import LogicTransitionBuilder
from pyArduinoML.methodchaining.UndefinedState import UndefinedState
from pyArduinoML.methodchaining.UndefinedMode import UndefinedMode
from pyArduinoML.methodchaining.UndefinedBrick import UndefinedBrick

class ModeBuilder:
    """
    Builder for states.
    """

    def __init__(self, root, mode):
        """
        Constructor.

        :param root: BehaviorBuilder, root builder
        :param initState: String, initial state name
        :return:
        """
        self.root = root
        self.mode = mode
        self.initState = None
        self.transitions = []  # List[TransitionBuilder], builder for the state transitions

    def init_state(self, state):
        self.initState = state
        #print(self.initState)
        return self

    def when(self, sensor):
        """
        Sets the transition of the state (unique in the current meta-model)

        :param sensor: String, brick to operate on
        :return: TransitionBuilder, the builder for the transition
        """
        transition = TransitionBuilder(self, sensor)
        self.transitions = self.transitions + [transition]
        return transition
    
    def go_to_mode(self, mode):
        for t in self.transitions:
            if t.next_state == None:
                t.next_state = mode
        return self.root

    def get_contents(self):
        return Mode(self.mode, self.initState)

    def get_contents2(self, bricks, states, modes):
        if self.initState not in states.keys():
            raise UndefinedState()
        tmp_transitions = []
        for t in self.transitions:
            if t.sensor not in bricks.keys():
                raise UndefinedBrick()
            if t.next_state not in modes.keys():
                raise UndefinedState()
            if isinstance(t, TransitionBuilder):
                transition = Transition(bricks[t.sensor], t.value, modes[t.next_state], comparison=t.comparison, read=t.readMode)
            elif isinstance(t, LogicTransitionBuilder): #A REVOIR
                transition = LogicTransition(bricks[t.transition.sensor], t.transition.value, t.type, bricks[t.sensor], t.value, states[t.next_state])
            tmp_transitions += [transition]
        modes[self.mode].transitions = tmp_transitions
        """
        if self.comparison != None and self.read_mode != None:
            return Transition(bricks[self.sensor], self.value, states[self.next_state], comparison=self.comparison, read=self.read_mode)
        elif self.comparison != None:
            return Transition(bricks[self.sensor], self.value, states[self.next_state], comparison=self.comparison)
        elif  self.read_mode != None:
            return Transition(bricks[self.sensor], self.value, states[self.next_state], read=self.read_mode)
        else:
            return Transition(bricks[self.sensor], self.value, states[self.next_state])
        """

    
