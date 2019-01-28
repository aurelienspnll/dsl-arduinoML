package ArduinoML.structure;

/*Generated by MPS */

import jetbrains.mps.lang.smodel.LanguageConceptIndex;
import jetbrains.mps.lang.smodel.LanguageConceptIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public final class LanguageConceptSwitch {
  private final LanguageConceptIndex myIndex;
  public static final int Action = 0;
  public static final int Actuator = 1;
  public static final int App = 2;
  public static final int Bips = 3;
  public static final int Brick = 4;
  public static final int Sensor = 5;
  public static final int Sound = 6;
  public static final int State = 7;
  public static final int Transition = 8;

  public LanguageConceptSwitch() {
    LanguageConceptIndexBuilder builder = new LanguageConceptIndexBuilder(0x350aa42ef9c440ddL, 0x82b2052371c06126L);
    builder.put(0x1b68394a1086195fL, Action);
    builder.put(0x1b68394a1081bb13L, Actuator);
    builder.put(0x1b68394a1081bb15L, App);
    builder.put(0x6afa8de7fc5aa4dcL, Bips);
    builder.put(0x1b68394a1081bb0eL, Brick);
    builder.put(0x1b68394a1081bb14L, Sensor);
    builder.put(0x79242d87e0f95430L, Sound);
    builder.put(0x1b68394a10861955L, State);
    builder.put(0x1b68394a10861960L, Transition);
    myIndex = builder.seal();
  }

  /*package*/ int index(SConceptId cid) {
    return myIndex.index(cid);
  }

  public int index(SAbstractConcept concept) {
    return myIndex.index(concept);
  }
}
