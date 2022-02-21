package instruction_serialiser

func (n *SmallerThanOrEqualNode) calculate(parameters map[string]interface{}) (LogicalType, error) {
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
	return leftVal <= rightVal, nil
}

func (a *ArithmeticResultNodeWrapper) SmallerThanOrEqual(node *ArithmeticResultNodeWrapper) *LogicalResultNodeWrapper {
	return &LogicalResultNodeWrapper{
		Node: &LogicalResultNodeWrapper_GreaterThanNode{
			GreaterThanNode: &GreaterThanNode{
				LeftChild:  a,
				RightChild: node,
			},
		},
	}
}
