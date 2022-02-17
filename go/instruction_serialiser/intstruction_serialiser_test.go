package instruction_serialiser

import (
	"testing"
)

// TODO: write tests for each node

func TestArithmeticNodes(t *testing.T) {
	result, err := NewNumberNode(8).Multiply(
		NewNumberNode(8).Logarithm(
			NewNumberNode(2))).Calculate(nil)
	if err != nil {
		t.Errorf("%s", err.Error())
	}
	if result != 24 {
		t.Error("Unexpected calculation result")
	}
	t.Logf("%f", result)
}

func TestArithmeticParameters(t *testing.T) {
	result, err := NewArithmeticVariable("x").Multiply(
		NewNumberNode(3)).Calculate(
		map[string]interface{}{
			"x": 3.0,
		})
	if err != nil {
		t.Errorf("%s", err.Error())
	}
	if result != 9 {
		t.Error("Unexpected calculation result")
	}
	t.Logf("%f", result)
}

func TestLogicalNodes(t *testing.T) {
	result, err := NewBool(true).And(
		NewBool(false).Xor(
			NewBool(true))).Negate().Calculate(nil)
	if err != nil {
		t.Errorf("%s", err.Error())
	}
	if result == true {
		t.Error("Unexpected calculation result")
	}
	t.Logf("%t", result)
}

func TestLogicalParameters(t *testing.T) {
	result, err := NewLogicalVariable("x").Xor(
		NewLogicalVariable("x")).Negate().Calculate(
		map[string]interface{}{
			"x": false,
		})
	if err != nil {
		t.Errorf("%s", err.Error())
	}
	if result == false {
		t.Error("Expected true after checking the variable for equality with itself")
	}
	t.Logf("%t", result)
}

func TestSerialisation(t *testing.T) {
	const variableParameter = 3.0
	const variableName = "x"
	instruction := NewNumberNode(10).Modulo(NewArithmeticVariable(variableName))
	result, err := instruction.Calculate(map[string]interface{}{variableName: variableParameter})
	if err != nil {
		t.Errorf("%s", err.Error())
	}
	if result != 1 {
		t.Error("Unexpected calculation result")
	}
	serialised, err := instruction.Serialise()
	if err != nil {
		t.Errorf("%s", err.Error())
	}
	wrapper, err := DeserialiseInstruction(serialised)
	if err != nil {
		t.Errorf("%s", err.Error())
	}
	switch wrapper.GetWrapper().(type) {
	case *InstructionWrapper_LogicalWrapper:
		t.Error("Did not expect a logical result instruction")
	case *InstructionWrapper_ArithmeticWrapper:
		instruction = wrapper.GetArithmeticWrapper()
		newResult, err := instruction.Calculate(map[string]interface{}{variableName: variableParameter})
		if err != nil {
			t.Errorf("%s", err.Error())
		}
		if result != newResult {
			t.Error("The new calculation result does not match the old one")
		}
	}
}
