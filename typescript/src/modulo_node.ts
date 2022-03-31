import { CalculatableNode } from './calculatable_node';
import { ModuloNode } from './instruction_serialiser/instruction_serialiser_pb';
import { InstructionParameters } from './instruction_parameters';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface ModuloNode extends CalculatableNode<number> {}
}

ModuloNode.prototype.calculate = function(parameters: InstructionParameters): number {
  return this.getLeftChild().calculate(parameters) %
    this.getRightChild().calculate(parameters);
};

export { ModuloNode };
