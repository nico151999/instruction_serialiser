import { DivideNode } from './instruction_serialiser/instruction_serialiser_pb';
import { ParameterType } from './parameter_type';
import { CalculatableNode } from './calculatable_node';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface DivideNode extends CalculatableNode<number> {}
}

DivideNode.prototype.calculate = function(parameters: Map<string, ParameterType>): number {
  return this.getLeftChild().calculate(parameters) / this.getRightChild().calculate(parameters);
};

export { DivideNode };
