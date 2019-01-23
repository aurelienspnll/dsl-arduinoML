OR = "||"
AND = "&&"

def value(signal):
    """
    Returns the string representation of a signal.

    :param signal: Signal, the signal
    :return: String, the representation of the signal in the Arduino language
    """
    if signal == LOW:
        return "LOW"
    if signal == HIGH:
        return "HIGH"
    return ""
