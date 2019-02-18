from pyArduinoML.model.State import State
from pyArduinoML.methodchaining.UndefinedBrick import UndefinedBrick
from pyArduinoML.methodchaining.UndefinedState import UndefinedState

class ModeBuilder:
    """
    Builder for states.
    """

    def __init__(self, root, initState):
        """
        Constructor.

        :param root: BehaviorBuilder, root builder
        :param initState: String, initial state name
        :return:
        """
        self.root = root
        self.initState = initState
        self.transitions = []  # List[TransitionBuilder], builder for the state transitions

    def init_state(self, state):
        self.initState = state
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


    
