import { CalculatableNode } from './calculatable_node';
import { ArithmeticIfElseNode } from './instruction_serialiser/instruction_serialiser_pb';
import { ParameterType } from './parameter_type';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface ArithmeticIfElseNode extends CalculatableNode<number> {}
}

ArithmeticIfElseNode.prototype.calculate = function(parameters: Map<string, ParameterType>): number {
  return this.getCondition().calculate(parameters) ?
    this.getIf().calculate(parameters) :
    this.getElse().calculate(parameters);
};

export { ArithmeticIfElseNode };
