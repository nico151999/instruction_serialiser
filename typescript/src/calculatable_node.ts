import { ParameterType } from './parameter_type';
import { InstructionParameters } from './instruction_parameters';

export interface CalculatableNode<T extends ParameterType> {
  calculate(parameters: InstructionParameters): T;
}
