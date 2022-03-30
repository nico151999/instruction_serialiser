import { CalculatableNode } from './calculatable_node';
import { ModuloNode } from './instruction_serialiser/instruction_serialiser_pb';
import { ParameterType } from './parameter_type';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface ModuloNode extends CalculatableNode<number> {}
}

ModuloNode.prototype.calculate = function(parameters: Map<string, ParameterType>): number {
  return this.getLeftChild().calculate(parameters) %
    this.getRightChild().calculate(parameters);
};

export { ModuloNode };
