import {AddNode as AddNodeBase} from "./instruction_serialiser/instruction_serialiser_pb";
import {ParameterType} from "./parameter_type";
import {ArithmeticResultNodeWrapper} from "./arithmetic_result_node_wrapper";
import {CalculationError} from "./calculation_error";

export class AddNode extends AddNodeBase {
    calculate(parameters: Map<String, ParameterType>): number {
        const leftChild = this.getLeftChild();
        const rightChild = this.getRightChild();
        if (leftChild instanceof ArithmeticResultNodeWrapper && rightChild instanceof ArithmeticResultNodeWrapper) {
            return leftChild.calculate(parameters) +
                rightChild.calculate(parameters);
        }
        throw new CalculationError('A child is not of type ArithmeticResultNodeWrapper');
    }
}