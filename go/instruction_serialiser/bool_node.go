package instruction_serialiser

func (n *BoolNode) calculate(_ map[string]interface{}) (LogicalType, error) {
	return n.GetValue(), nil
}

func NewBool(value LogicalType) *LogicalResultNodeWrapper {
	return &LogicalResultNodeWrapper{
		Node: &LogicalResultNodeWrapper_BoolNode{
			BoolNode: &BoolNode{
				Value: value,
			},
		},
	}
}
