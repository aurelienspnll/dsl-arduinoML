from pyArduinoML.model.NamedElement import NamedElement


class App(NamedElement):
    """
    Application built over bricks.

    """

    def __init__(self, name, bricks=(), states=(), modes=(), printer = None):
        """
        Constructor.

        :param name: String, the name of the application
        :param bricks: List[Brick], bricks over which the application operates
        :param states: List[State], states of the application with the first one being the initial state
        :param modes: List[Mode], modes of the application with the first one being the initial mode
        :return:
        """
        NamedElement.__init__(self, name)
        self.printer = printer
        self.bricks = bricks
        self.states = states
        self.modes = modes #check if modes is empty because generated code will be different 

    def __repr__(self):
        """
        External representation: Arduino program

        :return: String
        """
        rtr = "// generated by ArduinoML\n\n"
        rtr += "%s" % ("\n".join(map(lambda b: b.declare(), self.bricks)))
        rtr += "\n"
        if(self.printer != None):
            rtr += "\nString current_state_string = \"\";\n"
            rtr += "long previousMillis = 0;\nlong interval = %s;\t//ms\nfloat timestamp = 0.0;" % self.printer.timestamp
        if(len(self.modes) > 0):
            rtr += "\ntypedef void (*GeneralFunction) ();\nGeneralFunction current_state = NULL;\nGeneralFunction current_mode_exec = NULL;\nString current_mode = \"\";\n"
        rtr += "\nvoid setup() {\n%s\n" % ("\n".join(map(lambda b: b.setup(), self.bricks)))
        if(self.printer != None):
            rtr += "\tSerial.begin(9600);\n"
            if(len(self.modes) == 0):
                rtr += "\tcurrent_state_string = \"%s\";\n" % self.states[0].name
        if(len(self.modes) > 0):
            if(self.printer != None):
                rtr += "\tcurrent_state_string = \"%s\";\n" % self.modes[0].initState
            rtr += "\tcurrent_state = state_%s;\n\tcurrent_mode_exec = mode_%s;\n\tcurrent_mode = \"mode_%s\";\n\tmode_%s();\n" % (self.modes[0].initState, self.modes[0].name, self.modes[0].name, self.modes[0].name)
        rtr += "}"
        if(self.printer != None):
            rtr += self.printer.setup()
        rtr += "\n\nint state = LOW; int prev = HIGH;\nlong time = 0; long debounce = 200;\n\n"
        rtr += "%s" % ("\n".join(map(lambda m: m.setup(), self.modes)))
        rtr += "\n"
        if(len(self.modes) > 0):
            rtr += "%s" % ("\n".join(map(lambda s: s.setup_with_modes(self.printer != None), self.states)))
            rtr += "\nvoid loop() {"
            if(self.printer != None):
                rtr += "\n\t" + self.printer.setup_print()
            rtr += "\n %s" % ("\n".join(map(lambda m: m.setupTransition(), self.modes)))
            rtr += "\n\tcurrent_mode_exec();"
        else :    
            rtr += "%s" % ("\n".join(map(lambda s: s.setup(self.printer != None), self.states)))
            rtr += "\nvoid loop() {"
            if(self.printer != None):
                rtr += "\n\t" + self.printer.setup_print()
            rtr += "\n\tstate_%s();" % self.states[0].name #A Modifier avec les modes
        rtr += "\n}"
        return rtr
        
