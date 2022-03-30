import { CalculatableNode } from './calculatable_node';
import { MultiplyNode } from './instruction_serialiser/instruction_serialiser_pb';
import { ParameterType } from './parameter_type';
import { ArithmeticResultNodeWrapper } from './arithmetic_result_node_wrapper';
import { CalculationError } from './calculation_error';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface MultiplyNode extends CalculatableNode<number> {}
}

MultiplyNode.prototype.calculate = function(parameters: Map<string, ParameterType>): number {
  const leftChild = this.getLeftChild();
  const rightChild = this.getRightChild();
  if (leftChild instanceof ArithmeticResultNodeWrapper && rightChild instanceof ArithmeticResultNodeWrapper) {
    return leftChild.calculate(parameters) *
      rightChild.calculate(parameters);
  }
  throw new CalculationError('A child is not of type ArithmeticResultNodeWrapper');
};

export { MultiplyNode };
