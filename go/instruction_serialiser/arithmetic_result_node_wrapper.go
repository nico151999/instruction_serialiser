package instruction_serialiser

import (
	"errors"
	"google.golang.org/protobuf/proto"
	"reflect"
)

func (a *ArithmeticResultNodeWrapper) Calculate(parameters map[string]interface{}) (ArithmeticType, error) {
	if parameters == nil {
		parameters = map[string]interface{}{}
	}
	if a == nil {
		return 0, errors.New("an arithmetic result node wrapper in your expression is undefined")
	}
	value := reflect.ValueOf(a.GetNode())
	if value.IsNil() {
		return 0, errors.New("a node wrapper whose node's value is to be calculated must not be nil")
	}
	value = value.Elem().Field(0)
	if value.IsNil() {
		return 0, errors.New("a value which is to be calculated must not be nil")
	}
	if val, err := value.Interface().(arithmeticNode).calculate(parameters); err == nil {
		return val, nil
	} else {
		return 0, err
	}
}

func (a *ArithmeticResultNodeWrapper) Serialise() ([]byte, error) {
	return proto.Marshal(&InstructionWrapper{
		Wrapper: &InstructionWrapper_ArithmeticWrapper{
			ArithmeticWrapper: a,
		},
	})
}
