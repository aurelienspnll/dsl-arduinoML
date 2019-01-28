from pyArduinoML.model.Action import Action
from pyArduinoML.model.ActionSound import ActionSound
from pyArduinoML.methodchaining.UndefinedBrick import UndefinedBrick


class StateActionBuilder:
    """
    Builder for actions in states (MethodChaining)
    """

    def __init__(self, root, actuator):
        """
        Constructor.

        :param root: StateBuilder, root builder
        :param actuator: String, name of the actuator to operate on
        :return:
        """
        self.root = root
        self.actuator = actuator
        self.data = None  # SIGNAL, signal to send to the actuator
        self.time = None
        self.repetition = None

    def to(self, data):
        """
        Sets the signal to send.

        :param data: SIGNAL, signal to send
        :return: BehaviorBuilder, builder for the behavior
        """
        self.data = data
        return self.root


    def to_emit_sound_for_ms(self, time):
        """
        Sets the signal to send.

        :param repetition: Number of repetitions
        :return: BehaviorBuilder, builder for the behavior
        """
        self.time = time
        return self


    def repeat(self, repetition):
        """
        Sets the signal to send.

        :param repetition: Number of repetitions
        :return: BehaviorBuilder, builder for the behavior
        """
        self.repetition = repetition
        return self.root


    def get_contents(self, bricks):
        """
        Builds the action.

        :param bricks: Map[String,Brick] the bricks of the application
        :return: Action, the action to build
        :raises: UndefinedBrick, if the action references an undefined brick
        """
        if self.actuator not in bricks.keys():
            raise UndefinedBrick()
        elif self.time != None and self.repetition != None:
            return ActionSound(self.time, self.repetition, self.data, bricks[self.actuator])

        return Action(self.data, bricks[self.actuator])
