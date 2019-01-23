<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1818742d-defb-4b21-bb06-546482962a20(ArduinoML.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="350aa42e-f9c4-40dd-82b2-052371c06126" name="ArduinoML" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="350aa42e-f9c4-40dd-82b2-052371c06126" name="ArduinoML">
      <concept id="1974891426869263118" name="ArduinoML.structure.Brick" flags="ng" index="bUo94">
        <property id="1974891426869263121" name="pin" index="bUo9r" />
      </concept>
      <concept id="1974891426869263123" name="ArduinoML.structure.Actuator" flags="ng" index="bUo9p" />
      <concept id="1974891426869263124" name="ArduinoML.structure.Sensor" flags="ng" index="bUo9u" />
      <concept id="1974891426869263125" name="ArduinoML.structure.App" flags="ng" index="bUo9v">
        <reference id="8970791711877485464" name="init_state" index="w1Rgg" />
        <child id="1974891426869263126" name="bricks" index="bUo9s" />
        <child id="8970791711877485461" name="state" index="w1Rgt" />
      </concept>
      <concept id="1974891426869549407" name="ArduinoML.structure.Action" flags="ng" index="bVy0l">
        <property id="8970791711877438124" name="status" index="w1VO$" />
        <reference id="8970791711877438993" name="actuator" index="w1VAp" />
      </concept>
      <concept id="1974891426869549397" name="ArduinoML.structure.State" flags="ng" index="bVy0v">
        <child id="1974891426869549405" name="actions" index="bVy0n" />
        <child id="1974891426869549409" name="transition" index="bVy0F" />
      </concept>
      <concept id="1974891426869549408" name="ArduinoML.structure.Transition" flags="ng" index="bVy0E">
        <property id="8970791711877432911" name="status" index="w1U77" />
        <reference id="8970791711877433780" name="sensor" index="w1USW" />
        <reference id="8970791711877436387" name="target" index="w1VhF" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUo9v" id="1HCekCgwvqZ">
    <property role="TrG5h" value="RedButton" />
    <ref role="w1Rgg" node="7LYDSxsuxyN" resolve="off" />
    <node concept="bVy0v" id="7LYDSxsuxyN" role="w1Rgt">
      <property role="TrG5h" value="off" />
      <node concept="bVy0l" id="7LYDSxsuxFT" role="bVy0n">
        <property role="w1VO$" value="false" />
        <ref role="w1VAp" node="1HCekCgxudZ" resolve="red_led" />
      </node>
      <node concept="bVy0E" id="7LYDSxsuxyO" role="bVy0F">
        <ref role="w1USW" node="1HCekCgxxmY" resolve="button" />
        <ref role="w1VhF" node="7LYDSxsuxXZ" resolve="on" />
      </node>
    </node>
    <node concept="bVy0v" id="7LYDSxsuxXZ" role="w1Rgt">
      <property role="TrG5h" value="on" />
      <node concept="bVy0l" id="7LYDSxsuy78" role="bVy0n">
        <ref role="w1VAp" node="1HCekCgxudZ" resolve="red_led" />
      </node>
      <node concept="bVy0E" id="7LYDSxsuxY0" role="bVy0F">
        <property role="w1U77" value="true" />
        <ref role="w1USW" node="1HCekCgxxmY" resolve="button" />
        <ref role="w1VhF" node="7LYDSxsuxyN" resolve="off" />
      </node>
    </node>
    <node concept="bUo9p" id="1HCekCgxudZ" role="bUo9s">
      <property role="TrG5h" value="red_led" />
      <property role="bUo9r" value="12" />
    </node>
    <node concept="bUo9u" id="1HCekCgxxmY" role="bUo9s">
      <property role="TrG5h" value="button" />
      <property role="bUo9r" value="9" />
    </node>
  </node>
  <node concept="bUo9v" id="2jXx_j4_Cd1">
    <property role="TrG5h" value="VSimpleAlarm" />
    <ref role="w1Rgg" node="7LYDSxsuxyN" resolve="off" />
    <node concept="bUo9p" id="2jXx_j4_D3h" role="bUo9s">
      <property role="TrG5h" value="red_led" />
      <property role="bUo9r" value="12" />
    </node>
    <node concept="bUo9p" id="2jXx_j4_DyY" role="bUo9s">
      <property role="TrG5h" value="buzzer" />
      <property role="bUo9r" value="10" />
    </node>
    <node concept="bUo9u" id="2jXx_j4_DYc" role="bUo9s">
      <property role="TrG5h" value="button" />
      <property role="bUo9r" value="9" />
    </node>
    <node concept="bVy0v" id="2jXx_j4_Cd3" role="w1Rgt">
      <property role="TrG5h" value="off" />
      <node concept="bVy0E" id="2jXx_j4_Cd4" role="bVy0F">
        <property role="w1U77" value="true" />
        <ref role="w1USW" node="1HCekCgxxmY" resolve="button" />
        <ref role="w1VhF" node="7LYDSxsuxXZ" resolve="on" />
      </node>
      <node concept="bVy0l" id="2jXx_j4_Eyp" role="bVy0n">
        <property role="w1VO$" value="false" />
        <ref role="w1VAp" node="2jXx_j4_D3h" resolve="red_led" />
      </node>
      <node concept="bVy0l" id="2jXx_j4_EK1" role="bVy0n">
        <property role="w1VO$" value="false" />
        <ref role="w1VAp" node="2jXx_j4_DyY" resolve="buzzer" />
      </node>
    </node>
    <node concept="bVy0v" id="2jXx_j4_F6E" role="w1Rgt">
      <property role="TrG5h" value="on" />
      <node concept="bVy0E" id="2jXx_j4_F6F" role="bVy0F">
        <property role="w1U77" value="false" />
        <ref role="w1USW" node="1HCekCgxxmY" resolve="button" />
        <ref role="w1VhF" node="2jXx_j4_Cd3" resolve="off" />
      </node>
      <node concept="bVy0l" id="2jXx_j4_FfO" role="bVy0n">
        <ref role="w1VAp" node="2jXx_j4_D3h" resolve="red_led" />
      </node>
      <node concept="bVy0l" id="2jXx_j4_FoV" role="bVy0n">
        <ref role="w1VAp" node="2jXx_j4_DyY" resolve="buzzer" />
      </node>
    </node>
  </node>
  <node concept="bUo9v" id="7$$bovwXjLK">
    <property role="TrG5h" value="DualCheckAlarm" />
    <ref role="w1Rgg" node="7$$bovwXjLM" resolve="off" />
    <node concept="bUo9u" id="7$$bovwXkzz" role="bUo9s">
      <property role="TrG5h" value="button1" />
      <property role="bUo9r" value="9" />
    </node>
    <node concept="bUo9u" id="7$$bovwXl3g" role="bUo9s">
      <property role="TrG5h" value="button2" />
      <property role="bUo9r" value="10" />
    </node>
    <node concept="bUo9p" id="7$$bovwXlBC" role="bUo9s">
      <property role="TrG5h" value="buzzer" />
      <property role="bUo9r" value="12" />
    </node>
    <node concept="bVy0v" id="7$$bovwXjLM" role="w1Rgt">
      <property role="TrG5h" value="off" />
      <node concept="bVy0E" id="7$$bovwXjLN" role="bVy0F">
        <ref role="w1USW" node="7$$bovwXkzz" resolve="button1" />
        <ref role="w1VhF" node="7$$bovwXmys" resolve="b1" />
      </node>
      <node concept="bVy0E" id="7$$bovwXY20" role="bVy0F">
        <ref role="w1USW" node="7$$bovwXl3g" resolve="button2" />
        <ref role="w1VhF" node="7$$bovwXYb5" resolve="b2" />
      </node>
      <node concept="bVy0l" id="7$$bovwXmkR" role="bVy0n">
        <property role="w1VO$" value="false" />
        <ref role="w1VAp" node="7$$bovwXlBC" resolve="buzzer" />
      </node>
    </node>
    <node concept="bVy0v" id="7$$bovwXmys" role="w1Rgt">
      <property role="TrG5h" value="b1" />
      <node concept="bVy0l" id="7$$bovwXYtl" role="bVy0n">
        <property role="w1VO$" value="false" />
        <ref role="w1VAp" node="7$$bovwXlBC" resolve="buzzer" />
      </node>
      <node concept="bVy0E" id="7$$bovwXmyt" role="bVy0F">
        <ref role="w1USW" node="7$$bovwXl3g" resolve="button2" />
        <ref role="w1VhF" node="7$$bovwXYEV" resolve="on" />
      </node>
      <node concept="bVy0E" id="7$$bovwXZfs" role="bVy0F">
        <property role="w1U77" value="false" />
        <ref role="w1USW" node="7$$bovwXkzz" resolve="button1" />
        <ref role="w1VhF" node="7$$bovwXjLM" resolve="off" />
      </node>
    </node>
    <node concept="bVy0v" id="7$$bovwXYb5" role="w1Rgt">
      <property role="TrG5h" value="b2" />
      <node concept="bVy0E" id="7$$bovwXYb6" role="bVy0F">
        <ref role="w1USW" node="7$$bovwXkzz" resolve="button1" />
        <ref role="w1VhF" node="7$$bovwXYEV" resolve="on" />
      </node>
      <node concept="bVy0E" id="7$$bovwXZND" role="bVy0F">
        <property role="w1U77" value="false" />
        <ref role="w1USW" node="7$$bovwXl3g" resolve="button2" />
        <ref role="w1VhF" node="7$$bovwXjLM" resolve="off" />
      </node>
      <node concept="bVy0l" id="7$$bovwXZxz" role="bVy0n">
        <property role="w1VO$" value="false" />
        <ref role="w1VAp" node="7$$bovwXlBC" resolve="buzzer" />
      </node>
    </node>
    <node concept="bVy0v" id="7$$bovwXYEV" role="w1Rgt">
      <property role="TrG5h" value="on" />
      <node concept="bVy0l" id="7$$bovwY0aj" role="bVy0n">
        <ref role="w1VAp" node="7$$bovwXlBC" resolve="buzzer" />
      </node>
      <node concept="bVy0E" id="7$$bovwXYEW" role="bVy0F">
        <property role="w1U77" value="false" />
        <ref role="w1USW" node="7$$bovwXkzz" resolve="button1" />
        <ref role="w1VhF" node="7$$bovwXYb5" resolve="b2" />
      </node>
      <node concept="bVy0E" id="7$$bovwY0sq" role="bVy0F">
        <property role="w1U77" value="false" />
        <ref role="w1USW" node="7$$bovwXl3g" resolve="button2" />
        <ref role="w1VhF" node="7$$bovwXmys" resolve="b1" />
      </node>
    </node>
  </node>
  <node concept="bUo9v" id="7$$bovwY4EZ">
    <property role="TrG5h" value="MultiStateAlarm" />
    <ref role="w1Rgg" node="7$$bovwY4F1" resolve="state0" />
    <node concept="bUo9u" id="7$$bovwY6Rw" role="bUo9s">
      <property role="TrG5h" value="button" />
      <property role="bUo9r" value="9" />
    </node>
    <node concept="bUo9p" id="7$$bovwY7iG" role="bUo9s">
      <property role="TrG5h" value="led" />
      <property role="bUo9r" value="12" />
    </node>
    <node concept="bUo9p" id="7$$bovwY7QW" role="bUo9s">
      <property role="TrG5h" value="buzzer" />
      <property role="bUo9r" value="10" />
    </node>
    <node concept="bVy0v" id="7$$bovwY4F1" role="w1Rgt">
      <property role="TrG5h" value="state0" />
      <node concept="bVy0E" id="7$$bovwY4F2" role="bVy0F">
        <ref role="w1USW" node="7$$bovwY6Rw" resolve="button" />
        <ref role="w1VhF" node="7$$bovwY5Eh" resolve="state1" />
      </node>
      <node concept="bVy0l" id="7$$bovwY8dA" role="bVy0n">
        <property role="w1VO$" value="false" />
        <ref role="w1VAp" node="7$$bovwY7iG" resolve="led" />
      </node>
    </node>
    <node concept="bVy0v" id="7$$bovwY5Eh" role="w1Rgt">
      <property role="TrG5h" value="state1" />
      <node concept="bVy0l" id="7$$bovwY8$f" role="bVy0n">
        <ref role="w1VAp" node="7$$bovwY7QW" resolve="buzzer" />
      </node>
      <node concept="bVy0E" id="7$$bovwY5Ei" role="bVy0F">
        <ref role="w1USW" node="7$$bovwY6Rw" resolve="button" />
        <ref role="w1VhF" node="7$$bovwY5Wr" resolve="state2" />
      </node>
    </node>
    <node concept="bVy0v" id="7$$bovwY5Wr" role="w1Rgt">
      <property role="TrG5h" value="state2" />
      <node concept="bVy0l" id="7$$bovwY8Qo" role="bVy0n">
        <ref role="w1VAp" node="7$$bovwY7iG" resolve="led" />
      </node>
      <node concept="bVy0l" id="7$$bovwY8Zw" role="bVy0n">
        <property role="w1VO$" value="false" />
        <ref role="w1VAp" node="2jXx_j4_DyY" resolve="buzzer" />
      </node>
      <node concept="bVy0E" id="7$$bovwY5Ws" role="bVy0F">
        <property role="w1U77" value="true" />
        <ref role="w1USW" node="7$$bovwY6Rw" resolve="button" />
        <ref role="w1VhF" node="7$$bovwY4F1" resolve="state0" />
      </node>
    </node>
  </node>
</model>

