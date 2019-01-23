<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7be2a63c-0378-4dc3-8f2b-bbeea398a6f6(ArduinoML.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="cmsa" ref="r:4854ca2b-a3e0-45dd-8ae9-4f6abda320c6(ArduinoML.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="1HCekCgwvra">
    <ref role="1XX52x" to="cmsa:1HCekCgwrGk" resolve="Sensor" />
    <node concept="3EZMnI" id="1HCekCgwvrc" role="2wV5jI">
      <node concept="3F0ifn" id="1HCekCgwvre" role="3EZMnx">
        <property role="3F0ifm" value="sensor" />
      </node>
      <node concept="3F0A7n" id="1HCekCgwvrf" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="1HCekCgwvrl" role="3EZMnx">
        <property role="3F0ifm" value=" : " />
        <node concept="11L4FC" id="1HCekCgwvrm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="1HCekCgwvrn" role="3EZMnx">
        <ref role="1NtTu8" to="cmsa:1HCekCgwrGh" resolve="pin" />
      </node>
      <node concept="2iRfu4" id="1HCekCgxctN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1HCekCgwvrE">
    <ref role="1XX52x" to="cmsa:1HCekCgwrGj" resolve="Actuator" />
    <node concept="3EZMnI" id="1HCekCgwvrG" role="2wV5jI">
      <node concept="3F0ifn" id="1HCekCgwvrI" role="3EZMnx">
        <property role="3F0ifm" value="actuator" />
      </node>
      <node concept="3F0A7n" id="1HCekCgwvrJ" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="1HCekCgwvrK" role="3EZMnx">
        <property role="3F0ifm" value=" : " />
        <node concept="11L4FC" id="1HCekCgwvrL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="1HCekCgwvrM" role="3F10Kt">
          <property role="1413C4" value="body-paren" />
        </node>
        <node concept="11LMrY" id="1HCekCgwvrN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="1HCekCgwvrR" role="3EZMnx">
        <ref role="1NtTu8" to="cmsa:1HCekCgwrGh" resolve="pin" />
      </node>
      <node concept="2iRfu4" id="1HCekCgxctx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7LYDSxsuQJE">
    <ref role="1XX52x" to="cmsa:1HCekCgxx_v" resolve="Action" />
    <node concept="3EZMnI" id="7LYDSxsuQJL" role="2wV5jI">
      <node concept="1iCGBv" id="7LYDSxsuQK2" role="3EZMnx">
        <ref role="1NtTu8" to="cmsa:7LYDSxsuhSh" resolve="actuator" />
        <node concept="1sVBvm" id="7LYDSxsuQK4" role="1sWHZn">
          <node concept="3F0A7n" id="7LYDSxsuQKn" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7LYDSxsuQKv" role="3EZMnx">
        <property role="3F0ifm" value="&lt;=" />
      </node>
      <node concept="3F0A7n" id="7LYDSxsuQKF" role="3EZMnx">
        <ref role="1NtTu8" to="cmsa:7LYDSxsuhEG" resolve="status" />
      </node>
      <node concept="l2Vlx" id="7LYDSxsuQJO" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7LYDSxsuQKU">
    <ref role="1XX52x" to="cmsa:1HCekCgxx_w" resolve="Transition" />
    <node concept="3EZMnI" id="7LYDSxsuQO5" role="2wV5jI">
      <node concept="1iCGBv" id="7LYDSxsuQOc" role="3EZMnx">
        <ref role="1NtTu8" to="cmsa:7LYDSxsugAO" resolve="sensor" />
        <node concept="1sVBvm" id="7LYDSxsuQOe" role="1sWHZn">
          <node concept="3F0A7n" id="7LYDSxsuQOA" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7LYDSxsuQOY" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0A7n" id="7LYDSxsuQPL" role="3EZMnx">
        <ref role="1NtTu8" to="cmsa:7LYDSxsugpf" resolve="status" />
      </node>
      <node concept="3F0ifn" id="7LYDSxsuQPZ" role="3EZMnx">
        <property role="3F0ifm" value="=&gt;" />
      </node>
      <node concept="1iCGBv" id="7LYDSxsuQQf" role="3EZMnx">
        <ref role="1NtTu8" to="cmsa:7LYDSxsuhfz" resolve="target" />
        <node concept="1sVBvm" id="7LYDSxsuQQh" role="1sWHZn">
          <node concept="3F0A7n" id="7LYDSxsuQQu" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="7LYDSxsuQO8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7LYDSxsuQQD">
    <ref role="1XX52x" to="cmsa:1HCekCgxx_l" resolve="State" />
    <node concept="3EZMnI" id="7LYDSxsuQQF" role="2wV5jI">
      <node concept="3EZMnI" id="7LYDSxsuQQM" role="3EZMnx">
        <node concept="VPM3Z" id="7LYDSxsuQQO" role="3F10Kt" />
        <node concept="3F0A7n" id="7LYDSxsuQQX" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="l2Vlx" id="7LYDSxsuQQR" role="2iSdaV" />
        <node concept="3F0ifn" id="6Sh2TuqLpOh" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
      </node>
      <node concept="2iRkQZ" id="7LYDSxsuQQI" role="2iSdaV" />
      <node concept="3EZMnI" id="7LYDSxsuQS8" role="3EZMnx">
        <node concept="VPM3Z" id="7LYDSxsuQSa" role="3F10Kt" />
        <node concept="l2Vlx" id="7LYDSxsuQSd" role="2iSdaV" />
        <node concept="3XFhqQ" id="7LYDSxsuQSx" role="3EZMnx" />
        <node concept="3F2HdR" id="7LYDSxsuQSA" role="3EZMnx">
          <ref role="1NtTu8" to="cmsa:1HCekCgxx_t" resolve="actions" />
          <node concept="2iRkQZ" id="7LYDSxsuQSD" role="2czzBx" />
          <node concept="VPM3Z" id="7LYDSxsuQSE" role="3F10Kt" />
        </node>
      </node>
      <node concept="3EZMnI" id="7LYDSxsuQSW" role="3EZMnx">
        <node concept="VPM3Z" id="7LYDSxsuQSY" role="3F10Kt" />
        <node concept="3XFhqQ" id="7LYDSxsuQTi" role="3EZMnx" />
        <node concept="3F2HdR" id="7$$bovwXIFo" role="3EZMnx">
          <ref role="1NtTu8" to="cmsa:7$$bovwYZnJ" resolve="notes" />
          <node concept="2iRkQZ" id="7$$bovwXIFr" role="2czzBx" />
          <node concept="VPM3Z" id="7$$bovwXIFs" role="3F10Kt" />
        </node>
        <node concept="l2Vlx" id="7LYDSxsuQT1" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6Sh2TuqLpOl" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="3EZMnI" id="7$$bovwYZqX" role="3EZMnx">
        <node concept="VPM3Z" id="7$$bovwYZqZ" role="3F10Kt" />
        <node concept="3XFhqQ" id="7$$bovwYZry" role="3EZMnx" />
        <node concept="3F2HdR" id="7$$bovwYZrC" role="3EZMnx">
          <ref role="1NtTu8" to="cmsa:1HCekCgxx_x" resolve="transition" />
          <node concept="2iRkQZ" id="7$$bovwYZrF" role="2czzBx" />
          <node concept="VPM3Z" id="7$$bovwYZrG" role="3F10Kt" />
        </node>
        <node concept="l2Vlx" id="7$$bovwYZr2" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7$$bovwYlgV">
    <ref role="1XX52x" to="cmsa:7$$bovwYlgK" resolve="Sound" />
    <node concept="3EZMnI" id="7$$bovwYlgX" role="2wV5jI">
      <node concept="1iCGBv" id="7$$bovwYlhz" role="3EZMnx">
        <ref role="1NtTu8" to="cmsa:7LYDSxsuhSh" resolve="actuator" />
        <node concept="1sVBvm" id="7$$bovwYlh_" role="1sWHZn">
          <node concept="3F0A7n" id="7$$bovwYlhK" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7$$bovwYlhS" role="3EZMnx">
        <property role="3F0ifm" value=" play " />
      </node>
      <node concept="3F0A7n" id="7$$bovwYli4" role="3EZMnx">
        <ref role="1NtTu8" to="cmsa:7$$bovwYlgL" resolve="note" />
      </node>
      <node concept="l2Vlx" id="7$$bovwYlh0" role="2iSdaV" />
    </node>
  </node>
</model>

