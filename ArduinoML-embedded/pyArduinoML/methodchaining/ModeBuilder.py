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
        self.actions = []  # List[StateActionBuilder], builders for the state actions
        self.transitions = []  # List[TransitionBuilder], builder for the state transitions

    def set(self, actuator):
        """
        Adds an action to the state.

        :param actuator: String, brink the action operates on
        :return: StateActionBuilder, the builder for the action
        """
        action = StateActionBuilder(self, actuator)
        self.actions = self.actions + [action]
        return action

    def when(self, sensor):
        """
        Sets the transition of the state (unique in the current meta-model)

        :param sensor: String, brick to operate on
        :return: TransitionBuilder, the builder for the transition
        """
        transition = TransitionBuilder(self, sensor)
        self.transitions = self.transitions + [transition]
        return transition
