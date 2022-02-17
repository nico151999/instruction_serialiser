package instruction_serialiser

type logicalNode interface {
	calculate(parameters map[string]interface{}) (LogicalType, error)
}
