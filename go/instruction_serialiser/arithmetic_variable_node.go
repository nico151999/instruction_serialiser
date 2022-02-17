package instruction_serialiser

import (
	"fmt"
)

func (n *ArithmeticVariableNode) calculate(parameters map[string]interface{}) (ArithmeticType, error) {
	param, ok := parameters[n.GetVariableName()]
	if !ok {
		return 0, fmt.Errorf("parameter '%s' is required but was not passed", n.GetVariableName())
	}
	switch param.(type) {
	case ArithmeticType:
		return param.(ArithmeticType), nil
	default:
		return 0, fmt.Errorf("parameter '%s' is expected to be of type float64 but it is of type %T",
			n.GetVariableName(),
			param)
	}
}

func NewArithmeticVariable(variableName string) *ArithmeticResultNodeWrapper {
	return &ArithmeticResultNodeWrapper{
		Node: &ArithmeticResultNodeWrapper_VariableNode{
			VariableNode: &ArithmeticVariableNode{
				VariableName: variableName,
			},
		},
	}
}
