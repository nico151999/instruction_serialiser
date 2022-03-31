import { CalculatableNode } from './calculatable_node';
import { MultiplyNode } from './instruction_serialiser/instruction_serialiser_pb';
import { InstructionParameters } from './instruction_parameters';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface MultiplyNode extends CalculatableNode<number> {}
}

MultiplyNode.prototype.calculate = function(parameters: InstructionParameters): number {
  return this.getLeftChild().calculate(parameters) *
    this.getRightChild().calculate(parameters);
};

export { MultiplyNode };
