<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:21ea176d-7930-4fac-8791-f11666a08097(ArduinoML.VSimpleAlarm)">
  <persistence version="9" />
  <languages>
    <use id="350aa42e-f9c4-40dd-82b2-052371c06126" name="ArduinoML" version="0" />
  </languages>
  <imports>
    <import index="iatk" ref="r:1818742d-defb-4b21-bb06-546482962a20(ArduinoML.BipAlarm)" />
  </imports>
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
  <node concept="bUo9v" id="1xbF_CajX7j">
    <property role="TrG5h" value="VSimpleAlarm" />
    <ref role="w1Rgg" node="1xbF_CajX7n" resolve="off" />
    <node concept="bUo9p" id="1xbF_CajX7B" role="bUo9s">
      <property role="TrG5h" value="red_led" />
      <property role="bUo9r" value="12" />
    </node>
    <node concept="bUo9p" id="1xbF_CajX7C" role="bUo9s">
      <property role="TrG5h" value="buzzer" />
      <property role="bUo9r" value="11" />
    </node>
    <node concept="bUo9u" id="1xbF_CajX7D" role="bUo9s">
      <property role="TrG5h" value="button" />
      <property role="bUo9r" value="9" />
    </node>
    <node concept="bVy0v" id="1xbF_CajX7n" role="w1Rgt">
      <property role="TrG5h" value="off" />
      <node concept="bVy0E" id="1xbF_CajX7o" role="bVy0F">
        <property role="w1U77" value="true" />
        <ref role="w1VhF" node="1xbF_CajX7r" resolve="on" />
        <ref role="w1USW" node="1xbF_CajX7D" resolve="button" />
      </node>
      <node concept="bVy0l" id="1xbF_CajXgJ" role="bVy0n">
        <property role="w1VO$" value="false" />
        <ref role="w1VAp" node="1xbF_CajX7B" resolve="red_led" />
      </node>
      <node concept="bVy0l" id="1xbF_CajXgN" role="bVy0n">
        <property role="w1VO$" value="false" />
        <ref role="w1VAp" node="1xbF_CajX7C" resolve="buzzer" />
      </node>
    </node>
    <node concept="bVy0v" id="1xbF_CajX7r" role="w1Rgt">
      <property role="TrG5h" value="on" />
      <node concept="bVy0E" id="1xbF_CajX7s" role="bVy0F">
        <property role="w1U77" value="false" />
        <ref role="w1VhF" node="1xbF_CajX7n" resolve="off" />
        <ref role="w1USW" node="1xbF_CajX7D" resolve="button" />
      </node>
      <node concept="bVy0l" id="1xbF_CajXgR" role="bVy0n">
        <ref role="w1VAp" node="1xbF_CajX7B" resolve="red_led" />
      </node>
      <node concept="bVy0l" id="1xbF_CajXgV" role="bVy0n">
        <ref role="w1VAp" node="1xbF_CajX7C" resolve="buzzer" />
      </node>
    </node>
  </node>
</model>

