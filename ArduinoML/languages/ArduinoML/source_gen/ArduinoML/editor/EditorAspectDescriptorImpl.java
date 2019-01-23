package ArduinoML.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.EditorAspectDescriptorBase;
import org.jetbrains.annotations.NotNull;
import java.util.Collection;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.Collections;
import jetbrains.mps.openapi.editor.descriptor.SubstituteMenu;
import jetbrains.mps.lang.smodel.ConceptSwitchIndex;
import jetbrains.mps.lang.smodel.ConceptSwitchIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;

public class EditorAspectDescriptorImpl extends EditorAspectDescriptorBase {
  @NotNull
  public Collection<ConceptEditor> getDeclaredEditors(SAbstractConcept concept) {
    SAbstractConcept cncpt = ((SAbstractConcept) concept);
    switch (conceptIndex.index(cncpt)) {
      case 0:
        return Collections.<ConceptEditor>singletonList(new Action_Editor());
      case 1:
        return Collections.<ConceptEditor>singletonList(new Actuator_Editor());
      case 2:
        return Collections.<ConceptEditor>singletonList(new Sensor_Editor());
      case 3:
        return Collections.<ConceptEditor>singletonList(new Sound_Editor());
      case 4:
        return Collections.<ConceptEditor>singletonList(new State_Editor());
      case 5:
        return Collections.<ConceptEditor>singletonList(new Transition_Editor());
      default:
    }
    return Collections.<ConceptEditor>emptyList();
  }


  @NotNull
  @Override
  public Collection<SubstituteMenu> getDeclaredDefaultSubstituteMenus(SAbstractConcept concept) {
    SAbstractConcept cncpt = concept;
    switch (conceptIndex1.index(cncpt)) {
      case 0:
        return Collections.<SubstituteMenu>singletonList(new Action_SubstituteMenu());
      case 1:
        return Collections.<SubstituteMenu>singletonList(new App_SubstituteMenu());
      case 2:
        return Collections.<SubstituteMenu>singletonList(new Sound_SubstituteMenu());
      default:
    }
    return Collections.<SubstituteMenu>emptyList();
  }

  private static final ConceptSwitchIndex conceptIndex = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0x350aa42ef9c440ddL, 0x82b2052371c06126L, 0x1b68394a1086195fL), MetaIdFactory.conceptId(0x350aa42ef9c440ddL, 0x82b2052371c06126L, 0x1b68394a1081bb13L), MetaIdFactory.conceptId(0x350aa42ef9c440ddL, 0x82b2052371c06126L, 0x1b68394a1081bb14L), MetaIdFactory.conceptId(0x350aa42ef9c440ddL, 0x82b2052371c06126L, 0x79242d87e0f95430L), MetaIdFactory.conceptId(0x350aa42ef9c440ddL, 0x82b2052371c06126L, 0x1b68394a10861955L), MetaIdFactory.conceptId(0x350aa42ef9c440ddL, 0x82b2052371c06126L, 0x1b68394a10861960L)).seal();
  private static final ConceptSwitchIndex conceptIndex1 = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0x350aa42ef9c440ddL, 0x82b2052371c06126L, 0x1b68394a1086195fL), MetaIdFactory.conceptId(0x350aa42ef9c440ddL, 0x82b2052371c06126L, 0x1b68394a1081bb15L), MetaIdFactory.conceptId(0x350aa42ef9c440ddL, 0x82b2052371c06126L, 0x79242d87e0f95430L)).seal();
}
