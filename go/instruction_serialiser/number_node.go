package instruction_serialiser

func (n *NumberNode) calculate(_ map[string]interface{}) (ArithmeticType, error) {
	return n.GetValue(), nil
}

func NewNumberNode(value ArithmeticType) *ArithmeticResultNodeWrapper {
	return &ArithmeticResultNodeWrapper{
		Node: &ArithmeticResultNodeWrapper_NumberNode{
			NumberNode: &NumberNode{
				Value: value,
			},
		},
	}
}
