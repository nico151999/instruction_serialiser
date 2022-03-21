import {
  ArithmeticResultNodeWrapper as ArithmeticResultNodeWrapperBase,
} from './instruction_serialiser/instruction_serialiser_pb';
import { AddNode } from './add_node';
import { CalculationError } from './calculation_error';
import { CalculatableNode } from './calculatable_node';
import { DivideNode } from './divide_node';
import { ParameterType } from './parameter_type';
import { NumberNode } from './number_node';

export class ArithmeticResultNodeWrapper extends ArithmeticResultNodeWrapperBase {
  calculate(parameters: Map<string, ParameterType>): number {
    let node: CalculatableNode<number>;
    switch (this.getNodeCase()) {
    case ArithmeticResultNodeWrapper.NodeCase.ADD_NODE: {
      const addNode = this.getAddNode();
      if (addNode instanceof AddNode) {
        node = addNode;
      } else {
        throw new CalculationError('A child is not of expected type AddNode');
      }
      break;
    }
    case ArithmeticResultNodeWrapper.NodeCase.DIVIDE_NODE: {
      const divideNode = this.getDivideNode();
      if (divideNode instanceof DivideNode) {
        node = divideNode;
      } else {
        throw new CalculationError('A child is not of expected type DivideNode');
      }
      break;
    }
    case ArithmeticResultNodeWrapper.NodeCase.NODE_NOT_SET:
      break;
    case ArithmeticResultNodeWrapper.NodeCase.MULTIPLY_NODE:
      break;
    case ArithmeticResultNodeWrapper.NodeCase.NUMBER_NODE: {
      const numberNode = this.getNumberNode();
      if (numberNode instanceof NumberNode) {
        node = numberNode;
      } else {
        throw new CalculationError('A child is not of expected type NumberNode');
      }
      break;
    }
    case ArithmeticResultNodeWrapper.NodeCase.SUBTRACT_NODE:
      break;
    case ArithmeticResultNodeWrapper.NodeCase.VARIABLE_NODE:
      break;
    case ArithmeticResultNodeWrapper.NodeCase.LOGARITHM_NODE:
      break;
    case ArithmeticResultNodeWrapper.NodeCase.POWER_NODE:
      break;
    case ArithmeticResultNodeWrapper.NodeCase.MODULO_NODE:
      break;
    case ArithmeticResultNodeWrapper.NodeCase.IF_ELSE_NODE:
      break;
    }
    return node.calculate(parameters);
  }
}
