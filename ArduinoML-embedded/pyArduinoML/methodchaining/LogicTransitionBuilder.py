from pyArduinoML.model.Transition import Transition
from pyArduinoML.model.LogicTransition import LogicTransition
from pyArduinoML.model.transition.TransitionType import AND, OR
from pyArduinoML.methodchaining.UndefinedBrick import UndefinedBrick
from pyArduinoML.methodchaining.UndefinedState import UndefinedState


class LogicTransitionBuilder:
    """
    Builder for transitions.
    """

    #TODO : ajouter les greater than etc.. ici aussi 

    def __init__(self, root, transition, type, sensor):
        """
        Constructor.

        :param root: BehaviorBuilder, root builder
        :param sensor: String, name of the brick used to trigger the transition
        :return:
        """
        self.root = root
        self.transition = transition
        self.sensor = sensor
        self.type = type
        self.value = None  # SIGNAL, state of the brick to trigger the transition
        self.next_state = None  # String, name of the target state

    def has_value(self, value):
        """
        Sets the action.

        :param value: SIGNAL, state of the brick to trigger the transition
        :return: LogicTransitionBuilder, the builder
        """
        self.value = value
        return self

    def go_to_state(self, next_state):
        """
        Sets the target state.

        :param next_state: String, name of the target state
        :return: StateBuilder, the builder root
        """
        self.next_state = next_state
        return self.root.root
    
    def get_contents(self, bricks, states):
        """
        Builds the transition.

        :param bricks: Map[String,Brick], the bricks of the application
        :param states: Map[String,State], the states of the application
        :return: Transition, the transition to build
        :raises: UndefinedBrick, if the transition references an undefined brick
        :raises: UndefinedState, if the transition references an undefined state
        """
        if self.sensor not in bricks.keys():
            raise UndefinedBrick()
        if self.next_state not in states.keys():
            raise UndefinedState()
        return LogicTransition(bricks[self.transition.sensor], self.transition.value, self.type, bricks[self.sensor], self.value, states[self.next_state])