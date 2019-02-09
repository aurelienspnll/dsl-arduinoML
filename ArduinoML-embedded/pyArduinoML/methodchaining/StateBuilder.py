from pyArduinoML.model.State import State
from pyArduinoML.model.Transition import Transition
from pyArduinoML.model.LogicTransition import LogicTransition
from pyArduinoML.model.transition.TransitionType import AND, OR
from pyArduinoML.methodchaining.TransitionBuilder import TransitionBuilder
from pyArduinoML.methodchaining.LogicTransitionBuilder import LogicTransitionBuilder
from pyArduinoML.methodchaining.StateActionBuilder import StateActionBuilder
from pyArduinoML.methodchaining.UndefinedBrick import UndefinedBrick
from pyArduinoML.methodchaining.UndefinedState import UndefinedState

class StateBuilder:
    """
    Builder for states.
    """

    def __init__(self, root, state):
        """
        Constructor.

        :param root: BehaviorBuilder, root builder
        :param state: String, state name
        :return:
        """
        self.root = root
        self.state = state
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
        

    def and_when(self, sensor):
        return self.logic_when(sensor, AND)

    def or_when(self, sensor):
        return self.logic_when(sensor, OR)

    def logic_when(self, sensor, type):
        last_transition = self.transitions.pop()
        transition = LogicTransitionBuilder(self, last_transition, type, sensor)
        self.transitions = self.transitions + [transition]
        #print(self.transitions)
        return transition

    def go_to_state(self, next_state):
        """
        Sets the target state of all transitions added without next_state.
        In case that we have multiple transitions with different next_state.

        :param next_state: String, name of the target state
        :return: StateBuilder, the builder root
        """
        for t in self.transitions:
            if t.next_state == None:
                t.next_state = next_state
        return self.root

    def get_contents(self, bricks):
        """
        Builds the state (step 1)

        :param bricks: Map[String, Brick], the bricks of the application
        :return: State, the state to build

        This method does not builds the transition attribute.
        A 2-step build is required (due to the meta-model) to get references right while avoiding bad typing tricks
        such as passing a TransitionBuilder instead of a Transition.
        """
        return State(self.state, map(lambda builder: builder.get_contents(bricks), self.actions), None)

    def get_contents2(self, bricks, states):
        """
         Builds the state (step 2)

        :param bricks: Map[String,Brick], the bricks of the application
        :param states: Map[String, State], the states of the application
        :return:
        :raises: UndefinedBrick, if the brick the transition operates on is not defined
        :raises: UndefinedState, if the target state is not defined

        This method builds the transition attribute.
        A 2-step build is required (due to the meta-model) to get references right while avoiding bad typing tricks
        such as passing a TransitionBuilder instead of a Transition.
        """
        tmp_transitions = []
        for t in self.transitions:
            if t.sensor not in bricks.keys():
                raise UndefinedBrick()
            if self.state not in states.keys():
                raise UndefinedState()
            if t.next_state not in states.keys():
                raise UndefinedState()
            if isinstance(t, TransitionBuilder):
                transition = Transition(bricks[t.sensor], t.value, states[t.next_state])
            elif isinstance(t, LogicTransitionBuilder):
                transition = LogicTransition(bricks[t.transition.sensor], t.transition.value, t.type, bricks[t.sensor], t.value, states[t.next_state])
            tmp_transitions += [transition]
        states[self.state].transitions = tmp_transitions
