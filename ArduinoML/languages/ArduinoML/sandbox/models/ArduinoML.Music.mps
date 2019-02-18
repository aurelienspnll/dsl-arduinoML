<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:34d58826-2c05-4fca-ba59-e335321b1e18(ArduinoML.Music)">
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
        <child id="8729152039369307631" name="notes" index="2pRXxC" />
      </concept>
      <concept id="1974891426869549408" name="ArduinoML.structure.Transition" flags="ng" index="bVy0E">
        <reference id="8970791711877433780" name="sensor" index="w1USW" />
        <reference id="8970791711877436387" name="target" index="w1VhF" />
      </concept>
      <concept id="8729152039369135152" name="ArduinoML.structure.Sound" flags="ng" index="2pRnAR">
        <property id="7708629739708633049" name="repeat" index="2mCG8Y" />
        <property id="8729152039369135153" name="note" index="2pRnAQ" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUo9v" id="4X8tYX31lll">
    <property role="TrG5h" value="music" />
    <ref role="w1Rgg" node="4X8tYX31lln" resolve="off" />
    <node concept="bUo9p" id="4X8tYX31wcC" role="bUo9s">
      <property role="TrG5h" value="buzzer" />
      <property role="bUo9r" value="12" />
    </node>
    <node concept="bUo9u" id="4X8tYX31wcD" role="bUo9s">
      <property role="TrG5h" value="button" />
      <property role="bUo9r" value="9" />
    </node>
    <node concept="bUo9u" id="6FUzuvWl$R4" role="bUo9s">
      <property role="TrG5h" value="button2" />
      <property role="bUo9r" value="10" />
    </node>
    <node concept="bVy0v" id="4X8tYX31lln" role="w1Rgt">
      <property role="TrG5h" value="off" />
      <node concept="bVy0E" id="4X8tYX31llo" role="bVy0F">
        <ref role="w1VhF" node="4X8tYX31wdR" resolve="melodyA1" />
        <ref role="w1USW" node="4X8tYX31wcD" resolve="button" />
      </node>
      <node concept="bVy0E" id="6FUzuvWl_1t" role="bVy0F">
        <ref role="w1VhF" node="6FUzuvWl_0h" resolve="melodyB1" />
        <ref role="w1USW" node="6FUzuvWl$R4" resolve="button2" />
      </node>
    </node>
    <node concept="bVy0v" id="4X8tYX31wdR" role="w1Rgt">
      <property role="TrG5h" value="melodyA1" />
      <node concept="2pRnAR" id="4X8tYX31wdZ" role="2pRXxC">
        <property role="2mCG8Y" value="3" />
        <ref role="w1VAp" node="4X8tYX31wcC" resolve="buzzer" />
      </node>
      <node concept="2pRnAR" id="4X8tYX31we5" role="2pRXxC">
        <property role="2pRnAQ" value="3400" />
        <property role="2mCG8Y" value="3" />
        <ref role="w1VAp" node="4X8tYX31wcC" resolve="buzzer" />
      </node>
      <node concept="bVy0E" id="4X8tYX31wdS" role="bVy0F">
        <ref role="w1USW" node="4X8tYX31wcD" resolve="button" />
        <ref role="w1VhF" node="6FUzuvWl_0A" resolve="melodyA2" />
      </node>
      <node concept="bVy0E" id="6FUzuvWl_1w" role="bVy0F">
        <ref role="w1USW" node="6FUzuvWl$R4" resolve="button2" />
        <ref role="w1VhF" node="6FUzuvWl_0O" resolve="melodyB2" />
      </node>
    </node>
    <node concept="bVy0v" id="6FUzuvWl_0h" role="w1Rgt">
      <property role="TrG5h" value="melodyB1" />
      <node concept="bVy0E" id="6FUzuvWl_0i" role="bVy0F">
        <ref role="w1VhF" node="6FUzuvWl_0A" resolve="melodyA2" />
        <ref role="w1USW" node="4X8tYX31wcD" resolve="button" />
      </node>
      <node concept="bVy0E" id="6FUzuvWl_1z" role="bVy0F">
        <ref role="w1USW" node="6FUzuvWl$R4" resolve="button2" />
        <ref role="w1VhF" node="6FUzuvWl_0O" resolve="melodyB2" />
      </node>
      <node concept="2pRnAR" id="6FUzuvWl_0t" role="2pRXxC">
        <property role="2pRnAQ" value="2272" />
        <property role="2mCG8Y" value="3" />
        <ref role="w1VAp" node="4X8tYX31wcC" resolve="buzzer" />
      </node>
      <node concept="2pRnAR" id="6FUzuvWl_0y" role="2pRXxC">
        <property role="2pRnAQ" value="2028" />
        <property role="2mCG8Y" value="3" />
        <ref role="w1VAp" node="4X8tYX31wcC" resolve="buzzer" />
      </node>
    </node>
    <node concept="bVy0v" id="6FUzuvWl_0A" role="w1Rgt">
      <property role="TrG5h" value="melodyA2" />
      <node concept="bVy0E" id="6FUzuvWl_0B" role="bVy0F">
        <ref role="w1USW" node="4X8tYX31wcD" resolve="button" />
        <ref role="w1VhF" node="4X8tYX31lln" resolve="off" />
      </node>
      <node concept="bVy0E" id="6FUzuvWl_1D" role="bVy0F">
        <ref role="w1USW" node="6FUzuvWl$R4" resolve="button2" />
        <ref role="w1VhF" node="4X8tYX31lln" resolve="off" />
      </node>
      <node concept="2pRnAR" id="6FUzuvWl_14" role="2pRXxC">
        <property role="2pRnAQ" value="3038" />
        <property role="2mCG8Y" value="3" />
        <ref role="w1VAp" node="4X8tYX31wcC" resolve="buzzer" />
      </node>
      <node concept="2pRnAR" id="6FUzuvWl_1d" role="2pRXxC">
        <property role="2pRnAQ" value="2864" />
        <property role="2mCG8Y" value="3" />
        <ref role="w1VAp" node="4X8tYX31wcC" resolve="buzzer" />
      </node>
    </node>
    <node concept="bVy0v" id="6FUzuvWl_0O" role="w1Rgt">
      <property role="TrG5h" value="melodyB2" />
      <node concept="2pRnAR" id="6FUzuvWl_1j" role="2pRXxC">
        <property role="2pRnAQ" value="2550" />
        <property role="2mCG8Y" value="3" />
        <ref role="w1VAp" node="4X8tYX31wcC" resolve="buzzer" />
      </node>
      <node concept="2pRnAR" id="6FUzuvWl_1p" role="2pRXxC">
        <property role="2pRnAQ" value="1912" />
        <property role="2mCG8Y" value="3" />
        <ref role="w1VAp" node="4X8tYX31wcC" resolve="buzzer" />
      </node>
      <node concept="bVy0E" id="6FUzuvWl_1H" role="bVy0F">
        <ref role="w1VhF" node="4X8tYX31lln" resolve="off" />
        <ref role="w1USW" node="4X8tYX31wcD" resolve="button" />
      </node>
      <node concept="bVy0E" id="6FUzuvWl_1K" role="bVy0F">
        <ref role="w1VhF" node="4X8tYX31lln" resolve="off" />
        <ref role="w1USW" node="6FUzuvWl$R4" resolve="button2" />
      </node>
    </node>
  </node>
</model>

