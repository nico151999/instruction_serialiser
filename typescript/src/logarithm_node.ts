import { CalculatableNode } from './calculatable_node';
import { LogarithmNode } from './instruction_serialiser/instruction_serialiser_pb';
import { ParameterType } from './parameter_type';

declare module './instruction_serialiser/instruction_serialiser_pb' {
    interface LogarithmNode extends CalculatableNode<number> {}
}

LogarithmNode.prototype.calculate = function(parameters: Map<string, ParameterType>): number {
  return Math.log(this.getLeftChild().calculate(parameters)) /
    Math.log(this.getRightChild().calculate(parameters));
};

export { LogarithmNode };
