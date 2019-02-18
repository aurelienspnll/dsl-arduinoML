<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:559e2d69-64e5-4d63-9f63-d779276e5453(main@generator)">
  <persistence version="9" />
  <languages>
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="cmsa" ref="r:4854ca2b-a3e0-45dd-8ae9-4f6abda320c6(ArduinoML.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="1HCekCgwrG6">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="1HCekCgwDHH" role="3lj3bC">
      <ref role="30HIoZ" to="cmsa:1HCekCgwrGl" resolve="App" />
      <ref role="3lhOvi" node="1HCekCgwDHL" resolve="map_App" />
    </node>
    <node concept="3aamgX" id="1HCekCgwKmz" role="3acgRq">
      <ref role="30HIoZ" to="cmsa:1HCekCgwrGk" resolve="Sensor" />
      <node concept="j$656" id="1HCekCgwKmD" role="1lVwrX">
        <ref role="v9R2y" node="1HCekCgwKmB" resolve="reduce_Sensor" />
      </node>
    </node>
    <node concept="3aamgX" id="1HCekCgwKmG" role="3acgRq">
      <ref role="30HIoZ" to="cmsa:1HCekCgwrGj" resolve="Actuator" />
      <node concept="j$656" id="1HCekCgwKmO" role="1lVwrX">
        <ref role="v9R2y" node="1HCekCgwKmM" resolve="reduce_Actuator" />
      </node>
    </node>
    <node concept="3aamgX" id="6sfqbyq7dZW" role="3acgRq">
      <ref role="30HIoZ" to="cmsa:1HCekCgxx_v" resolve="Action" />
      <node concept="j$656" id="6sfqbyq7dZX" role="1lVwrX">
        <ref role="v9R2y" node="6sfqbyq7dZU" resolve="reduce_Action" />
      </node>
    </node>
    <node concept="3aamgX" id="6sfqbyq7C80" role="3acgRq">
      <ref role="30HIoZ" to="cmsa:1HCekCgxx_w" resolve="Transition" />
      <node concept="j$656" id="6sfqbyq7C81" role="1lVwrX">
        <ref role="v9R2y" node="6sfqbyq7C7Y" resolve="reduce_Transition" />
      </node>
    </node>
    <node concept="3aamgX" id="6sfqbyq8wLf" role="3acgRq">
      <ref role="30HIoZ" to="cmsa:1HCekCgxx_l" resolve="State" />
      <node concept="j$656" id="6sfqbyq8wLg" role="1lVwrX">
        <ref role="v9R2y" node="6sfqbyq8wLd" resolve="reduce_State" />
      </node>
    </node>
    <node concept="3aamgX" id="7$$bovwYlij" role="3acgRq">
      <ref role="30HIoZ" to="cmsa:7$$bovwYlgK" resolve="Sound" />
      <node concept="j$656" id="7$$bovwYlik" role="1lVwrX">
        <ref role="v9R2y" node="7$$bovwYlih" resolve="reduce_Sound" />
      </node>
    </node>
    <node concept="3aamgX" id="6FUzuvWmFi8" role="3acgRq">
      <ref role="30HIoZ" to="cmsa:6FUzuvWmEjs" resolve="Bips" />
      <node concept="j$656" id="6FUzuvWmFi9" role="1lVwrX">
        <ref role="v9R2y" node="6FUzuvWmFi6" resolve="reduce_Bips" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1HCekCgwDHL">
    <property role="TrG5h" value="map_App" />
    <node concept="2YIFZL" id="1HCekCgwDJ5" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="3clFbS" id="1HCekCgwDJ8" role="3clF47">
        <node concept="3clFbF" id="1HCekCgwE5l" role="3cqZAp">
          <node concept="2OqwBi" id="1HCekCgwErW" role="3clFbG">
            <node concept="10M0yZ" id="1HCekCgwE5A" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="1HCekCgwFgv" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="1HCekCgwFhh" role="37wK5m">
                <property role="Xl_RC" value="//Code generated by ArduinoML" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HCekCgwG6G" role="3cqZAp">
          <node concept="2OqwBi" id="1HCekCgwG6H" role="3clFbG">
            <node concept="10M0yZ" id="1HCekCgwG6I" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="1HCekCgwG6J" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="1HCekCgwG6K" role="37wK5m">
                <property role="Xl_RC" value="void setup(){" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HCekCgwGiB" role="3cqZAp">
          <node concept="2OqwBi" id="1HCekCgwGiC" role="3clFbG">
            <node concept="10M0yZ" id="1HCekCgwGiD" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1HCekCgwGiE" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="1HCekCgwGiF" role="37wK5m">
                <property role="Xl_RC" value="    //Here comes bricks declaration" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="1HCekCgx3Cc" role="lGtFl">
            <node concept="3JmXsc" id="1HCekCgx3Cf" role="2P8S$">
              <node concept="3clFbS" id="1HCekCgx3Cg" role="2VODD2">
                <node concept="3clFbF" id="1HCekCgx3Cm" role="3cqZAp">
                  <node concept="2OqwBi" id="1HCekCgx3Ch" role="3clFbG">
                    <node concept="3Tsc0h" id="1HCekCgx3Ck" role="2OqNvi">
                      <ref role="3TtcxE" to="cmsa:1HCekCgwrGm" resolve="bricks" />
                    </node>
                    <node concept="30H73N" id="1HCekCgx3Cl" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HCekCgwGpd" role="3cqZAp">
          <node concept="2OqwBi" id="1HCekCgwGpe" role="3clFbG">
            <node concept="10M0yZ" id="1HCekCgwGpf" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1HCekCgwGpg" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="1HCekCgwGph" role="37wK5m">
                <property role="Xl_RC" value="}" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sfqbyq6hmE" role="3cqZAp">
          <node concept="2OqwBi" id="6sfqbyq6kti" role="3clFbG">
            <node concept="10M0yZ" id="6sfqbyq6hWd" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6sfqbyq6kLX" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="6sfqbyq6l9l" role="37wK5m">
                <property role="Xl_RC" value="\n// Behavioral concepts" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sfqbyq6p95" role="3cqZAp">
          <node concept="2OqwBi" id="6sfqbyq6qhm" role="3clFbG">
            <node concept="10M0yZ" id="6sfqbyq6pJp" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6sfqbyq6qVK" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="6sfqbyq6rjz" role="37wK5m">
                <property role="Xl_RC" value="long time = 0; long debounce = 200;\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6sfqbyq6umj" role="3cqZAp" />
        <node concept="3clFbF" id="6sfqbyq6vD2" role="3cqZAp">
          <node concept="2OqwBi" id="6sfqbyq6wIo" role="3clFbG">
            <node concept="10M0yZ" id="6sfqbyq6wgc" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6sfqbyq6xu3" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="6sfqbyq6xZj" role="37wK5m">
                <property role="Xl_RC" value="    // Here comes states declaration" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="6sfqbyq9s5V" role="lGtFl">
            <node concept="3JmXsc" id="6sfqbyq9s5W" role="2P8S$">
              <node concept="3clFbS" id="6sfqbyq9s5X" role="2VODD2">
                <node concept="3clFbF" id="6sfqbyq9sYV" role="3cqZAp">
                  <node concept="2OqwBi" id="6sfqbyq9tbR" role="3clFbG">
                    <node concept="30H73N" id="6sfqbyq9sYU" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6sfqbyq9tPe" role="2OqNvi">
                      <ref role="3TtcxE" to="cmsa:7LYDSxsutel" resolve="state" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6sfqbyq6$Kh" role="3cqZAp" />
        <node concept="3clFbF" id="6sfqbyq6A9d" role="3cqZAp">
          <node concept="2OqwBi" id="6sfqbyq6BkE" role="3clFbG">
            <node concept="10M0yZ" id="6sfqbyq6ALd" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6sfqbyq6C0$" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6sfqbyq6Hhh" role="37wK5m">
                <node concept="Xl_RD" id="6sfqbyq6H$A" role="3uHU7w">
                  <property role="Xl_RC" value="(); } // Entering init state\n" />
                </node>
                <node concept="3cpWs3" id="6sfqbyq6Fo0" role="3uHU7B">
                  <node concept="Xl_RD" id="6sfqbyq6Cc9" role="3uHU7B">
                    <property role="Xl_RC" value="\nvoid loop() { state_" />
                  </node>
                  <node concept="Xl_RD" id="6sfqbyq6Fuf" role="3uHU7w">
                    <property role="Xl_RC" value="init_state" />
                    <node concept="17Uvod" id="6sfqbyq7agM" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="6sfqbyq7agN" role="3zH0cK">
                        <node concept="3clFbS" id="6sfqbyq7agO" role="2VODD2">
                          <node concept="3clFbF" id="6sfqbyq7aJu" role="3cqZAp">
                            <node concept="2OqwBi" id="6sfqbyq7czL" role="3clFbG">
                              <node concept="2OqwBi" id="6sfqbyq7aY8" role="2Oq$k0">
                                <node concept="30H73N" id="6sfqbyq7aJt" role="2Oq$k0" />
                                <node concept="3TrEf2" id="6sfqbyq7bT2" role="2OqNvi">
                                  <ref role="3Tt5mk" to="cmsa:7LYDSxsuteo" resolve="init_state" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="6sfqbyq7dsn" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HCekCgwGoU" role="3cqZAp" />
        <node concept="3clFbH" id="1HCekCgwGdw" role="3cqZAp" />
        <node concept="3clFbH" id="1HCekCgwG2p" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="1HCekCgwDIP" role="1B3o_S" />
      <node concept="3cqZAl" id="1HCekCgwDJq" role="3clF45" />
      <node concept="37vLTG" id="1HCekCgwDLa" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="1HCekCgwDMr" role="1tU5fm">
          <node concept="3uibUv" id="1HCekCgwDL9" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1HCekCgwDHM" role="1B3o_S" />
    <node concept="n94m4" id="1HCekCgwDHN" role="lGtFl">
      <ref role="n9lRv" to="cmsa:1HCekCgwrGl" resolve="App" />
    </node>
  </node>
  <node concept="13MO4I" id="1HCekCgwKmB">
    <property role="TrG5h" value="reduce_Sensor" />
    <ref role="3gUMe" to="cmsa:1HCekCgwrGk" resolve="Sensor" />
    <node concept="9aQIb" id="1HCekCgwKmR" role="13RCb5">
      <node concept="3clFbS" id="1HCekCgwKmS" role="9aQI4">
        <node concept="raruj" id="1HCekCgwV2d" role="lGtFl" />
        <node concept="3clFbF" id="1HCekCgwV2g" role="3cqZAp">
          <node concept="2OqwBi" id="1HCekCgwVo_" role="3clFbG">
            <node concept="10M0yZ" id="1HCekCgwV2p" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="1HCekCgwWcQ" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="1HCekCgwXNs" role="37wK5m">
                <node concept="Xl_RD" id="1HCekCgwXNv" role="3uHU7w">
                  <property role="Xl_RC" value=", INPUT);" />
                </node>
                <node concept="3cpWs3" id="1HCekCgwWNa" role="3uHU7B">
                  <node concept="Xl_RD" id="1HCekCgwWd6" role="3uHU7B">
                    <property role="Xl_RC" value="    pinMode(" />
                  </node>
                  <node concept="3cmrfG" id="1HCekCgwWNd" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="1HCekCgxjqY" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <node concept="3zFVjK" id="1HCekCgxjr1" role="3zH0cK">
                        <node concept="3clFbS" id="1HCekCgxjr2" role="2VODD2">
                          <node concept="3clFbF" id="1HCekCgxjr8" role="3cqZAp">
                            <node concept="2OqwBi" id="1HCekCgxjr3" role="3clFbG">
                              <node concept="3TrcHB" id="1HCekCgxjr6" role="2OqNvi">
                                <ref role="3TsBF5" to="cmsa:1HCekCgwrGh" resolve="pin" />
                              </node>
                              <node concept="30H73N" id="1HCekCgxjr7" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="1HCekCgwKmM">
    <property role="TrG5h" value="reduce_Actuator" />
    <ref role="3gUMe" to="cmsa:1HCekCgwrGj" resolve="Actuator" />
    <node concept="9aQIb" id="1HCekCgwZUZ" role="13RCb5">
      <node concept="3clFbS" id="1HCekCgwZV0" role="9aQI4">
        <node concept="raruj" id="1HCekCgwZV1" role="lGtFl" />
        <node concept="3clFbF" id="1HCekCgwZV2" role="3cqZAp">
          <node concept="2OqwBi" id="1HCekCgwZV3" role="3clFbG">
            <node concept="10M0yZ" id="1HCekCgwZV4" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="1HCekCgwZV5" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="1HCekCgwZV6" role="37wK5m">
                <node concept="Xl_RD" id="1HCekCgwZV7" role="3uHU7w">
                  <property role="Xl_RC" value=", OUTPUT);" />
                </node>
                <node concept="3cpWs3" id="1HCekCgwZV8" role="3uHU7B">
                  <node concept="Xl_RD" id="1HCekCgwZV9" role="3uHU7B">
                    <property role="Xl_RC" value="    pinMode(" />
                  </node>
                  <node concept="3cmrfG" id="1HCekCgwZVa" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="1HCekCgwZVb" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <node concept="3zFVjK" id="1HCekCgwZVc" role="3zH0cK">
                        <node concept="3clFbS" id="1HCekCgwZVd" role="2VODD2">
                          <node concept="3clFbF" id="1HCekCgwZVe" role="3cqZAp">
                            <node concept="2OqwBi" id="1HCekCgwZVf" role="3clFbG">
                              <node concept="3TrcHB" id="1HCekCgwZVg" role="2OqNvi">
                                <ref role="3TsBF5" to="cmsa:1HCekCgwrGh" resolve="pin" />
                              </node>
                              <node concept="30H73N" id="1HCekCgwZVh" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="6sfqbyq7dZU">
    <property role="TrG5h" value="reduce_Action" />
    <ref role="3gUMe" to="cmsa:1HCekCgxx_v" resolve="Action" />
    <node concept="9aQIb" id="6sfqbyq7hWm" role="13RCb5">
      <node concept="3clFbS" id="6sfqbyq7hWn" role="9aQI4">
        <node concept="raruj" id="6sfqbyq7i2v" role="lGtFl" />
        <node concept="3clFbF" id="6sfqbyq7i73" role="3cqZAp">
          <node concept="2OqwBi" id="6sfqbyq7iAs" role="3clFbG">
            <node concept="10M0yZ" id="6sfqbyq7ibH" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6sfqbyq7jiz" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6sfqbyq7sCy" role="37wK5m">
                <node concept="Xl_RD" id="6sfqbyq7t0G" role="3uHU7w">
                  <property role="Xl_RC" value=");" />
                </node>
                <node concept="3cpWs3" id="6sfqbyq7pMa" role="3uHU7B">
                  <node concept="3cpWs3" id="6sfqbyq7oAD" role="3uHU7B">
                    <node concept="3cpWs3" id="6sfqbyq7nD8" role="3uHU7B">
                      <node concept="Xl_RD" id="6sfqbyq7j$y" role="3uHU7B">
                        <property role="Xl_RC" value="   digitalWrite(" />
                      </node>
                      <node concept="3cmrfG" id="6sfqbyq7nIZ" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                        <node concept="17Uvod" id="6sfqbyq7uhq" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                          <node concept="3zFVjK" id="6sfqbyq7uhr" role="3zH0cK">
                            <node concept="3clFbS" id="6sfqbyq7uhs" role="2VODD2">
                              <node concept="3clFbF" id="6sfqbyq7viO" role="3cqZAp">
                                <node concept="2OqwBi" id="6sfqbyq7wUF" role="3clFbG">
                                  <node concept="2OqwBi" id="6sfqbyq7v$l" role="2Oq$k0">
                                    <node concept="30H73N" id="6sfqbyq7viN" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="6sfqbyq7wsk" role="2OqNvi">
                                      <ref role="3Tt5mk" to="cmsa:7LYDSxsuhSh" resolve="actuator" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="6sfqbyq7y3g" role="2OqNvi">
                                    <ref role="3TsBF5" to="cmsa:1HCekCgwrGh" resolve="pin" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="6sfqbyq7oY7" role="3uHU7w">
                      <property role="Xl_RC" value=", " />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6sfqbyq7q9Y" role="3uHU7w">
                    <property role="Xl_RC" value="SIGNAL" />
                    <node concept="17Uvod" id="6sfqbyq7yRU" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="6sfqbyq7yRV" role="3zH0cK">
                        <node concept="3clFbS" id="6sfqbyq7yRW" role="2VODD2">
                          <node concept="3clFbF" id="6sfqbyq7zKV" role="3cqZAp">
                            <node concept="3K4zz7" id="6sfqbyq7Ak3" role="3clFbG">
                              <node concept="Xl_RD" id="6sfqbyq7Azp" role="3K4E3e">
                                <property role="Xl_RC" value="HIGH" />
                              </node>
                              <node concept="Xl_RD" id="6sfqbyq7BgJ" role="3K4GZi">
                                <property role="Xl_RC" value="LOW" />
                              </node>
                              <node concept="2OqwBi" id="6sfqbyq7zY1" role="3K4Cdx">
                                <node concept="30H73N" id="6sfqbyq7zKU" role="2Oq$k0" />
                                <node concept="3TrcHB" id="6sfqbyq7$L_" role="2OqNvi">
                                  <ref role="3TsBF5" to="cmsa:7LYDSxsuhEG" resolve="status" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="6sfqbyq7C7Y">
    <property role="TrG5h" value="reduce_Transition" />
    <ref role="3gUMe" to="cmsa:1HCekCgxx_w" resolve="Transition" />
    <node concept="9aQIb" id="6sfqbyq7CEa" role="13RCb5">
      <node concept="3clFbS" id="6sfqbyq7CEb" role="9aQI4">
        <node concept="3clFbF" id="6sfqbyq7CX7" role="3cqZAp">
          <node concept="2OqwBi" id="6sfqbyq7Dsw" role="3clFbG">
            <node concept="10M0yZ" id="6sfqbyq7D1L" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6sfqbyq7DZ_" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6sfqbyq7OyF" role="37wK5m">
                <node concept="Xl_RD" id="6sfqbyq7OUP" role="3uHU7w">
                  <property role="Xl_RC" value=" &amp;&amp; guard ) {" />
                </node>
                <node concept="3cpWs3" id="6sfqbyq7ME4" role="3uHU7B">
                  <node concept="3cpWs3" id="6sfqbyq7K6y" role="3uHU7B">
                    <node concept="3cpWs3" id="6sfqbyq7IgC" role="3uHU7B">
                      <node concept="Xl_RD" id="6sfqbyq7Edy" role="3uHU7B">
                        <property role="Xl_RC" value="   if (digitalRead(" />
                      </node>
                      <node concept="3cmrfG" id="6sfqbyq7Ir0" role="3uHU7w">
                        <property role="3cmrfH" value="0" />
                        <node concept="17Uvod" id="6sfqbyq8al9" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                          <node concept="3zFVjK" id="6sfqbyq8ala" role="3zH0cK">
                            <node concept="3clFbS" id="6sfqbyq8alb" role="2VODD2">
                              <node concept="3clFbF" id="6sfqbyq8b1y" role="3cqZAp">
                                <node concept="2OqwBi" id="6sfqbyq8cIz" role="3clFbG">
                                  <node concept="2OqwBi" id="6sfqbyq8bj3" role="2Oq$k0">
                                    <node concept="30H73N" id="6sfqbyq8b1x" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="6sfqbyq8bZd" role="2OqNvi">
                                      <ref role="3Tt5mk" to="cmsa:7LYDSxsugAO" resolve="sensor" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="6sfqbyq8dR8" role="2OqNvi">
                                    <ref role="3TsBF5" to="cmsa:1HCekCgwrGh" resolve="pin" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="6sfqbyq7Ku0" role="3uHU7w">
                      <property role="Xl_RC" value=") == " />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6sfqbyq7MOl" role="3uHU7w">
                    <property role="Xl_RC" value="SIGNAL" />
                    <node concept="17Uvod" id="6sfqbyq8eFM" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="6sfqbyq8eFN" role="3zH0cK">
                        <node concept="3clFbS" id="6sfqbyq8eFO" role="2VODD2">
                          <node concept="3clFbF" id="6sfqbyq8f$N" role="3cqZAp">
                            <node concept="3K4zz7" id="6sfqbyq8kKC" role="3clFbG">
                              <node concept="Xl_RD" id="6sfqbyq8kZY" role="3K4E3e">
                                <property role="Xl_RC" value="HIGH" />
                              </node>
                              <node concept="Xl_RD" id="6sfqbyq8lHk" role="3K4GZi">
                                <property role="Xl_RC" value="LOW" />
                              </node>
                              <node concept="2OqwBi" id="6sfqbyq8huQ" role="3K4Cdx">
                                <node concept="30H73N" id="6sfqbyq8f$M" role="2Oq$k0" />
                                <node concept="3TrcHB" id="6sfqbyq8jup" role="2OqNvi">
                                  <ref role="3TsBF5" to="cmsa:7LYDSxsugpf" resolve="status" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sfqbyq7QXr" role="3cqZAp">
          <node concept="2OqwBi" id="6sfqbyq7REl" role="3clFbG">
            <node concept="10M0yZ" id="6sfqbyq7RfC" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6sfqbyq7Sdq" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6sfqbyq7XZo" role="37wK5m">
                <node concept="Xl_RD" id="6sfqbyq7Yil" role="3uHU7w">
                  <property role="Xl_RC" value="(); " />
                </node>
                <node concept="3cpWs3" id="6sfqbyq7Wmt" role="3uHU7B">
                  <node concept="Xl_RD" id="6sfqbyq7SBG" role="3uHU7B">
                    <property role="Xl_RC" value="     time = millis(); state_" />
                  </node>
                  <node concept="Xl_RD" id="6sfqbyq7W_m" role="3uHU7w">
                    <property role="Xl_RC" value="STATE" />
                    <node concept="17Uvod" id="6sfqbyq8mpE" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="6sfqbyq8mpF" role="3zH0cK">
                        <node concept="3clFbS" id="6sfqbyq8mpG" role="2VODD2">
                          <node concept="3clFbF" id="6sfqbyq8mWD" role="3cqZAp">
                            <node concept="2OqwBi" id="6sfqbyq8pfz" role="3clFbG">
                              <node concept="2OqwBi" id="6sfqbyq8n9J" role="2Oq$k0">
                                <node concept="30H73N" id="6sfqbyq8mWC" role="2Oq$k0" />
                                <node concept="3TrEf2" id="6sfqbyq8oya" role="2OqNvi">
                                  <ref role="3Tt5mk" to="cmsa:7LYDSxsuhfz" resolve="target" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="6sfqbyq8pNi" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sfqbyq80A3" role="3cqZAp">
          <node concept="2OqwBi" id="6sfqbyq81pf" role="3clFbG">
            <node concept="10M0yZ" id="6sfqbyq80XI" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6sfqbyq820P" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="6sfqbyq82vP" role="37wK5m">
                <property role="Xl_RC" value="   }" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="6sfqbyq7CJx" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="6sfqbyq8wLd">
    <property role="TrG5h" value="reduce_State" />
    <ref role="3gUMe" to="cmsa:1HCekCgxx_l" resolve="State" />
    <node concept="9aQIb" id="6sfqbyq8wYZ" role="13RCb5">
      <node concept="3clFbS" id="6sfqbyq8wZ0" role="9aQI4">
        <node concept="3clFbF" id="6sfqbyq8xhW" role="3cqZAp">
          <node concept="2OqwBi" id="6sfqbyq8xLl" role="3clFbG">
            <node concept="10M0yZ" id="6sfqbyq8xmA" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6sfqbyq8ykq" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6sfqbyq8_Ke" role="37wK5m">
                <node concept="Xl_RD" id="6sfqbyq8Acd" role="3uHU7w">
                  <property role="Xl_RC" value="() {" />
                </node>
                <node concept="3cpWs3" id="6sfqbyq8zYh" role="3uHU7B">
                  <node concept="Xl_RD" id="6sfqbyq8ypl" role="3uHU7B">
                    <property role="Xl_RC" value="void state_" />
                  </node>
                  <node concept="Xl_RD" id="6sfqbyq8zZB" role="3uHU7w">
                    <property role="Xl_RC" value="STATE_NAME" />
                    <node concept="17Uvod" id="6sfqbyq96UL" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="6sfqbyq96UM" role="3zH0cK">
                        <node concept="3clFbS" id="6sfqbyq96UN" role="2VODD2">
                          <node concept="3clFbF" id="6sfqbyq97tK" role="3cqZAp">
                            <node concept="2OqwBi" id="6sfqbyq97FC" role="3clFbG">
                              <node concept="30H73N" id="6sfqbyq97tJ" role="2Oq$k0" />
                              <node concept="3TrcHB" id="6sfqbyq987L" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sfqbyq8HH0" role="3cqZAp">
          <node concept="2OqwBi" id="6sfqbyq8Ipj" role="3clFbG">
            <node concept="10M0yZ" id="6sfqbyq8HYA" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6sfqbyq8IWo" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="6sfqbyq8JKy" role="37wK5m">
                <property role="Xl_RC" value="  //Here come the actions" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="6sfqbyq8Ogz" role="lGtFl">
            <node concept="3JmXsc" id="6sfqbyq8Og$" role="2P8S$">
              <node concept="3clFbS" id="6sfqbyq8Og_" role="2VODD2">
                <node concept="3clFbF" id="6sfqbyq8OAO" role="3cqZAp">
                  <node concept="2OqwBi" id="6sfqbyq8OMY" role="3clFbG">
                    <node concept="30H73N" id="6sfqbyq8OAN" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6sfqbyq8PmD" role="2OqNvi">
                      <ref role="3TtcxE" to="cmsa:1HCekCgxx_t" resolve="actions" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7$$bovwZ4yx" role="3cqZAp">
          <node concept="2OqwBi" id="7$$bovwZ4yy" role="3clFbG">
            <node concept="10M0yZ" id="7$$bovwZ4yz" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="7$$bovwZ4y$" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="7$$bovwZ4y_" role="37wK5m">
                <property role="Xl_RC" value="  //Here come the notes" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="7$$bovwZ4yA" role="lGtFl">
            <node concept="3JmXsc" id="7$$bovwZ4yB" role="2P8S$">
              <node concept="3clFbS" id="7$$bovwZ4yC" role="2VODD2">
                <node concept="3clFbF" id="7$$bovwZ4yD" role="3cqZAp">
                  <node concept="2OqwBi" id="7$$bovwZ4yE" role="3clFbG">
                    <node concept="30H73N" id="7$$bovwZ4yF" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7$$bovwZ6XJ" role="2OqNvi">
                      <ref role="3TtcxE" to="cmsa:7$$bovwYZnJ" resolve="notes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6FUzuvWmMTh" role="3cqZAp">
          <node concept="2OqwBi" id="6FUzuvWmMTi" role="3clFbG">
            <node concept="10M0yZ" id="6FUzuvWmMTj" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6FUzuvWmMTk" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="6FUzuvWmMTl" role="37wK5m">
                <property role="Xl_RC" value="  //Here come the bips" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="6FUzuvWmMTm" role="lGtFl">
            <node concept="3JmXsc" id="6FUzuvWmMTn" role="2P8S$">
              <node concept="3clFbS" id="6FUzuvWmMTo" role="2VODD2">
                <node concept="3clFbF" id="6FUzuvWmMTp" role="3cqZAp">
                  <node concept="2OqwBi" id="6FUzuvWmMTq" role="3clFbG">
                    <node concept="30H73N" id="6FUzuvWmMTr" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6FUzuvWmP_R" role="2OqNvi">
                      <ref role="3TtcxE" to="cmsa:6FUzuvWmL_5" resolve="bips" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sfqbyq8Qqc" role="3cqZAp">
          <node concept="2OqwBi" id="6sfqbyq8ReN" role="3clFbG">
            <node concept="10M0yZ" id="6sfqbyq8QO6" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6sfqbyq8RLS" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="6sfqbyq8RZd" role="37wK5m">
                <property role="Xl_RC" value="   boolean guard = millis() - time &gt; debounce;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sfqbyq8WlZ" role="3cqZAp">
          <node concept="2OqwBi" id="6sfqbyq8X6O" role="3clFbG">
            <node concept="10M0yZ" id="6sfqbyq8WKC" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6sfqbyq8XIq" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="6sfqbyq8XW6" role="37wK5m">
                <property role="Xl_RC" value="   // Here come the transitions" />
              </node>
            </node>
          </node>
          <node concept="2b32R4" id="7$$bovwXykR" role="lGtFl">
            <node concept="3JmXsc" id="7$$bovwXykS" role="2P8S$">
              <node concept="3clFbS" id="7$$bovwXykT" role="2VODD2">
                <node concept="3clFbF" id="7$$bovwXzdq" role="3cqZAp">
                  <node concept="2OqwBi" id="7$$bovwXzp$" role="3clFbG">
                    <node concept="30H73N" id="7$$bovwXzdp" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="7$$bovwXzKv" role="2OqNvi">
                      <ref role="3TtcxE" to="cmsa:1HCekCgxx_x" resolve="transition" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7$$bovwXrYq" role="3cqZAp">
          <node concept="2OqwBi" id="7$$bovwXt2Z" role="3clFbG">
            <node concept="10M0yZ" id="7$$bovwXsCi" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="7$$bovwXttw" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="7$$bovwXx8z" role="37wK5m">
                <node concept="Xl_RD" id="7$$bovwXxmZ" role="3uHU7w">
                  <property role="Xl_RC" value="();" />
                </node>
                <node concept="3cpWs3" id="7$$bovwXvqI" role="3uHU7B">
                  <node concept="Xl_RD" id="7$$bovwXtBf" role="3uHU7B">
                    <property role="Xl_RC" value="   state_" />
                  </node>
                  <node concept="Xl_RD" id="7$$bovwXvqL" role="3uHU7w">
                    <property role="Xl_RC" value="STATE_NAME" />
                    <node concept="17Uvod" id="7$$bovwXJQJ" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="7$$bovwXJQK" role="3zH0cK">
                        <node concept="3clFbS" id="7$$bovwXJQL" role="2VODD2">
                          <node concept="3clFbF" id="7$$bovwXKrf" role="3cqZAp">
                            <node concept="2OqwBi" id="7$$bovwXKD7" role="3clFbG">
                              <node concept="30H73N" id="7$$bovwXKre" role="2Oq$k0" />
                              <node concept="3TrcHB" id="7$$bovwXLsE" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sfqbyq90j5" role="3cqZAp">
          <node concept="2OqwBi" id="6sfqbyq914D" role="3clFbG">
            <node concept="10M0yZ" id="6sfqbyq90It" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6sfqbyq91Gf" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="6sfqbyq927m" role="37wK5m">
                <property role="Xl_RC" value="}\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6sfqbyq8EU_" role="3cqZAp" />
      </node>
      <node concept="raruj" id="6sfqbyq8x4m" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="7$$bovwYlih">
    <property role="TrG5h" value="reduce_Sound" />
    <ref role="3gUMe" to="cmsa:7$$bovwYlgK" resolve="Sound" />
    <node concept="9aQIb" id="7$$bovwYnCI" role="13RCb5">
      <node concept="3clFbS" id="7$$bovwYnCJ" role="9aQI4">
        <node concept="3clFbF" id="6FUzuvWm6Fa" role="3cqZAp">
          <node concept="2OqwBi" id="6FUzuvWm7Ru" role="3clFbG">
            <node concept="10M0yZ" id="6FUzuvWm7xj" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6FUzuvWm8FI" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6FUzuvWmbMg" role="37wK5m">
                <node concept="Xl_RD" id="6FUzuvWmbW0" role="3uHU7w">
                  <property role="Xl_RC" value=";i++){" />
                </node>
                <node concept="3cpWs3" id="6FUzuvWmaeK" role="3uHU7B">
                  <node concept="Xl_RD" id="6FUzuvWm92r" role="3uHU7B">
                    <property role="Xl_RC" value="   for(int i=0;i&lt;" />
                  </node>
                  <node concept="3cmrfG" id="6FUzuvWmafV" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="6FUzuvWmrQ9" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <node concept="3zFVjK" id="6FUzuvWmrQa" role="3zH0cK">
                        <node concept="3clFbS" id="6FUzuvWmrQb" role="2VODD2">
                          <node concept="3clFbF" id="6FUzuvWmsLw" role="3cqZAp">
                            <node concept="2OqwBi" id="6FUzuvWmt3N" role="3clFbG">
                              <node concept="30H73N" id="6FUzuvWmsLv" role="2Oq$k0" />
                              <node concept="3TrcHB" id="6FUzuvWmtK6" role="2OqNvi">
                                <ref role="3TsBF5" to="cmsa:6FUzuvWm4Zp" resolve="repeat" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7$$bovwYnFm" role="3cqZAp">
          <node concept="2OqwBi" id="7$$bovwYnFn" role="3clFbG">
            <node concept="10M0yZ" id="7$$bovwYnFo" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="7$$bovwYnFp" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="7$$bovwYnFq" role="37wK5m">
                <node concept="Xl_RD" id="7$$bovwYnFr" role="3uHU7w">
                  <property role="Xl_RC" value=");" />
                </node>
                <node concept="3cpWs3" id="7$$bovwYnFt" role="3uHU7B">
                  <node concept="3cpWs3" id="7$$bovwYnFu" role="3uHU7B">
                    <node concept="Xl_RD" id="7$$bovwYnFv" role="3uHU7B">
                      <property role="Xl_RC" value="       digitalWrite(" />
                    </node>
                    <node concept="3cmrfG" id="7$$bovwYnFw" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                      <node concept="17Uvod" id="7$$bovwYnFx" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <node concept="3zFVjK" id="7$$bovwYnFy" role="3zH0cK">
                          <node concept="3clFbS" id="7$$bovwYnFz" role="2VODD2">
                            <node concept="3clFbF" id="7$$bovwYnF$" role="3cqZAp">
                              <node concept="2OqwBi" id="7$$bovwYnF_" role="3clFbG">
                                <node concept="2OqwBi" id="7$$bovwYnFA" role="2Oq$k0">
                                  <node concept="30H73N" id="7$$bovwYnFB" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="7$$bovwYnFC" role="2OqNvi">
                                    <ref role="3Tt5mk" to="cmsa:7LYDSxsuhSh" resolve="actuator" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="7$$bovwYnFD" role="2OqNvi">
                                  <ref role="3TsBF5" to="cmsa:1HCekCgwrGh" resolve="pin" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7$$bovwYnFE" role="3uHU7w">
                    <property role="Xl_RC" value=", HIGH" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7$$bovwYtXB" role="3cqZAp">
          <node concept="2OqwBi" id="7$$bovwYtXC" role="3clFbG">
            <node concept="10M0yZ" id="7$$bovwYtXD" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="7$$bovwYtXE" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="7$$bovwYtXF" role="37wK5m">
                <node concept="Xl_RD" id="7$$bovwYtXG" role="3uHU7w">
                  <property role="Xl_RC" value="/2);" />
                </node>
                <node concept="3cpWs3" id="7$$bovwYtXJ" role="3uHU7B">
                  <node concept="Xl_RD" id="7$$bovwYtXK" role="3uHU7B">
                    <property role="Xl_RC" value="       delayMicroseconds(" />
                  </node>
                  <node concept="3cmrfG" id="7$$bovwYtXL" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="7$$bovwYtXM" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <node concept="3zFVjK" id="7$$bovwYtXN" role="3zH0cK">
                        <node concept="3clFbS" id="7$$bovwYtXO" role="2VODD2">
                          <node concept="3clFbF" id="7$$bovwYtXP" role="3cqZAp">
                            <node concept="2OqwBi" id="7$$bovwYtXR" role="3clFbG">
                              <node concept="30H73N" id="7$$bovwYtXS" role="2Oq$k0" />
                              <node concept="3TrcHB" id="7$$bovwYBQB" role="2OqNvi">
                                <ref role="3TsBF5" to="cmsa:7$$bovwYlgL" resolve="note" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7$$bovwYFW_" role="3cqZAp">
          <node concept="2OqwBi" id="7$$bovwYFWA" role="3clFbG">
            <node concept="10M0yZ" id="7$$bovwYFWB" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="7$$bovwYFWC" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="7$$bovwYFWD" role="37wK5m">
                <node concept="Xl_RD" id="7$$bovwYFWE" role="3uHU7w">
                  <property role="Xl_RC" value=");" />
                </node>
                <node concept="3cpWs3" id="7$$bovwYFWF" role="3uHU7B">
                  <node concept="3cpWs3" id="7$$bovwYFWG" role="3uHU7B">
                    <node concept="Xl_RD" id="7$$bovwYFWH" role="3uHU7B">
                      <property role="Xl_RC" value="       digitalWrite(" />
                    </node>
                    <node concept="3cmrfG" id="7$$bovwYFWI" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                      <node concept="17Uvod" id="7$$bovwYFWJ" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <node concept="3zFVjK" id="7$$bovwYFWK" role="3zH0cK">
                          <node concept="3clFbS" id="7$$bovwYFWL" role="2VODD2">
                            <node concept="3clFbF" id="7$$bovwYFWM" role="3cqZAp">
                              <node concept="2OqwBi" id="7$$bovwYFWN" role="3clFbG">
                                <node concept="2OqwBi" id="7$$bovwYFWO" role="2Oq$k0">
                                  <node concept="30H73N" id="7$$bovwYFWP" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="7$$bovwYFWQ" role="2OqNvi">
                                    <ref role="3Tt5mk" to="cmsa:7LYDSxsuhSh" resolve="actuator" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="7$$bovwYFWR" role="2OqNvi">
                                  <ref role="3TsBF5" to="cmsa:1HCekCgwrGh" resolve="pin" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7$$bovwYFWS" role="3uHU7w">
                    <property role="Xl_RC" value=", LOW" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7$$bovwYFWT" role="3cqZAp">
          <node concept="2OqwBi" id="7$$bovwYFWU" role="3clFbG">
            <node concept="10M0yZ" id="7$$bovwYFWV" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="7$$bovwYFWW" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="7$$bovwYFWX" role="37wK5m">
                <node concept="Xl_RD" id="7$$bovwYFWY" role="3uHU7w">
                  <property role="Xl_RC" value="/2);" />
                </node>
                <node concept="3cpWs3" id="7$$bovwYFWZ" role="3uHU7B">
                  <node concept="Xl_RD" id="7$$bovwYFX0" role="3uHU7B">
                    <property role="Xl_RC" value="       delayMicroseconds(" />
                  </node>
                  <node concept="3cmrfG" id="7$$bovwYFX1" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="7$$bovwYFX2" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <node concept="3zFVjK" id="7$$bovwYFX3" role="3zH0cK">
                        <node concept="3clFbS" id="7$$bovwYFX4" role="2VODD2">
                          <node concept="3clFbF" id="7$$bovwYFX5" role="3cqZAp">
                            <node concept="2OqwBi" id="7$$bovwYFX6" role="3clFbG">
                              <node concept="30H73N" id="7$$bovwYFX7" role="2Oq$k0" />
                              <node concept="3TrcHB" id="7$$bovwYFX8" role="2OqNvi">
                                <ref role="3TsBF5" to="cmsa:7$$bovwYlgL" resolve="note" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6FUzuvWmev9" role="3cqZAp">
          <node concept="2OqwBi" id="6FUzuvWmevb" role="3clFbG">
            <node concept="10M0yZ" id="6FUzuvWmevc" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6FUzuvWmevd" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="6FUzuvWmifF" role="37wK5m">
                <property role="Xl_RC" value="   }" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6FUzuvWmdzB" role="3cqZAp" />
      </node>
      <node concept="raruj" id="7$$bovwYnD$" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="6FUzuvWmFi6">
    <property role="TrG5h" value="reduce_Bips" />
    <ref role="3gUMe" to="cmsa:6FUzuvWmEjs" resolve="Bips" />
    <node concept="9aQIb" id="6FUzuvWmFip" role="13RCb5">
      <node concept="3clFbS" id="6FUzuvWmFiq" role="9aQI4">
        <node concept="3clFbF" id="6FUzuvWmFir" role="3cqZAp">
          <node concept="2OqwBi" id="6FUzuvWmFis" role="3clFbG">
            <node concept="10M0yZ" id="6FUzuvWmFit" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="6FUzuvWmFiu" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6FUzuvWmFiv" role="37wK5m">
                <node concept="Xl_RD" id="6FUzuvWmFiw" role="3uHU7w">
                  <property role="Xl_RC" value=";i++){" />
                </node>
                <node concept="3cpWs3" id="6FUzuvWmFix" role="3uHU7B">
                  <node concept="Xl_RD" id="6FUzuvWmFiy" role="3uHU7B">
                    <property role="Xl_RC" value="   for(int i=0;i&lt;" />
                  </node>
                  <node concept="3cmrfG" id="6FUzuvWmFiz" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="6FUzuvWmFi$" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <node concept="3zFVjK" id="6FUzuvWmFi_" role="3zH0cK">
                        <node concept="3clFbS" id="6FUzuvWmFiA" role="2VODD2">
                          <node concept="3clFbF" id="6FUzuvWmFiB" role="3cqZAp">
                            <node concept="2OqwBi" id="6FUzuvWmFiC" role="3clFbG">
                              <node concept="30H73N" id="6FUzuvWmFiD" role="2Oq$k0" />
                              <node concept="3TrcHB" id="6FUzuvWmFiE" role="2OqNvi">
                                <ref role="3TsBF5" to="cmsa:6FUzuvWmEjv" resolve="repeat" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6FUzuvWmFiF" role="3cqZAp">
          <node concept="2OqwBi" id="6FUzuvWmFiG" role="3clFbG">
            <node concept="10M0yZ" id="6FUzuvWmFiH" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6FUzuvWmFiI" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6FUzuvWmFiJ" role="37wK5m">
                <node concept="Xl_RD" id="6FUzuvWmFiK" role="3uHU7w">
                  <property role="Xl_RC" value=");" />
                </node>
                <node concept="3cpWs3" id="6FUzuvWmFiL" role="3uHU7B">
                  <node concept="3cpWs3" id="6FUzuvWmFiM" role="3uHU7B">
                    <node concept="Xl_RD" id="6FUzuvWmFiN" role="3uHU7B">
                      <property role="Xl_RC" value="       digitalWrite(" />
                    </node>
                    <node concept="3cmrfG" id="6FUzuvWmFiO" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                      <node concept="17Uvod" id="6FUzuvWmFiP" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <node concept="3zFVjK" id="6FUzuvWmFiQ" role="3zH0cK">
                          <node concept="3clFbS" id="6FUzuvWmFiR" role="2VODD2">
                            <node concept="3clFbF" id="6FUzuvWmFiS" role="3cqZAp">
                              <node concept="2OqwBi" id="6FUzuvWmFiT" role="3clFbG">
                                <node concept="2OqwBi" id="6FUzuvWmFiU" role="2Oq$k0">
                                  <node concept="30H73N" id="6FUzuvWmFiV" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="6FUzuvWmFiW" role="2OqNvi">
                                    <ref role="3Tt5mk" to="cmsa:7LYDSxsuhSh" resolve="actuator" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="6FUzuvWmFiX" role="2OqNvi">
                                  <ref role="3TsBF5" to="cmsa:1HCekCgwrGh" resolve="pin" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6FUzuvWmFiY" role="3uHU7w">
                    <property role="Xl_RC" value=", HIGH" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6FUzuvWmFiZ" role="3cqZAp">
          <node concept="2OqwBi" id="6FUzuvWmFj0" role="3clFbG">
            <node concept="10M0yZ" id="6FUzuvWmFj1" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6FUzuvWmFj2" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6FUzuvWmFj3" role="37wK5m">
                <node concept="Xl_RD" id="6FUzuvWmFj4" role="3uHU7w">
                  <property role="Xl_RC" value=");" />
                </node>
                <node concept="3cpWs3" id="6FUzuvWmFj5" role="3uHU7B">
                  <node concept="Xl_RD" id="6FUzuvWmFj6" role="3uHU7B">
                    <property role="Xl_RC" value="       delay(" />
                  </node>
                  <node concept="3cmrfG" id="6FUzuvWmFj7" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="6FUzuvWmFj8" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <node concept="3zFVjK" id="6FUzuvWmFj9" role="3zH0cK">
                        <node concept="3clFbS" id="6FUzuvWmFja" role="2VODD2">
                          <node concept="3clFbF" id="6FUzuvWmFjb" role="3cqZAp">
                            <node concept="2OqwBi" id="6FUzuvWmFjc" role="3clFbG">
                              <node concept="30H73N" id="6FUzuvWmFjd" role="2Oq$k0" />
                              <node concept="3TrcHB" id="6FUzuvWmJSs" role="2OqNvi">
                                <ref role="3TsBF5" to="cmsa:6FUzuvWmEjt" resolve="lenght" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6FUzuvWmFjf" role="3cqZAp">
          <node concept="2OqwBi" id="6FUzuvWmFjg" role="3clFbG">
            <node concept="10M0yZ" id="6FUzuvWmFjh" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6FUzuvWmFji" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6FUzuvWmFjj" role="37wK5m">
                <node concept="Xl_RD" id="6FUzuvWmFjk" role="3uHU7w">
                  <property role="Xl_RC" value=");" />
                </node>
                <node concept="3cpWs3" id="6FUzuvWmFjl" role="3uHU7B">
                  <node concept="3cpWs3" id="6FUzuvWmFjm" role="3uHU7B">
                    <node concept="Xl_RD" id="6FUzuvWmFjn" role="3uHU7B">
                      <property role="Xl_RC" value="       digitalWrite(" />
                    </node>
                    <node concept="3cmrfG" id="6FUzuvWmFjo" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                      <node concept="17Uvod" id="6FUzuvWmFjp" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                        <node concept="3zFVjK" id="6FUzuvWmFjq" role="3zH0cK">
                          <node concept="3clFbS" id="6FUzuvWmFjr" role="2VODD2">
                            <node concept="3clFbF" id="6FUzuvWmFjs" role="3cqZAp">
                              <node concept="2OqwBi" id="6FUzuvWmFjt" role="3clFbG">
                                <node concept="2OqwBi" id="6FUzuvWmFju" role="2Oq$k0">
                                  <node concept="30H73N" id="6FUzuvWmFjv" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="6FUzuvWmFjw" role="2OqNvi">
                                    <ref role="3Tt5mk" to="cmsa:7LYDSxsuhSh" resolve="actuator" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="6FUzuvWmFjx" role="2OqNvi">
                                  <ref role="3TsBF5" to="cmsa:1HCekCgwrGh" resolve="pin" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6FUzuvWmFjy" role="3uHU7w">
                    <property role="Xl_RC" value=", LOW" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6FUzuvWmFjz" role="3cqZAp">
          <node concept="2OqwBi" id="6FUzuvWmFj$" role="3clFbG">
            <node concept="10M0yZ" id="6FUzuvWmFj_" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6FUzuvWmFjA" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="6FUzuvWmFjB" role="37wK5m">
                <node concept="Xl_RD" id="6FUzuvWmFjC" role="3uHU7w">
                  <property role="Xl_RC" value=");" />
                </node>
                <node concept="3cpWs3" id="6FUzuvWmFjD" role="3uHU7B">
                  <node concept="Xl_RD" id="6FUzuvWmFjE" role="3uHU7B">
                    <property role="Xl_RC" value="       delay(" />
                  </node>
                  <node concept="3cmrfG" id="6FUzuvWmFjF" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="6FUzuvWmFjG" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <node concept="3zFVjK" id="6FUzuvWmFjH" role="3zH0cK">
                        <node concept="3clFbS" id="6FUzuvWmFjI" role="2VODD2">
                          <node concept="3clFbF" id="6FUzuvWmFjJ" role="3cqZAp">
                            <node concept="2OqwBi" id="6FUzuvWmFjK" role="3clFbG">
                              <node concept="30H73N" id="6FUzuvWmFjL" role="2Oq$k0" />
                              <node concept="3TrcHB" id="6FUzuvWmKPc" role="2OqNvi">
                                <ref role="3TsBF5" to="cmsa:6FUzuvWmEjt" resolve="lenght" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6FUzuvWmFjN" role="3cqZAp">
          <node concept="2OqwBi" id="6FUzuvWmFjO" role="3clFbG">
            <node concept="10M0yZ" id="6FUzuvWmFjP" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="6FUzuvWmFjQ" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="Xl_RD" id="6FUzuvWmFjR" role="37wK5m">
                <property role="Xl_RC" value="   }" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6FUzuvWmFjS" role="3cqZAp" />
      </node>
      <node concept="raruj" id="6FUzuvWmFjT" role="lGtFl" />
    </node>
  </node>
</model>

