package instruction_serialiser

func (n *NegateNode) calculate(parameters map[string]interface{}) (LogicalType, error) {
	var val LogicalType
	{
		var err error
		if val, err = n.GetChild().Calculate(parameters); err != nil {
			return false, err
		}
	}
	return !val, nil
}

func (a *LogicalResultNodeWrapper) Negate() *LogicalResultNodeWrapper {
	return &LogicalResultNodeWrapper{
		Node: &LogicalResultNodeWrapper_NegateNode{
			NegateNode: &NegateNode{
				Child: a,
			},
		},
	}
}
