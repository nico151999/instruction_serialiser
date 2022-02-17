import 'dart:typed_data';

import 'instruction_serialiser/instruction_serialiser.pbserver.dart';

InstructionWrapper deserialiseInstruction(Uint8List data) {
  return InstructionWrapper.fromBuffer(data);
}
