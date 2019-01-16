package ArduinoML.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConceptPresentationAspectBase;
import jetbrains.mps.smodel.runtime.ConceptPresentation;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.ConceptPresentationBuilder;

public class ConceptPresentationAspectImpl extends ConceptPresentationAspectBase {
  private ConceptPresentation props_Action;
  private ConceptPresentation props_Actuator;
  private ConceptPresentation props_App;
  private ConceptPresentation props_Brick;
  private ConceptPresentation props_Sensor;
  private ConceptPresentation props_State;
  private ConceptPresentation props_Transition;

  @Override
  @Nullable
  public ConceptPresentation getDescriptor(SAbstractConcept c) {
    StructureAspectDescriptor structureDescriptor = (StructureAspectDescriptor) myLanguageRuntime.getAspect(jetbrains.mps.smodel.runtime.StructureAspectDescriptor.class);
    switch (structureDescriptor.internalIndex(c)) {
      case LanguageConceptSwitch.Action:
        if (props_Action == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x350aa42ef9c440ddL, 0x82b2052371c06126L, 0x1b68394a1086195fL, 0x7c7ea7885c791e11L, "actuator", "", "");
          props_Action = cpb.create();
        }
        return props_Action;
      case LanguageConceptSwitch.Actuator:
        if (props_Actuator == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_Actuator = cpb.create();
        }
        return props_Actuator;
      case LanguageConceptSwitch.App:
        if (props_App == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_App = cpb.create();
        }
        return props_App;
      case LanguageConceptSwitch.Brick:
        if (props_Brick == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_Brick = cpb.create();
        }
        return props_Brick;
      case LanguageConceptSwitch.Sensor:
        if (props_Sensor == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_Sensor = cpb.create();
        }
        return props_Sensor;
      case LanguageConceptSwitch.State:
        if (props_State == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_State = cpb.create();
        }
        return props_State;
      case LanguageConceptSwitch.Transition:
        if (props_Transition == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("Transition");
          props_Transition = cpb.create();
        }
        return props_Transition;
    }
    return null;
  }
}
