import { NegateNode } from './instruction_serialiser/instruction_serialiser_pb';
import { CalculatableNode } from './calculatable_node';
import { InstructionParameters } from './instruction_parameters';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface NegateNode extends CalculatableNode<boolean> {}
}

NegateNode.prototype.calculate = function(parameters: InstructionParameters): boolean {
  return !this.getChild().calculate(parameters);
};

export { NegateNode };
