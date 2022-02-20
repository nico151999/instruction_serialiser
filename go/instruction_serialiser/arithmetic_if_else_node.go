package instruction_serialiser

func (n *ArithmeticIfElseNode) calculate(parameters map[string]interface{}) (ArithmeticType, error) {
	var condition LogicalType
	{
		var err error
		if condition, err = n.GetCondition().Calculate(parameters); err != nil {
			return 0, err
		}
	}
	if condition {
		return n.GetIf().Calculate(parameters)
	} else {
		return n.GetElse().Calculate(parameters)
	}
}

func (a *LogicalResultNodeWrapper) ArithmeticIfElse(ifNode *ArithmeticResultNodeWrapper, elseNode *ArithmeticResultNodeWrapper) *ArithmeticResultNodeWrapper {
	return &ArithmeticResultNodeWrapper{
		Node: &ArithmeticResultNodeWrapper_IfElseNode{
			IfElseNode: &ArithmeticIfElseNode{
				Condition: a,
				If:        ifNode,
				Else:      elseNode,
			},
		},
	}
}
