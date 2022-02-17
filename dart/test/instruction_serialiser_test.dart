import 'package:instruction_serialiser/instruction_serialiser.dart';
import 'package:test/test.dart';

void main() {
  // TODO: write tests for each node
  test('Add operation should work', () {
    final variableName = 'x';
    var arithmeticResultNodeWrapper =
        createArithmeticVariableNode(variableName) +
            createNumberNode(7) -
            createArithmeticVariableNode(variableName);
    arithmeticResultNodeWrapper += createArithmeticVariableNode(variableName);
    final logicalResultNodeWrapper = arithmeticResultNodeWrapper.equal(
      createNumberNode(30) / createNumberNode(2)
    ) ^ createBoolNode(false);
    final serialised = logicalResultNodeWrapper.serialise();
    final instructionWrapper = deserialiseInstruction(serialised);
    expect(
      true,
      instructionWrapper.logicalWrapper.calculate({variableName: 8}),
      reason: '((8+7-8+8)==(30/2)) XOR false'
    );
  });
}
