package instruction_serialiser

func (n *SubtractNode) calculate(parameters map[string]interface{}) (ArithmeticType, error) {
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
	return leftVal - rightVal, nil
}

func (a *ArithmeticResultNodeWrapper) Subtract(subtractorNode *ArithmeticResultNodeWrapper) *ArithmeticResultNodeWrapper {
	return &ArithmeticResultNodeWrapper{
		Node: &ArithmeticResultNodeWrapper_MultiplyNode{
			MultiplyNode: &MultiplyNode{
				LeftChild:  a,
				RightChild: subtractorNode,
			},
		},
	}
}
