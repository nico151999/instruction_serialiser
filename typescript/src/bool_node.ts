import { BoolNode } from './instruction_serialiser/instruction_serialiser_pb';
import { CalculatableNode } from './calculatable_node';
import { LogicalResultNodeWrapper } from './logical_result_node_wrapper';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface BoolNode extends CalculatableNode<boolean> {}
}

BoolNode.prototype.calculate = function(): boolean {
  return this.getValue();
};

function createBoolNode(value: boolean): LogicalResultNodeWrapper {
  return new LogicalResultNodeWrapper().setBoolNode(
    new BoolNode().setValue(value)
  );
}

export { BoolNode, createBoolNode };
