import {
    ArithmeticResultNodeWrapper as ArithmeticResultNodeWrapperBase
} from "./instruction_serialiser/instruction_serialiser_pb";
import {ParameterType} from "./parameter_type";
import {AddNode} from "./add_node";
import {CalculationError} from "./calculation_error";

export class ArithmeticResultNodeWrapper extends ArithmeticResultNodeWrapperBase {
    calculate(parameters: Map<String, ParameterType>): number {
        switch (this.getNodeCase()) {
            case ArithmeticResultNodeWrapper.NodeCase.ADD_NODE:
                const addNode = this.getAddNode();
                if (addNode instanceof AddNode) {
                    return addNode.calculate(parameters);
                }
                throw new CalculationError('A child is not of expected type AddNode');
        }
    }
}