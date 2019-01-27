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

    app = AppBuilder("Switch!") \
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

    app = AppBuilder("Switch!") \
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

    app = AppBuilder("Switch!") \
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

    app = AppBuilder("Switch!") \
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
        .actuator("LED").on_pin(12) \
        .actuator("BUZZER").on_pin(11) \
        .state("init") \
            .set("BUZZER").to_emit_sound_for_ms(100).repeat(3) \
            .set("LED").to(LOW) \
            .set("BUZZER").to(LOW) \
            .when("BUTTON").has_value(HIGH).go_to_state("buzzer_on") \
        .state("buzzer_on") \
            .set("LED").to(LOW) \
            .set("BUZZER").to(HIGH) \
            .when("BUTTON").has_value(HIGH).go_to_state("led_on") \
        .state("led_on") \
            .set("BUZZER").to_emit_sound_for_ms(300).repeat(1) \
            .set("LED").to(HIGH) \
            .set("BUZZER").to(LOW) \
            .when("BUTTON").has_value(HIGH).go_to_state("init") \
        .get_contents()
    print(app)


if __name__ == '__main__':
    #very_simple_alarm() #OK
    #dual_check_alarm() #OK
    #state_based_alarm() #OK
    #multi_state_alarm() #OK
    signaling_stuff_using_sounds()

