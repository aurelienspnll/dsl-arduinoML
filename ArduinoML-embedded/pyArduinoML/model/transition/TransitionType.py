OR = "||"
AND = "&&"

def value(type):
    if type == OR:
        return "||"
    if type == AND:
        return "&&"
    return ""
