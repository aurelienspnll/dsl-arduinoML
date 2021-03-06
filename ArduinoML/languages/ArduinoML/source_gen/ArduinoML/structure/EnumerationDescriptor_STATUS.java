package ArduinoML.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.EnumerationDescriptorBase;
import jetbrains.mps.smodel.adapter.ids.PrimitiveTypeId;
import jetbrains.mps.smodel.runtime.EnumerationDescriptor;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import java.util.Collection;
import java.util.Arrays;

public class EnumerationDescriptor_STATUS extends EnumerationDescriptorBase {

  public EnumerationDescriptor_STATUS() {
    super(0x350aa42ef9c440ddL, 0x82b2052371c06126L, 0x1b68394a10861958L, "STATUS", "r:4854ca2b-a3e0-45dd-8ae9-4f6abda320c6(ArduinoML.structure)/1974891426869549400", PrimitiveTypeId.BOOLEAN);
  }

  private final EnumerationDescriptor.MemberDescriptor VALUE_true_0 = new EnumerationDescriptor.MemberDescriptor("true", "high", "r:4854ca2b-a3e0-45dd-8ae9-4f6abda320c6(ArduinoML.structure)/1974891426869549401", "high");
  private final EnumerationDescriptor.MemberDescriptor VALUE_false_0 = new EnumerationDescriptor.MemberDescriptor("false", "low", "r:4854ca2b-a3e0-45dd-8ae9-4f6abda320c6(ArduinoML.structure)/1974891426869549402", "low");

  @Nullable
  @Override
  public EnumerationDescriptor.MemberDescriptor getDefault() {
    return VALUE_true_0;
  }

  @NotNull
  @Override
  public Collection<EnumerationDescriptor.MemberDescriptor> getMembers() {
    return Arrays.asList(VALUE_true_0, VALUE_false_0);
  }

  @Nullable
  @Override
  public EnumerationDescriptor.MemberDescriptor getMember(@Nullable String string) {
    if (string == null) {
      return null;
    }
    switch (string) {
      case "true":
        return VALUE_true_0;
      case "false":
        return VALUE_false_0;
    }
    return null;
  }
}
