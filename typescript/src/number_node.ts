import { NumberNode as NumberNodeBase } from './instruction_serialiser/instruction_serialiser_pb';
import { CalculatableNode } from './calculatable_node';

export class NumberNode extends NumberNodeBase implements CalculatableNode<number> {
  calculate(): number {
    return this.getValue();
  }
}
