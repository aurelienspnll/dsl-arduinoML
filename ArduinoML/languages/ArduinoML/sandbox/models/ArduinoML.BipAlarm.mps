<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1818742d-defb-4b21-bb06-546482962a20(ArduinoML.BipAlarm)">
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
        <reference id="8970791711877438993" name="actuator" index="w1VAp" />
      </concept>
      <concept id="1974891426869549397" name="ArduinoML.structure.State" flags="ng" index="bVy0v">
        <child id="1974891426869549409" name="transition" index="bVy0F" />
        <child id="7708629739708815685" name="bips" index="2mCpiy" />
      </concept>
      <concept id="1974891426869549408" name="ArduinoML.structure.Transition" flags="ng" index="bVy0E">
        <reference id="8970791711877433780" name="sensor" index="w1USW" />
        <reference id="8970791711877436387" name="target" index="w1VhF" />
      </concept>
      <concept id="7708629739708785884" name="ArduinoML.structure.ActionSound" flags="ng" index="2mC2$V">
        <property id="7708629739708785887" name="repeat" index="2mC2$S" />
        <property id="7708629739708785885" name="lenght" index="2mC2$U" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUo9v" id="3byYB8EkTKm">
    <property role="TrG5h" value="BipAlarm" />
    <ref role="w1Rgg" node="3byYB8EkTKo" resolve="off" />
    <node concept="bUo9p" id="3byYB8EkTKE" role="bUo9s">
      <property role="TrG5h" value="buzzer" />
      <property role="bUo9r" value="11" />
    </node>
    <node concept="bUo9u" id="3byYB8EkTKF" role="bUo9s">
      <property role="TrG5h" value="button" />
      <property role="bUo9r" value="9" />
    </node>
    <node concept="bVy0v" id="3byYB8EkTKo" role="w1Rgt">
      <property role="TrG5h" value="off" />
      <node concept="bVy0E" id="3byYB8EkTKp" role="bVy0F">
        <ref role="w1VhF" node="3byYB8EkTKq" resolve="step1" />
        <ref role="w1USW" node="3byYB8EkTKF" resolve="button" />
      </node>
    </node>
    <node concept="bVy0v" id="3byYB8EkTKq" role="w1Rgt">
      <property role="TrG5h" value="step1" />
      <node concept="2mC2$V" id="3byYB8EkTKI" role="2mCpiy">
        <property role="2mC2$U" value="100" />
        <property role="2mC2$S" value="3" />
        <ref role="w1VAp" node="3byYB8EkTKE" resolve="buzzer" />
      </node>
      <node concept="bVy0E" id="3byYB8EkTKr" role="bVy0F">
        <ref role="w1VhF" node="3byYB8EkTKw" resolve="step2" />
        <ref role="w1USW" node="3byYB8EkTKF" resolve="button" />
      </node>
    </node>
    <node concept="bVy0v" id="3byYB8EkTKw" role="w1Rgt">
      <property role="TrG5h" value="step2" />
      <node concept="2mC2$V" id="3byYB8EkTKN" role="2mCpiy">
        <property role="2mC2$U" value="1000" />
        <property role="2mC2$S" value="1" />
        <ref role="w1VAp" node="3byYB8EkTKE" resolve="buzzer" />
      </node>
      <node concept="bVy0E" id="3byYB8EkTKx" role="bVy0F">
        <ref role="w1VhF" node="3byYB8EkTKo" resolve="off" />
        <ref role="w1USW" node="3byYB8EkTKF" resolve="button" />
      </node>
    </node>
  </node>
</model>

