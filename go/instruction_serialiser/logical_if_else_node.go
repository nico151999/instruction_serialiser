package instruction_serialiser

func (n *LogicalIfElseNode) calculate(parameters map[string]interface{}) (LogicalType, error) {
	var condition LogicalType
	{
		var err error
		if condition, err = n.GetCondition().Calculate(parameters); err != nil {
			return false, err
		}
	}
	if condition {
		return n.GetIf().Calculate(parameters)
	} else {
		return n.GetElse().Calculate(parameters)
	}
}

func (l *LogicalResultNodeWrapper) LogicalIfElse(ifNode *LogicalResultNodeWrapper, elseNode *LogicalResultNodeWrapper) *LogicalResultNodeWrapper {
	return &LogicalResultNodeWrapper{
		Node: &LogicalResultNodeWrapper_IfElseNode{
			IfElseNode: &LogicalIfElseNode{
				Condition: l,
				If:        ifNode,
				Else:      elseNode,
			},
		},
	}
}
