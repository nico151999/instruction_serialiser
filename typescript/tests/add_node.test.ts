import { NumberNode } from '../src/number_node';
import { ArithmeticResultNodeWrapper } from '../src';
import { AddNode } from '../src/add_node';

describe('AddNode', () => {
  it('Should be able to perform an Add operation using the AddNode', async () => {
    const numberNode = new NumberNode();
    numberNode.setValue(1);
    const arithmeticResultNode = new ArithmeticResultNodeWrapper();
    arithmeticResultNode.setNumberNode(numberNode);
    const addNode = new AddNode();
    addNode.setLeftChild(arithmeticResultNode);
    addNode.setRightChild(arithmeticResultNode);
    expect(addNode.calculate(new Map())).toBe(2);
  });
});
