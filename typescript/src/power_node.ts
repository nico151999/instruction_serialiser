import { CalculatableNode } from './calculatable_node';
import { PowerNode } from './instruction_serialiser/instruction_serialiser_pb';
import { InstructionParameters } from './instruction_parameters';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface PowerNode extends CalculatableNode<number> {}
}

PowerNode.prototype.calculate = function(parameters: InstructionParameters): number {
  return Math.pow(
    this.getLeftChild().calculate(parameters),
    this.getRightChild().calculate(parameters)
  );
};

export { PowerNode };
