from pyArduinoML.model.State import State
import types
import re
from pyArduinoML.model.Mode import Mode
from pyArduinoML.model.Transition import Transition
from pyArduinoML.model.Printer import Printer
from pyArduinoML.model.LogicTransition import LogicTransition
from pyArduinoML.model.transition.TransitionType import AND, OR
from pyArduinoML.methodchaining.TransitionBuilder import TransitionBuilder
from pyArduinoML.methodchaining.LogicTransitionBuilder import LogicTransitionBuilder
from pyArduinoML.methodchaining.UndefinedState import UndefinedState
from pyArduinoML.methodchaining.UndefinedMode import UndefinedMode
from pyArduinoML.methodchaining.UndefinedBrick import UndefinedBrick

class PrinterBuilder:
    """
    Builder for states.
    """

    def __init__(self, root):
        """
        Constructor.

        :param root: BehaviorBuilder, root builder
        :param initState: String, initial state name
        :return:
        """
        self.root = root
        self.pType = "l" #default value -> plot
        self.timestamp = -1
        self.bricks = []  # List[String] bricks to plot or print

    def add_brick(self, brick):
        #brick : String
        self.bricks.append(brick)
        return self
    
    def type(self, newType):
        regexp = r"(text|t|plot|p|line|l)"
        if(not(re.match(regexp, newType))):
            raise TypeError()
        elif(re.match(r"(text|t)", newType)):
            self.pType = "t"
        #else : default
        return self

    def interval(self, interval):
        self.timestamp = interval
        return self.root

    def get_contents(self, bricks):
        for b in self.bricks:
            if b not in bricks.keys():
                raise UndefinedBrick()
        return Printer(self.timestamp, self.pType, self.bricks)