import { LogicalResultNodeWrapper, } from './instruction_serialiser/instruction_serialiser_pb';
import { InstructionWrapper } from './instruction_wrapper';
import { AndNode } from './and_node';
import { NegateNode } from './negate_node';
import { OrNode } from './or_node';
import { XorNode } from './xor_node';
import { LogicalIfElseNode } from './logical_if_else_node';
import { CalculationError } from './calculation_error';
import { CalculatableNode } from './calculatable_node';
import { ArithmeticIfElseNode } from './arithmetic_if_else_node';
import { ArithmeticResultNodeWrapper } from './arithmetic_result_node_wrapper';
import NodeCase = LogicalResultNodeWrapper.NodeCase;
import { InstructionParameters } from './instruction_parameters';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface LogicalResultNodeWrapper {
    calculate(parameters: InstructionParameters): boolean;
    and(other: LogicalResultNodeWrapper): LogicalResultNodeWrapper;
    negate(): LogicalResultNodeWrapper;
    or(other: LogicalResultNodeWrapper): LogicalResultNodeWrapper;
    xor(other: LogicalResultNodeWrapper): LogicalResultNodeWrapper;
    logicalIfElse(iF: LogicalResultNodeWrapper, eLse: LogicalResultNodeWrapper): LogicalResultNodeWrapper;
    arithmeticIfElse(iF: ArithmeticResultNodeWrapper, eLse: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper;
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

LogicalResultNodeWrapper.prototype.negate = function(): LogicalResultNodeWrapper {
  return new LogicalResultNodeWrapper().setNegateNode(
    new NegateNode().setChild(this)
  );
};

LogicalResultNodeWrapper.prototype.negate = function(): LogicalResultNodeWrapper {
  return new LogicalResultNodeWrapper().setNegateNode(
    new NegateNode().setChild(this)
  );
};

LogicalResultNodeWrapper.prototype.or = function(other: LogicalResultNodeWrapper): LogicalResultNodeWrapper {
  return new LogicalResultNodeWrapper().setOrNode(
    new OrNode().setLeftChild(this).setRightChild(other)
  );
};

LogicalResultNodeWrapper.prototype.xor = function(other: LogicalResultNodeWrapper): LogicalResultNodeWrapper {
  return new LogicalResultNodeWrapper().setXorNode(
    new XorNode().setLeftChild(this).setRightChild(other)
  );
};

LogicalResultNodeWrapper.prototype.logicalIfElse = function(
  iF: LogicalResultNodeWrapper,
  eLse: LogicalResultNodeWrapper
): LogicalResultNodeWrapper {
  return new LogicalResultNodeWrapper().setIfElseNode(
    new LogicalIfElseNode().setCondition(this).setIf(iF).setElse(eLse)
  );
};

LogicalResultNodeWrapper.prototype.arithmeticIfElse = function(
  iF: ArithmeticResultNodeWrapper,
  eLse: ArithmeticResultNodeWrapper
): ArithmeticResultNodeWrapper {
  return new ArithmeticResultNodeWrapper().setIfElseNode(
    new ArithmeticIfElseNode().setCondition(this).setIf(iF).setElse(eLse)
  );
};

LogicalResultNodeWrapper.prototype.calculate = function(parameters: InstructionParameters): boolean {
  let node: CalculatableNode<boolean>;
  // the following type cast is required for eslint to perform switch-exhaustiveness-check
  switch (this.getNodeCase() as NodeCase) {
    case NodeCase.AND_NODE: {
      node = this.getAndNode();
      break;
    }
    case NodeCase.NODE_NOT_SET: {
      throw new CalculationError('A child is not provided');
    }
    case NodeCase.EQUAL_NODE: {
      node = this.getEqualNode();
      break;
    }
    case NodeCase.BOOL_NODE: {
      node = this.getBoolNode();
      break;
    }
    case NodeCase.NEGATE_NODE: {
      node = this.getNegateNode();
      break;
    }
    case NodeCase.OR_NODE: {
      node = this.getOrNode();
      break;
    }
    case NodeCase.XOR_NODE: {
      node = this.getXorNode();
      break;
    }
    case NodeCase.VARIABLE_NODE: {
      node = this.getVariableNode();
      break;
    }
    case NodeCase.IF_ELSE_NODE: {
      node = this.getIfElseNode();
      break;
    }
    case NodeCase.GREATER_THAN_NODE: {
      node = this.getGreaterThanNode();
      break;
    }
    case NodeCase.GREATER_THAN_OR_EQUAL_NODE: {
      node = this.getGreaterThanOrEqualNode();
      break;
    }
    case NodeCase.SMALLER_THAN_NODE: {
      node = this.getSmallerThanNode();
      break;
    }
    case NodeCase.SMALLER_THAN_OR_EQUAL_NODE: {
      node = this.getSmallerThanOrEqualNode();
      break;
    }
  }
  return node.calculate(parameters);
};

export { LogicalResultNodeWrapper };
