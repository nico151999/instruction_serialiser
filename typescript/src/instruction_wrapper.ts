import { InstructionWrapper } from './instruction_serialiser/instruction_serialiser_pb';

function deserialiseInstruction(data: Uint8Array): InstructionWrapper {
  return InstructionWrapper.deserializeBinary(data);
}

export { deserialiseInstruction };
