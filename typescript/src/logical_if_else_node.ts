import { CalculatableNode } from './calculatable_node';
import { LogicalIfElseNode } from './instruction_serialiser/instruction_serialiser_pb';
import { InstructionParameters } from './instruction_parameters';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface LogicalIfElseNode extends CalculatableNode<boolean> {}
}

LogicalIfElseNode.prototype.calculate = function(parameters: InstructionParameters): boolean {
  return this.getCondition().calculate(parameters) ?
    this.getIf().calculate(parameters) :
    this.getElse().calculate(parameters);
};

export { LogicalIfElseNode };
