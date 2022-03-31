import { LogicalVariableNode } from './instruction_serialiser/instruction_serialiser_pb';
import { CalculatableNode } from './calculatable_node';
import { LogicalResultNodeWrapper } from './logical_result_node_wrapper';
import { CalculationError } from './calculation_error';
import { InstructionParameters } from './instruction_parameters';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface LogicalVariableNode extends CalculatableNode<boolean> {}
}

LogicalVariableNode.prototype.calculate = function(parameters: InstructionParameters): boolean {
  const val = parameters[this.getVariableName()];
  if (val === undefined) {
    throw new CalculationError(`The variable ${this.getVariableName()} was not passed`);
  } else if (!!val === val) {
    return val;
  }
  throw new CalculationError(`The variable ${this.getVariableName()} needs to be of type boolean`);
};

function createLogicalVariableNode(variableName: string): LogicalResultNodeWrapper {
  return new LogicalResultNodeWrapper().setVariableNode(
    new LogicalVariableNode().setVariableName(variableName)
  );
}

export { LogicalVariableNode, createLogicalVariableNode };
