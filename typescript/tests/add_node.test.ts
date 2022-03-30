import { createNumberNode, deserialiseInstruction } from '../src';

describe('AddNode', () => {
  it('Should be able to perform an Add operation using the AddNode', async () => {
    let numberNode = createNumberNode(1);
    numberNode = numberNode.add(numberNode);
    expect(numberNode.calculate(new Map())).toBe(2);
    const wrapper = deserialiseInstruction(numberNode.serialise());
    expect(wrapper.getArithmeticWrapper().calculate(new Map())).toBe(2);
  });
});
