import { ArithmeticResultNodeWrapper } from './instruction_serialiser/instruction_serialiser_pb';
import { DivideNode } from './divide_node';
import { InstructionWrapper } from './instruction_wrapper';
import { MultiplyNode } from './multiply_node';
import { SubtractNode } from './subtract_node';
import { LogarithmNode } from './logarithm_node';
import { PowerNode } from './power_node';
import { ModuloNode } from './modulo_node';
import { LogicalResultNodeWrapper } from './logical_result_node_wrapper';
import { EqualNode } from './equal_node';
import { GreaterThanNode } from './greater_than_node';
import { GreaterThanOrEqualNode } from './greater_than_or_equal_node';
import { SmallerThanNode } from './smaller_than_node';
import { SmallerThanOrEqualNode } from './smaller_than_or_equal_node';
import { CalculationError } from './calculation_error';
import { CalculatableNode } from './calculatable_node';
import { AddNode } from './add_node';
import NodeCase = ArithmeticResultNodeWrapper.NodeCase;
import { InstructionParameters } from './instruction_parameters';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface ArithmeticResultNodeWrapper {
    calculate(parameters: InstructionParameters): number;
    add(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper;
    divide(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper;
    multiply(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper;
    subtract(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper;
    logarithm(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper;
    power(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper;
    modulo(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper;
    equal(other: ArithmeticResultNodeWrapper): LogicalResultNodeWrapper;
    greaterThan(other: ArithmeticResultNodeWrapper): LogicalResultNodeWrapper;
    greaterThanOrEqual(other: ArithmeticResultNodeWrapper): LogicalResultNodeWrapper;
    smallerThan(other: ArithmeticResultNodeWrapper): LogicalResultNodeWrapper;
    smallerThanOrEqual(other: ArithmeticResultNodeWrapper): LogicalResultNodeWrapper;
    serialise(): Uint8Array;
  }
}

ArithmeticResultNodeWrapper.prototype.serialise = function(): Uint8Array {
  return new InstructionWrapper().setArithmeticWrapper(this).serializeBinary();
};

ArithmeticResultNodeWrapper.prototype.add = function(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper {
  return new ArithmeticResultNodeWrapper().setAddNode(
    new AddNode().setLeftChild(this).setRightChild(other)
  );
};

ArithmeticResultNodeWrapper.prototype.divide = function(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper {
  return new ArithmeticResultNodeWrapper().setDivideNode(
    new DivideNode().setLeftChild(this).setRightChild(other)
  );
};

ArithmeticResultNodeWrapper.prototype.multiply = function(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper {
  return new ArithmeticResultNodeWrapper().setMultiplyNode(
    new MultiplyNode().setLeftChild(this).setRightChild(other)
  );
};

ArithmeticResultNodeWrapper.prototype.subtract = function(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper {
  return new ArithmeticResultNodeWrapper().setSubtractNode(
    new SubtractNode().setLeftChild(this).setRightChild(other)
  );
};

ArithmeticResultNodeWrapper.prototype.logarithm = function(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper {
  return new ArithmeticResultNodeWrapper().setLogarithmNode(
    new LogarithmNode().setLeftChild(this).setRightChild(other)
  );
};

ArithmeticResultNodeWrapper.prototype.power = function(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper {
  return new ArithmeticResultNodeWrapper().setPowerNode(
    new PowerNode().setLeftChild(this).setRightChild(other)
  );
};

ArithmeticResultNodeWrapper.prototype.modulo = function(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper {
  return new ArithmeticResultNodeWrapper().setModuloNode(
    new ModuloNode().setLeftChild(this).setRightChild(other)
  );
};

ArithmeticResultNodeWrapper.prototype.equal = function(other: ArithmeticResultNodeWrapper): LogicalResultNodeWrapper {
  return new LogicalResultNodeWrapper().setEqualNode(
    new EqualNode().setLeftChild(this).setRightChild(other)
  );
};

ArithmeticResultNodeWrapper.prototype.greaterThan = function(other: ArithmeticResultNodeWrapper): LogicalResultNodeWrapper {
  return new LogicalResultNodeWrapper().setGreaterThanNode(
    new GreaterThanNode().setLeftChild(this).setRightChild(other)
  );
};

ArithmeticResultNodeWrapper.prototype.greaterThanOrEqual = function(other: ArithmeticResultNodeWrapper): LogicalResultNodeWrapper {
  return new LogicalResultNodeWrapper().setGreaterThanOrEqualNode(
    new GreaterThanOrEqualNode().setLeftChild(this).setRightChild(other)
  );
};

ArithmeticResultNodeWrapper.prototype.smallerThan = function(other: ArithmeticResultNodeWrapper): LogicalResultNodeWrapper {
  return new LogicalResultNodeWrapper().setGreaterThanNode(
    new SmallerThanNode().setLeftChild(this).setRightChild(other)
  );
};

ArithmeticResultNodeWrapper.prototype.smallerThanOrEqual = function(other: ArithmeticResultNodeWrapper): LogicalResultNodeWrapper {
  return new LogicalResultNodeWrapper().setGreaterThanOrEqualNode(
    new SmallerThanOrEqualNode().setLeftChild(this).setRightChild(other)
  );
};

ArithmeticResultNodeWrapper.prototype.calculate = function(parameters: InstructionParameters): number {
  let node: CalculatableNode<number>;
  // the following type cast is required for eslint to perform switch-exhaustiveness-check
  switch (this.getNodeCase() as NodeCase) {
    case NodeCase.ADD_NODE: {
      node = this.getAddNode();
      break;
    }
    case NodeCase.DIVIDE_NODE: {
      node = this.getDivideNode();
      break;
    }
    case NodeCase.NODE_NOT_SET: {
      throw new CalculationError('A child is not provided');
    }
    case NodeCase.MULTIPLY_NODE: {
      node = this.getMultiplyNode();
      break;
    }
    case NodeCase.NUMBER_NODE: {
      node = this.getNumberNode();
      break;
    }
    case NodeCase.SUBTRACT_NODE: {
      node = this.getSubtractNode();
      break;
    }
    case NodeCase.VARIABLE_NODE: {
      node = this.getVariableNode();
      break;
    }
    case NodeCase.LOGARITHM_NODE: {
      node = this.getLogarithmNode();
      break;
    }
    case NodeCase.POWER_NODE: {
      node = this.getPowerNode();
      break;
    }
    case NodeCase.MODULO_NODE: {
      node = this.getModuloNode();
      break;
    }
    case NodeCase.IF_ELSE_NODE: {
      node = this.getIfElseNode();
      break;
    }
  }
  return node.calculate(parameters);
};

export { ArithmeticResultNodeWrapper };
