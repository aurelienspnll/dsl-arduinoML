<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4854ca2b-a3e0-45dd-8ae9-4f6abda320c6(ArduinoML.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="7" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="4fqr" ref="r:fa713d69-08ea-4732-b1f2-cb07f9e103ef(jetbrains.mps.execution.util.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ig" index="M4N5e">
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="1HCekCgwrGe">
    <property role="EcuMT" value="1974891426869263118" />
    <property role="TrG5h" value="Brick" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1HCekCgwrGf" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="1HCekCgwrGh" role="1TKVEl">
      <property role="IQ2nx" value="1974891426869263121" />
      <property role="TrG5h" value="pin" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="1HCekCgwrGj">
    <property role="EcuMT" value="1974891426869263123" />
    <property role="TrG5h" value="Actuator" />
    <ref role="1TJDcQ" node="1HCekCgwrGe" resolve="Brick" />
  </node>
  <node concept="1TIwiD" id="1HCekCgwrGk">
    <property role="EcuMT" value="1974891426869263124" />
    <property role="TrG5h" value="Sensor" />
    <ref role="1TJDcQ" node="1HCekCgwrGe" resolve="Brick" />
  </node>
  <node concept="1TIwiD" id="1HCekCgwrGl">
    <property role="EcuMT" value="1974891426869263125" />
    <property role="TrG5h" value="App" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1HCekCgwrGm" role="1TKVEi">
      <property role="IQ2ns" value="1974891426869263126" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="bricks" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="1HCekCgwrGe" resolve="Brick" />
    </node>
    <node concept="1TJgyj" id="7LYDSxsutel" role="1TKVEi">
      <property role="IQ2ns" value="8970791711877485461" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="state" />
      <property role="20lbJX" value="1..n" />
      <ref role="20lvS9" node="1HCekCgxx_l" resolve="State" />
    </node>
    <node concept="PrWs8" id="1HCekCgwDGL" role="PzmwI">
      <ref role="PrY4T" to="4fqr:431DWIovi3l" resolve="IMainClass" />
    </node>
    <node concept="PrWs8" id="7LYDSxsuCle" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="7LYDSxsuteo" role="1TKVEi">
      <property role="IQ2ns" value="8970791711877485464" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="init_state" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1HCekCgxx_l" resolve="State" />
    </node>
  </node>
  <node concept="1TIwiD" id="1HCekCgxx_l">
    <property role="EcuMT" value="1974891426869549397" />
    <property role="TrG5h" value="State" />
    <node concept="PrWs8" id="1HCekCgxx_m" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="1HCekCgxx_t" role="1TKVEi">
      <property role="IQ2ns" value="1974891426869549405" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="actions" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="1HCekCgxx_v" resolve="Action" />
    </node>
    <node concept="1TJgyj" id="1HCekCgxx_x" role="1TKVEi">
      <property role="IQ2ns" value="1974891426869549409" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="transition" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1HCekCgxx_w" resolve="Transition" />
    </node>
  </node>
  <node concept="AxPO7" id="1HCekCgxx_o">
    <property role="TrG5h" value="STATUS" />
    <ref role="M4eZT" to="tpck:fKAQMTB" resolve="boolean" />
    <node concept="M4N5e" id="1HCekCgxx_p" role="M5hS2">
      <property role="1uS6qv" value="true" />
      <property role="1uS6qo" value="high" />
    </node>
    <node concept="M4N5e" id="1HCekCgxx_q" role="M5hS2">
      <property role="1uS6qo" value="low" />
      <property role="1uS6qv" value="false" />
    </node>
  </node>
  <node concept="1TIwiD" id="1HCekCgxx_v">
    <property role="EcuMT" value="1974891426869549407" />
    <property role="TrG5h" value="Action" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7LYDSxsuhSh" role="1TKVEi">
      <property role="IQ2ns" value="8970791711877438993" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="actuator" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1HCekCgwrGj" resolve="Actuator" />
    </node>
    <node concept="1TJgyi" id="7LYDSxsuhEG" role="1TKVEl">
      <property role="IQ2nx" value="8970791711877438124" />
      <property role="TrG5h" value="status" />
      <ref role="AX2Wp" node="1HCekCgxx_o" resolve="STATUS" />
    </node>
  </node>
  <node concept="1TIwiD" id="1HCekCgxx_w">
    <property role="EcuMT" value="1974891426869549408" />
    <property role="TrG5h" value="Transition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7LYDSxsugAO" role="1TKVEi">
      <property role="IQ2ns" value="8970791711877433780" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="sensor" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1HCekCgwrGk" resolve="Sensor" />
    </node>
    <node concept="1TJgyj" id="7LYDSxsuhfz" role="1TKVEi">
      <property role="IQ2ns" value="8970791711877436387" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1HCekCgxx_l" resolve="State" />
    </node>
    <node concept="1TJgyi" id="7LYDSxsugpf" role="1TKVEl">
      <property role="IQ2nx" value="8970791711877432911" />
      <property role="TrG5h" value="status" />
      <ref role="AX2Wp" node="1HCekCgxx_o" resolve="STATUS" />
    </node>
  </node>
</model>

