import { createArithmeticVariableNode, createNumberNode, deserialiseInstruction } from '../src';
import { InstructionWrapper } from '../src/instruction_serialiser/instruction_serialiser_pb';
import WrapperCase = InstructionWrapper.WrapperCase;

describe('AddNode', () => {
  it('Should be able to perform an Add operation using the AddNode', async () => {
    const numberNode = createNumberNode(2);
    const variableName = 'x';
    const expression = numberNode.add(createArithmeticVariableNode(variableName));
    const param = {
      [variableName]: 2
    };
    const expectedResult = 4;
    expect(
      expression.calculate(param)
    ).toBe(expectedResult);
    const wrapper = deserialiseInstruction(expression.serialise());
    expect(
      wrapper.getWrapperCase()
    ).toBe(WrapperCase.ARITHMETIC_WRAPPER);
    expect(
      wrapper.getArithmeticWrapper().calculate(param)
    ).toBe(expectedResult);
  });
});
