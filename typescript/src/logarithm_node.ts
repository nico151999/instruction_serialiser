import { CalculatableNode } from './calculatable_node';
import { LogarithmNode } from './instruction_serialiser/instruction_serialiser_pb';
import { InstructionParameters } from './instruction_parameters';

declare module './instruction_serialiser/instruction_serialiser_pb' {
    interface LogarithmNode extends CalculatableNode<number> {}
}

LogarithmNode.prototype.calculate = function(parameters: InstructionParameters): number {
  return Math.log(this.getLeftChild().calculate(parameters)) /
    Math.log(this.getRightChild().calculate(parameters));
};

export { LogarithmNode };
