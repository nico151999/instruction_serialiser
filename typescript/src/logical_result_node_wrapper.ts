import {
  LogicalResultNodeWrapper,
  InstructionWrapper,
  AndNode,
} from './instruction_serialiser/instruction_serialiser_pb';
import { CalculationError } from './calculation_error';
import { CalculatableNode } from './calculatable_node';
import { ParameterType } from './parameter_type';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface LogicalResultNodeWrapper {
    calculate(parameters: Map<string, ParameterType>): boolean;
    and(other: LogicalResultNodeWrapper): LogicalResultNodeWrapper;
    serialise(): Uint8Array;
  }
}

LogicalResultNodeWrapper.prototype.serialise = function(): Uint8Array {
  return new InstructionWrapper().setArithmeticWrapper(this).serializeBinary();
};

LogicalResultNodeWrapper.prototype.and = function(other: LogicalResultNodeWrapper): LogicalResultNodeWrapper {
  return new LogicalResultNodeWrapper().setAndNode(
    new AndNode().setLeftChild(this).setRightChild(other)
  );
};

LogicalResultNodeWrapper.prototype.calculate = function(parameters: Map<string, ParameterType>): boolean {
  let node: CalculatableNode<boolean>;
  switch (this.getNodeCase()) {
    case LogicalResultNodeWrapper.NodeCase.AND_NODE: {
      node = this.getAndNode();
      break;
    }
  }
  return node.calculate(parameters);
};

export { LogicalResultNodeWrapper };
