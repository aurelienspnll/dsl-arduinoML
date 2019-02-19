from pyArduinoML.model.Transition import Transition
from pyArduinoML.methodchaining.UndefinedBrick import UndefinedBrick
from pyArduinoML.methodchaining.UndefinedState import UndefinedState


class TransitionBuilder:
    """
    Builder for transitions.
    """

    def __init__(self, root, sensor):
        """
        Constructor.

        :param root: BehaviorBuilder, root builder
        :param sensor: String, name of the brick used to trigger the transition
        :return:
        """
        self.root = root
        self.sensor = sensor
        self.value = None  # SIGNAL, state of the brick to trigger the transition
        self.next_state = None  # String, name of the target state
        self.readMode = "digital"
        self.comparison = "=="

    def has_value(self, value):
        """
        Sets the action.

        :param value: SIGNAL, state of the brick to trigger the transition
        :return: TransitionBuilder, the builder
        """
        self.value = value
        return self.root

    def greater_than(self, value):
        self.comparison = ">"
        self.value = value
        return self.root

    def greater_than_or_equals(self, value):
        self.comparison = ">="
        self.value = value
        return self.root
    
    def lesser_than(self, value):
        self.comparison = "<"
        self.value = value
        return self.root
    
    def lesser_than_or_equals(self, value):
        self.comparison = "<="
        self.value = value
        return self.root

    def read_mode(self, mode):
        self.readMode = mode
        return self
    

    '''
    def go_to_state(self, next_state):
        """
        Sets the target state.

        :param next_state: String, name of the target state
        :return: StateBuilder, the builder root
        """
        self.next_state = next_state
        print("SALUT")
        print(self.root.root)
        return self.root.root
    '''
    
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
        if self.comparison != None and self.read_mode != None:
            return Transition(bricks[self.sensor], self.value, states[self.next_state], comparison=self.comparison, read=self.read_mode)
        elif self.comparison != None:
            return Transition(bricks[self.sensor], self.value, states[self.next_state], comparison=self.comparison)
        elif  self.read_mode != None:
            return Transition(bricks[self.sensor], self.value, states[self.next_state], read=self.read_mode)
        else:
            return Transition(bricks[self.sensor], self.value, states[self.next_state])
