package instruction_serialiser

func (n *XorNode) calculate(parameters map[string]interface{}) (LogicalType, error) {
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
	return leftVal != rightVal, nil
}

func (a *LogicalResultNodeWrapper) Xor(node *LogicalResultNodeWrapper) *LogicalResultNodeWrapper {
	return &LogicalResultNodeWrapper{
		Node: &LogicalResultNodeWrapper_XorNode{
			XorNode: &XorNode{
				LeftChild:  a,
				RightChild: node,
			},
		},
	}
}
