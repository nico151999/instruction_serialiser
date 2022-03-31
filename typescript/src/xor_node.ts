import { XorNode } from './instruction_serialiser/instruction_serialiser_pb';
import { CalculatableNode } from './calculatable_node';
import { InstructionParameters } from './instruction_parameters';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface XorNode extends CalculatableNode<boolean> {}
}

XorNode.prototype.calculate = function(parameters: InstructionParameters): boolean {
  return this.getLeftChild().calculate(parameters) !== this.getRightChild().calculate(parameters);
};

export { XorNode };
