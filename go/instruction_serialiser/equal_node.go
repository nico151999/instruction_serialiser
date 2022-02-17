package instruction_serialiser

func (n *EqualNode) calculate(parameters map[string]interface{}) (LogicalType, error) {
	var leftVal ArithmeticType
	{
		var err error
		if leftVal, err = n.GetLeftChild().Calculate(parameters); err != nil {
			return false, err
		}
	}
	var rightVal ArithmeticType
	{
		var err error
		if rightVal, err = n.GetRightChild().Calculate(parameters); err != nil {
			return false, err
		}
	}
	return leftVal == rightVal, nil
}

func (a *ArithmeticResultNodeWrapper) Equal(node *ArithmeticResultNodeWrapper) *LogicalResultNodeWrapper {
	return &LogicalResultNodeWrapper{
		Node: &LogicalResultNodeWrapper_EqualNode{
			EqualNode: &EqualNode{
				LeftChild:  a,
				RightChild: node,
			},
		},
	}
}
