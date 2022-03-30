import { ArithmeticResultNodeWrapper, InstructionWrapper } from './instruction_serialiser/instruction_serialiser_pb';
import { CalculationError } from './calculation_error';
import { CalculatableNode } from './calculatable_node';
import { ParameterType } from './parameter_type';
import { AddNode } from './add_node';

declare module './instruction_serialiser/instruction_serialiser_pb' {
  interface ArithmeticResultNodeWrapper {
    calculate(parameters: Map<string, ParameterType>): number;
    add(other: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper;
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

ArithmeticResultNodeWrapper.prototype.calculate = function(parameters: Map<string, ParameterType>): number {
  let node: CalculatableNode<number>;
  switch (this.getNodeCase()) {
    case ArithmeticResultNodeWrapper.NodeCase.ADD_NODE: {
      node = this.getAddNode();
      break;
    }
    case ArithmeticResultNodeWrapper.NodeCase.DIVIDE_NODE: {
      node = this.getDivideNode();
      break;
    }
    case ArithmeticResultNodeWrapper.NodeCase.NODE_NOT_SET: {
      throw new CalculationError('A child is not provided');
    }
    case ArithmeticResultNodeWrapper.NodeCase.MULTIPLY_NODE: {
      node = this.getMultiplyNode();
      break;
    }
    case ArithmeticResultNodeWrapper.NodeCase.NUMBER_NODE: {
      node = this.getNumberNode();
      break;
    }
    case ArithmeticResultNodeWrapper.NodeCase.SUBTRACT_NODE: {
      node = this.getSubtractNode();
      break;
    }
    case ArithmeticResultNodeWrapper.NodeCase.VARIABLE_NODE: {
      node = this.getVariableNode();
      break;
    }
    case ArithmeticResultNodeWrapper.NodeCase.LOGARITHM_NODE: {
      node = this.getLogarithmNode();
      break;
    }
    case ArithmeticResultNodeWrapper.NodeCase.POWER_NODE: {
      node = this.getPowerNode();
      break;
    }
    case ArithmeticResultNodeWrapper.NodeCase.MODULO_NODE: {
      node = this.getModuloNode();
      break;
    }
    case ArithmeticResultNodeWrapper.NodeCase.IF_ELSE_NODE: {
      node = this.getIfElseNode();
      break;
    }
  }
  return node.calculate(parameters);
};

export { ArithmeticResultNodeWrapper };
