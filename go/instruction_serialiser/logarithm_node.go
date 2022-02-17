package instruction_serialiser

import (
	"math"
)

func (n *LogarithmNode) calculate(parameters map[string]interface{}) (ArithmeticType, error) {
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
	// logarithm of leftVal to base rightVal
	return math.Log10(leftVal) / math.Log10(rightVal), nil
}

func (a *ArithmeticResultNodeWrapper) Logarithm(baseNode *ArithmeticResultNodeWrapper) *ArithmeticResultNodeWrapper {
	return &ArithmeticResultNodeWrapper{
		Node: &ArithmeticResultNodeWrapper_LogarithmNode{
			LogarithmNode: &LogarithmNode{
				LeftChild:  a,
				RightChild: baseNode,
			},
		},
	}
}
