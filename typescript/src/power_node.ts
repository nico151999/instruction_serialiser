import { CalculatableNode } from './calculatable_node';
import { PowerNode } from './instruction_serialiser/instruction_serialiser_pb';
import { ParameterType } from './parameter_type';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface PowerNode extends CalculatableNode<number> {}
}

PowerNode.prototype.calculate = function(parameters: Map<string, ParameterType>): number {
  return Math.pow(
    this.getLeftChild().calculate(parameters),
    this.getRightChild().calculate(parameters)
  );
};

export { PowerNode };
