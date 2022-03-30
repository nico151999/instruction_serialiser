import { CalculatableNode } from './calculatable_node';
import { LogarithmNode } from './instruction_serialiser/instruction_serialiser_pb';
import { ParameterType } from './parameter_type';
import { ArithmeticResultNodeWrapper } from './arithmetic_result_node_wrapper';
import { CalculationError } from './calculation_error';

declare module './instruction_serialiser/instruction_serialiser_pb' {
    interface LogarithmNode extends CalculatableNode<number> {}
}

LogarithmNode.prototype.calculate = function(parameters: Map<string, ParameterType>): number {
  const leftChild = this.getLeftChild();
  const rightChild = this.getRightChild();
  if (leftChild instanceof ArithmeticResultNodeWrapper && rightChild instanceof ArithmeticResultNodeWrapper) {
    return Math.log(leftChild.calculate(parameters)) /
          Math.log(rightChild.calculate(parameters));
  }
  throw new CalculationError('A child is not of type ArithmeticResultNodeWrapper');
};

export { LogarithmNode };
