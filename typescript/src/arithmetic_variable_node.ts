import { ArithmeticVariableNode } from './instruction_serialiser/instruction_serialiser_pb';
import { ParameterType } from './parameter_type';
import { CalculationError } from './calculation_error';
import { CalculatableNode } from './calculatable_node';
import { ArithmeticResultNodeWrapper } from './arithmetic_result_node_wrapper';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface ArithmeticVariableNode extends CalculatableNode<number> {}
}

ArithmeticVariableNode.prototype.calculate = function(parameters: Map<string, ParameterType>): number {
  const val = parameters[this.getVariableName()];
  if (val === undefined) {
    throw new CalculationError(`The variable ${this.getVariableName()} was not passed`);
  } else if (isNaN(val)) {
    throw new CalculationError(`The variable ${this.getVariableName()} needs to be of type number`);
  }
  return val;
};

function createArithmeticVariableNode(variableName: string): ArithmeticResultNodeWrapper {
  return new ArithmeticResultNodeWrapper().setVariableNode(
    new ArithmeticVariableNode().setVariableName(variableName)
  );
}

export { ArithmeticVariableNode, createArithmeticVariableNode };
