from AbstractTransition import AbstractTransition

class LogicTransitionOfTransitions(AbstractTransition):
    def __init__(self, transiton_a, type, transiton_b, nextstate):
        self.transiton_a = transiton_a
        self.transiton_b = transiton_b
        AbstractTransition.__init__(self, type, nextstate)
