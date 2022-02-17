package instruction_serialiser

import "google.golang.org/protobuf/proto"

func DeserialiseInstruction(serialised []byte) (*InstructionWrapper, error) {
	var arithmeticResultNodeWrapper InstructionWrapper
	return &arithmeticResultNodeWrapper, proto.Unmarshal(serialised, &arithmeticResultNodeWrapper)
}
