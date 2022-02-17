package instruction_serialiser

func (n *OrNode) calculate(parameters map[string]interface{}) (LogicalType, error) {
	var leftVal LogicalType
	{
		var err error
		if leftVal, err = n.GetLeftChild().Calculate(parameters); err != nil {
			return false, err
		}
	}
	var rightVal LogicalType
	{
		var err error
		if rightVal, err = n.GetRightChild().Calculate(parameters); err != nil {
			return false, err
		}
	}
	return leftVal || rightVal, nil
}

func (a *LogicalResultNodeWrapper) Or(node *LogicalResultNodeWrapper) *LogicalResultNodeWrapper {
	return &LogicalResultNodeWrapper{
		Node: &LogicalResultNodeWrapper_OrNode{
			OrNode: &OrNode{
				LeftChild:  a,
				RightChild: node,
			},
		},
	}
}
