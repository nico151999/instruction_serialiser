import { NumberNode, } from './instruction_serialiser/instruction_serialiser_pb';
import { ArithmeticResultNodeWrapper } from './arithmetic_result_node_wrapper';
import { CalculatableNode } from './calculatable_node';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface NumberNode extends CalculatableNode<number> {}
}

NumberNode.prototype.calculate = function(): number {
  return this.getValue();
};

function createNumberNode(num: number): ArithmeticResultNodeWrapper {
  return new ArithmeticResultNodeWrapper().setNumberNode(
    new NumberNode().setValue(num)
  );
}

export { NumberNode, createNumberNode };
