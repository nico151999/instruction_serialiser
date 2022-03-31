import { DivideNode } from './instruction_serialiser/instruction_serialiser_pb';
import { CalculatableNode } from './calculatable_node';
import { InstructionParameters } from './instruction_parameters';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface DivideNode extends CalculatableNode<number> {}
}

DivideNode.prototype.calculate = function(parameters: InstructionParameters): number {
  return this.getLeftChild().calculate(parameters) / this.getRightChild().calculate(parameters);
};

export { DivideNode };
