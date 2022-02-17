package instruction_serialiser

import (
	"errors"
	"google.golang.org/protobuf/proto"
	"reflect"
)

func (l *LogicalResultNodeWrapper) Calculate(parameters map[string]interface{}) (LogicalType, error) {
	if parameters == nil {
		parameters = map[string]interface{}{}
	}
	if l == nil {
		return false, errors.New("a logical result node wrapper in your expression is undefined")
	}
	value := reflect.ValueOf(l.GetNode())
	if value.IsNil() {
		return false, errors.New("a node wrapper whose node's value is to be calculated must not be nil")
	}
	value = value.Elem().Field(0)
	if value.IsNil() {
		return false, errors.New("a value which is to be calculated must not be nil")
	}
	if val, err := value.Interface().(logicalNode).calculate(parameters); err == nil {
		return val, nil
	} else {
		return false, err
	}
}

func (l *LogicalResultNodeWrapper) Serialise() ([]byte, error) {
	return proto.Marshal(&InstructionWrapper{
		Wrapper: &InstructionWrapper_LogicalWrapper{
			LogicalWrapper: l,
		},
	})
}
