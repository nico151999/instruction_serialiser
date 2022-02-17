package instruction_serialiser

import (
	"fmt"
)

func (n *LogicalVariableNode) calculate(parameters map[string]interface{}) (LogicalType, error) {
	param, ok := parameters[n.GetVariableName()]
	if !ok {
		return false, fmt.Errorf("parameter '%s' is required but was not passed", n.GetVariableName())
	}
	switch param.(type) {
	case LogicalType:
		return param.(LogicalType), nil
	default:
		return false, fmt.Errorf("parameter '%s' is expected to be of type bool but it is of type %T",
			n.GetVariableName(),
			param)
	}
}

func NewLogicalVariable(variableName string) *LogicalResultNodeWrapper {
	return &LogicalResultNodeWrapper{
		Node: &LogicalResultNodeWrapper_VariableNode{
			VariableNode: &LogicalVariableNode{
				VariableName: variableName,
			},
		},
	}
}
