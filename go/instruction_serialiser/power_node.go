package instruction_serialiser

import (
	"math"
)

func (n *PowerNode) calculate(parameters map[string]interface{}) (ArithmeticType, error) {
	var leftVal ArithmeticType
	{
		var err error
		if leftVal, err = n.GetLeftChild().Calculate(parameters); err != nil {
			return 0, err
		}
	}
	var rightVal ArithmeticType
	{
		var err error
		if rightVal, err = n.GetRightChild().Calculate(parameters); err != nil {
			return 0, err
		}
	}
	return math.Pow(leftVal, rightVal), nil
}

func (a *ArithmeticResultNodeWrapper) Power(exponentNode *ArithmeticResultNodeWrapper) *ArithmeticResultNodeWrapper {
	return &ArithmeticResultNodeWrapper{
		Node: &ArithmeticResultNodeWrapper_PowerNode{
			PowerNode: &PowerNode{
				LeftChild:  a,
				RightChild: exponentNode,
			},
		},
	}
}
