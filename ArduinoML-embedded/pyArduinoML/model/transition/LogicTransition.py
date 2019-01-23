from AbstractTransition import AbstractTransition
from TransitionType import AND, OR

class LogicTransition(AbstractTransition):
    def __init__(self, sensor_a, value_a, type, sensor_b, value_b, nextstate):
        """
        Constructor.
        Ordre des args important -> plus lisible pour l'utilisateur.
        :param sensor_a, sensor_b: Sensor, sensor which value is checked to trigger the transition
        :param value_a, sensor_b: SIGNAL, value that the sensor must have to trigger the transition
        :param type : type of logical expression between a and b (AND / OR)
        :param nextstate: State, state to change to when the transition is triggered
        :return:
        """
        self.sensor_a = sensor_a
        self.value_a = value_a
        self.sensor_b = sensor_b
        self.value_b = value_b
        AbstractTransition.__init__(self, type, nextstate)
"""
#TODO : define LogicalExpression entre 2 transition. (TRANSITION-A && TRANSITION-B)
#recursion -> str(transition-gauche) + str(transition-droite)
    def __init__(self, transiton_a, type, transiton_b, nextstate):
        self.transiton_a = transiton_a
        self.transiton_b = transiton_b
        AbstractTransition.__init__(self, type, nextstate)

    def __init__(self, transiton_a, type, sensor_b, value_b, nextstate):
        self.transiton_a = transiton_a
        self.sensor_b = sensor_b
        self.value_b = value_b
        AbstractTransition.__init__(self, type, nextstate)

    def __init__(self, sensor_a, value_a, type, transiton_b, nextstate):
        self.sensor_a = sensor_a
        self.value_a = value_a
        self.transiton_b = transiton_b
        AbstractTransition.__init__(self, type, nextstate)

    def recursion(self, transition = None):
        if(transiton == None) : #premier coup
            return "TODO"
"""
if __name__ == '__main__':
    switchon = LogicTransition(2, 2, AND, 2, 2)
