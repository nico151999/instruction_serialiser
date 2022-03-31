import { ArithmeticVariableNode } from './instruction_serialiser/instruction_serialiser_pb';
import { CalculationError } from './calculation_error';
import { CalculatableNode } from './calculatable_node';
import { ArithmeticResultNodeWrapper } from './arithmetic_result_node_wrapper';
import { InstructionParameters } from './instruction_parameters';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface ArithmeticVariableNode extends CalculatableNode<number> {}
}

ArithmeticVariableNode.prototype.calculate = function(parameters: InstructionParameters): number {
  const val = parameters[this.getVariableName()];
  if (val === undefined) {
    throw new CalculationError(`The variable ${this.getVariableName()} was not passed`);
  } else if (Number.isFinite(val)) {
    return val as number;
  }
  throw new CalculationError(`The variable ${this.getVariableName()} needs to be of type number`);
};

function createArithmeticVariableNode(variableName: string): ArithmeticResultNodeWrapper {
  return new ArithmeticResultNodeWrapper().setVariableNode(
    new ArithmeticVariableNode().setVariableName(variableName)
  );
}

export { ArithmeticVariableNode, createArithmeticVariableNode };
