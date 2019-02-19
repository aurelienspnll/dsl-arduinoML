from pyArduinoML.model.Action import Action

class ActionSound(Action):

    def __init__(self, time, repetition, value, brick):

        self.time = time
        self.repetition = repetition
        Action.__init__(self, value, brick)
