import re
import SIGNAL
from pyArduinoML.model.UnavailableComparison import UnavailableComparison
from pyArduinoML.model.UnavailableReadMode import UnavailableReadMode

class Transition :
    """
    A transition between two states.
    """

    def __init__(self, sensor, value, nextstate, comparison = "==", read = "digital"):
        """
        Constructor.

        :param sensor: Sensor, sensor which value is checked to trigger the transition
        :param comparison: String, "==", "<", "<=", ">", ">="
        :param read: String, digitalRead or analogRead
        :param value: SIGNAL, value that the sensor must have to trigger the transition
        :param nextstate: State, state to change to when the transition is triggered
        :return:
        """
        self.sensor = sensor
        self.comparison = comparison
        self.checkComparison()
        self.read = read
        self.checkRead()
        self.value = value
        self.nextstate = nextstate
    
    def checkComparison(self):
        regexp = r"(==|<|<=|>|>=)"
        if(not(re.match(regexp, self.comparison))):
            raise UnavailableComparison()

    def checkRead(self):
        regexp = r"(digital|analog)"
        if(not(re.match(regexp, self.read))):
            raise UnavailableReadMode()
    
    def toArduino(self):
        return sensorAndValueToString(self.read, self.sensor, self.comparison, self.value)



def sensorAndValueToString(read, sensor, comparison, value):
    return "%sRead(%s) %s %s" % (read, sensor.name, comparison, SIGNAL.value(value))