package instruction_serialiser

type arithmeticNode interface {
	calculate(parameters map[string]interface{}) (ArithmeticType, error)
}
