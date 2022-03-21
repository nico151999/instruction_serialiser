import { ParameterType } from './parameter_type';

export interface CalculatableNode<T extends ParameterType> {
  calculate(parameters: Map<string, ParameterType>): T;
}
