import { SmallerThanNode } from './instruction_serialiser/instruction_serialiser_pb';
import { CalculatableNode } from './calculatable_node';
import { InstructionParameters } from './instruction_parameters';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface SmallerThanNode extends CalculatableNode<boolean> {}
}

SmallerThanNode.prototype.calculate = function(parameters: InstructionParameters): boolean {
  return this.getLeftChild().calculate(parameters) < this.getRightChild().calculate(parameters);
};

export { SmallerThanNode };
