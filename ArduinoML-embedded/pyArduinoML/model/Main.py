"""
no DSL version of the demo application
"""
from pyArduinoML.model.App import App
from pyArduinoML.model.Action import Action
from pyArduinoML.model.Actuator import Actuator
from pyArduinoML.model.Sensor import Sensor
from pyArduinoML.model.State import State
from pyArduinoML.model.Transition import Transition
from pyArduinoML.model.transition.LogicTransition import LogicTransition
from pyArduinoML.model.transition.LogicTransitionOfTransitions import LogicTransitionOfTransitions
from pyArduinoML.model.transition.LogicTransitionOfSensorAndTransitions import LogicTransitionOfSensorAndTransitions
from pyArduinoML.model.transition.TransitionType import AND, OR
from pyArduinoML.model.SIGNAL import HIGH, LOW

def demo():

    button = Sensor("BUTTON", 9)
    secondButton = Sensor("SECONDBUTTON", 10)
    led = Actuator("LED", 12)
    buzzer = Actuator("BUZZER", 11)

    on = State("on", [Action(HIGH, led), Action(HIGH, buzzer)])
    off = State("off", [Action(LOW, led), Action(LOW, buzzer)])

    switchon = Transition(button, HIGH, on)
    switchoff = Transition(button, LOW, off)

    on.settransition(switchoff)
    off.settransition(switchon)

    switchon = Transition(secondButton, HIGH, on)
    switchoff = Transition(secondButton, LOW, off)

    on.addtransition(switchoff)
    off.addtransition(switchon)

    app = App("Switch!", [button, led, buzzer, secondButton], [off, on])

    print(app)

def testLogicTransitionOfTransitions(): #WORKS !
    button = Sensor("BUTTON", 9)
    secondButton = Sensor("SECONDBUTTON", 10)
    led = Actuator("LED", 12)
    buzzer = Actuator("BUZZER", 11)

    on = State("on", [Action(HIGH, led), Action(HIGH, buzzer)])
    off = State("off", [Action(LOW, led), Action(LOW, buzzer)])

    switchon = LogicTransition(button, HIGH, AND, secondButton, HIGH, on)
    switchoff = LogicTransition(button, LOW, OR, secondButton, LOW, off)
    test = LogicTransitionOfTransitions(switchon, AND, switchon, on)

    on.settransition(switchoff)
    off.settransition(test)

    app = App("Switch!", [button, led, buzzer, secondButton], [off, on])

    print(app)

def testLogicTransitionOfSensorAndTransitions(): #WORKS !
    button = Sensor("BUTTON", 9)
    secondButton = Sensor("SECONDBUTTON", 10)
    led = Actuator("LED", 12)
    buzzer = Actuator("BUZZER", 11)

    on = State("on", [Action(HIGH, led), Action(HIGH, buzzer)])
    off = State("off", [Action(LOW, led), Action(LOW, buzzer)])

    switchon = LogicTransition(button, HIGH, AND, secondButton, HIGH, on)
    switchoff = LogicTransition(button, LOW, OR, secondButton, LOW, off)
    test = LogicTransitionOfSensorAndTransitions(button, HIGH, AND, switchon, on)

    on.settransition(switchoff)
    off.settransition(test)

    app = App("Switch!", [button, led, buzzer, secondButton], [off, on])

    print(app)

def test():
    button = Sensor("BUTTON", 9)
    secondButton = Sensor("SECONDBUTTON", 10)
    led = Actuator("LED", 12)
    buzzer = Actuator("BUZZER", 11)

    on = State("on", [Action(HIGH, led), Action(HIGH, buzzer)])
    off = State("off", [Action(LOW, led), Action(LOW, buzzer)])

    switchon = LogicTransition(button, HIGH, AND, secondButton, HIGH, on)
    switchoff = LogicTransition(button, LOW, OR, secondButton, LOW, off)
    test = LogicTransitionOfTransitions(switchon, AND, switchon, on)

    on.settransition(switchoff)
    off.settransition(test)

    app = App("Switch!", [button, led, buzzer, secondButton], [off, on])

    print(app)

if __name__ == '__main__':
    #demo()
    #test() #WORKS
    testLogicTransitionOfSensorAndTransitions() #WORKS
    #testLogicTransitionOfTransitions() #WORKS
