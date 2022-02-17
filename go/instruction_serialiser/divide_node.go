package instruction_serialiser

func (n *DivideNode) calculate(parameters map[string]interface{}) (ArithmeticType, error) {
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
	return leftVal / rightVal, nil
}

func (a *ArithmeticResultNodeWrapper) Divide(divisorNode *ArithmeticResultNodeWrapper) *ArithmeticResultNodeWrapper {
	return &ArithmeticResultNodeWrapper{
		Node: &ArithmeticResultNodeWrapper_DivideNode{
			DivideNode: &DivideNode{
				LeftChild:  a,
				RightChild: divisorNode,
			},
		},
	}
}
