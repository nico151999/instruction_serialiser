import { AddNode } from './instruction_serialiser/instruction_serialiser_pb';
import { ParameterType } from './parameter_type';
import { ArithmeticResultNodeWrapper } from './arithmetic_result_node_wrapper';
import { CalculationError } from './calculation_error';
import { CalculatableNode } from './calculatable_node';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface AddNode extends CalculatableNode<number> {}
}

AddNode.prototype.calculate = function(parameters: Map<string, ParameterType>): number {
  const leftChild = this.getLeftChild();
  const rightChild = this.getRightChild();
  if (leftChild instanceof ArithmeticResultNodeWrapper && rightChild instanceof ArithmeticResultNodeWrapper) {
    return leftChild.calculate(parameters) +
      rightChild.calculate(parameters);
  }
  throw new CalculationError('A child is not of type ArithmeticResultNodeWrapper');
};

export { AddNode };
