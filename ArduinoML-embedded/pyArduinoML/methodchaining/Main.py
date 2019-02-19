"""
DSL version of the demo application
uses MethodChaining, nothing Python-specific
"""

def very_simple_alarm():
    """
    Direct use of the DSL.
    + : auto-completion (limited due to python typing system)
    - : verbose, Python syntax requires '\' to cut lines.

    :return:
    """
    from pyArduinoML.methodchaining.AppBuilder import AppBuilder
    from pyArduinoML.model.SIGNAL import HIGH, LOW

    app = AppBuilder("Very simple alarm!") \
        .sensor("BUTTON").on_pin(9) \
        .actuator("LED").on_pin(12) \
        .actuator("BUZZER").on_pin(11) \
        .state("off") \
            .set("LED").to(LOW) \
            .set("BUZZER").to(LOW) \
            .when("BUTTON").has_value(HIGH).go_to_state("on") \
        .state("on") \
            .set("LED").to(HIGH) \
            .set("BUZZER").to(HIGH) \
            .when("BUTTON").has_value(LOW).go_to_state("off") \
        .get_contents()
    print(app)


def dual_check_alarm():
    """
    Direct use of the DSL.
    + : auto-completion (limited due to python typing system)
    - : verbose, Python syntax requires '\' to cut lines.

    :return:
    """
    from pyArduinoML.methodchaining.AppBuilder import AppBuilder
    from pyArduinoML.model.SIGNAL import HIGH, LOW
    from pyArduinoML.model.transition.TransitionType import AND, OR

    app = AppBuilder("Dual-check alarm!") \
        .sensor("BUTTON").on_pin(9) \
        .sensor("SECONDBUTTON").on_pin(10) \
        .actuator("BUZZER").on_pin(11) \
        .state("off") \
            .set("BUZZER").to(LOW) \
            .when("BUTTON").has_value(HIGH) \
            .and_when("SECONDBUTTON").has_value(HIGH).go_to_state("on") \
        .state("on") \
            .set("BUZZER").to(HIGH) \
            .when("BUTTON").has_value(LOW) \
            .or_when("SECONDBUTTON").has_value(LOW).go_to_state("off") \
        .get_contents()
    print(app)


def state_based_alarm():
    """
    Direct use of the DSL.
    + : auto-completion (limited due to python typing system)
    - : verbose, Python syntax requires '\' to cut lines.

    :return:
    """
    from pyArduinoML.methodchaining.AppBuilder import AppBuilder
    from pyArduinoML.model.SIGNAL import HIGH, LOW

    app = AppBuilder("State-based alarm!") \
        .sensor("BUTTON").on_pin(9) \
        .actuator("LED").on_pin(12) \
        .state("off") \
            .set("LED").to(LOW) \
            .when("BUTTON").has_value(HIGH).go_to_state("on") \
        .state("on") \
            .set("LED").to(HIGH) \
            .when("BUTTON").has_value(HIGH).go_to_state("off") \
        .get_contents()
    print(app)


def multi_state_alarm():
    """
    Direct use of the DSL.
    + : auto-completion (limited due to python typing system)
    - : verbose, Python syntax requires '\' to cut lines.

    :return:
    """
    from pyArduinoML.methodchaining.AppBuilder import AppBuilder
    from pyArduinoML.model.SIGNAL import HIGH, LOW

    app = AppBuilder("Multi-state alarm!") \
        .sensor("BUTTON").on_pin(9) \
        .actuator("LED").on_pin(12) \
        .actuator("BUZZER").on_pin(11) \
        .state("init") \
            .set("LED").to(LOW) \
            .set("BUZZER").to(LOW) \
            .when("BUTTON").has_value(HIGH).go_to_state("buzzer_on") \
        .state("buzzer_on") \
            .set("LED").to(LOW) \
            .set("BUZZER").to(HIGH) \
            .when("BUTTON").has_value(HIGH).go_to_state("led_on") \
        .state("led_on") \
            .set("LED").to(HIGH) \
            .set("BUZZER").to(LOW) \
            .when("BUTTON").has_value(HIGH).go_to_state("init") \
        .get_contents()
    print(app)


def signaling_stuff_using_sounds():
    """
    Direct use of the DSL.
    + : auto-completion (limited due to python typing system)
    - : verbose, Python syntax requires '\' to cut lines.

    :return:
    """
    from pyArduinoML.methodchaining.AppBuilder import AppBuilder
    from pyArduinoML.model.SIGNAL import HIGH, LOW

    app = AppBuilder("Switch!") \
        .sensor("BUTTON").on_pin(9) \
        .actuator("BUZZER").on_pin(11) \
        .state("init") \
            .set("BUZZER").to(LOW) \
            .when("BUTTON").has_value(HIGH).go_to_state("step_one") \
        .state("step_one") \
            .set("BUZZER").to_emit_sound_for_ms(300).repeat(3) \
            .when("BUTTON").has_value(HIGH).go_to_state("step_two") \
        .state("step_two") \
            .set("BUZZER").to_emit_sound_for_ms(1000).repeat(1) \
            .when("BUTTON").has_value(HIGH).go_to_state("init") \
        .get_contents()
    
    print(app)

def mode_scenario():
    """
    Direct use of the DSL.
    + : auto-completion (limited due to python typing system)
    - : verbose, Python syntax requires '\' to cut lines.

    :return:
    """
    from pyArduinoML.methodchaining.AppBuilder import AppBuilder
    from pyArduinoML.model.SIGNAL import HIGH, LOW

    app = AppBuilder("Switch!") \
        .sensor("BUTTON").on_pin(9) \
        .actuator("LED").on_pin(12) \
        .sensor("SENSOR").on_pin("A2") \
        .mode("jour") \
            .init_state("off").when("SENSOR").read_mode("analog").lesser_than(400).go_to_mode("nuit") \
        .mode("nuit") \
            .init_state("on").when("SENSOR").read_mode("analog").greater_than(400).go_to_mode("jour") \
        .state("on") \
            .set("LED").to(HIGH) \
            .when("BUTTON").has_value(HIGH).go_to_state("off") \
        .state("off") \
            .set("LED").to(LOW) \
            .when("BUTTON").has_value(HIGH).go_to_state("on") \
        .get_contents()
    print(app)


if __name__ == '__main__':
    '''
    print("\n\n-------------------------------------------------------")
    print("------------------ VERY SIMPLE ALARM ------------------")
    print("-------------------------------------------------------\n\n")
    very_simple_alarm() #OK
    print("\n\n-------------------------------------------------------")
    print("------------------ DUAL CHECK ALARM -------------------")
    print("-------------------------------------------------------\n\n")
    dual_check_alarm() #OK
    print("\n\n-------------------------------------------------------")
    print("------------------ STATE-BASED ALARM ------------------")
    print("-------------------------------------------------------\n\n")
    state_based_alarm() #OK
    print("\n\n-------------------------------------------------------")
    print("----------------- MULTI-STATE ALARM -------------------")
    print("-------------------------------------------------------\n\n")
    multi_state_alarm() #OK
    '''
    print("\n\n-------------------------------------------------------")
    print("----------- SINGNALING STUFF USING SOUNDS -------------")
    print("-------------------------------------------------------\n\n")
    signaling_stuff_using_sounds()
    print("\n\n-------------------------------------------------------")
    print("------------------- MODE SCENARIO ---------------------")
    print("-------------------------------------------------------\n\n")
    mode_scenario()
