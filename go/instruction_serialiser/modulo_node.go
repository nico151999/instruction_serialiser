package instruction_serialiser

import "math"

func (n *ModuloNode) calculate(parameters map[string]interface{}) (ArithmeticType, error) {
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
	return math.Mod(leftVal, rightVal), nil
}

func (a *ArithmeticResultNodeWrapper) Modulo(divisorNode *ArithmeticResultNodeWrapper) *ArithmeticResultNodeWrapper {
	return &ArithmeticResultNodeWrapper{
		Node: &ArithmeticResultNodeWrapper_ModuloNode{
			ModuloNode: &ModuloNode{
				LeftChild:  a,
				RightChild: divisorNode,
			},
		},
	}
}
