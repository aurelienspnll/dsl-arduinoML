from AbstractTransition import AbstractTransition

#Convention : On met le sensor en premier.
class LogicTransitionOfSensorAndTransitions(AbstractTransition):
    def __init__(self, sensor, value, type, transiton, nextstate):
        self.sensor = sensor
        self.value = value
        self.transiton = transiton
        AbstractTransition.__init__(self, type, nextstate)
