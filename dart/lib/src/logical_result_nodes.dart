import 'dart:typed_data';

import 'arithmetic_result_nodes.dart';
import 'calculation_exception.dart';
import 'logical_type.dart';
import 'instruction_serialiser/instruction_serialiser.pbserver.dart';

extension LRNW on LogicalResultNodeWrapper {
  LogicalType calculate(Map<String, dynamic> parameters) {
    if (this.hasAndNode()) {
      return this.ensureAndNode().calculate(parameters);
    } else if (this.hasBoolNode()) {
      return this.ensureBoolNode().calculate(parameters);
    } else if (this.hasEqualNode()) {
      return this.ensureEqualNode().calculate(parameters);
    } else if (this.hasIfElseNode()) {
      return this.ensureIfElseNode().calculate(parameters);
    } else if (this.hasNegateNode()) {
      return this.ensureNegateNode().calculate(parameters);
    } else if (this.hasOrNode()) {
      return this.ensureOrNode().calculate(parameters);
    } else if (this.hasVariableNode()) {
      return this.ensureVariableNode().calculate(parameters);
    } else if (this.hasXorNode()) {
      return this.ensureXorNode().calculate(parameters);
    } else {
      // this arm is meant to allow easier debugging if a new arithmetic node
      // type is added in the future.
      // if there is a language feature allowing for doing something generic
      // use it instead.
      throw CalculationException(
          'A logical result node wrapper requires a supported node'
      );
    }
  }

  LogicalResultNodeWrapper operator &(LogicalResultNodeWrapper other) {
    return LogicalResultNodeWrapper(
        andNode: AndNode(
            leftChild: this,
            rightChild: other
        )
    );
  }

  ArithmeticResultNodeWrapper arithmeticIfElse(
      ArithmeticResultNodeWrapper ifNode,
      ArithmeticResultNodeWrapper elseNode) {
    return ArithmeticResultNodeWrapper(
        ifElseNode: ArithmeticIfElseNode(
            condition: this,
            if_2: ifNode,
            else_3: elseNode
        )
    );
  }

  LogicalResultNodeWrapper logicalIfElse(
      LogicalResultNodeWrapper ifNode,
      LogicalResultNodeWrapper elseNode) {
    return LogicalResultNodeWrapper(
        ifElseNode: LogicalIfElseNode(
            condition: this,
            if_2: ifNode,
            else_3: elseNode
        )
    );
  }

  LogicalResultNodeWrapper negate() {
    return LogicalResultNodeWrapper(
        negateNode: NegateNode(
            child: this,
        )
    );
  }

  LogicalResultNodeWrapper operator |(LogicalResultNodeWrapper other) {
    return LogicalResultNodeWrapper(
        orNode: OrNode(
            leftChild: this,
            rightChild: other
        )
    );
  }

  LogicalResultNodeWrapper operator ^(LogicalResultNodeWrapper other) {
    return LogicalResultNodeWrapper(
        xorNode: XorNode(
            leftChild: this,
            rightChild: other
        )
    );
  }

  Uint8List serialise() {
    return InstructionWrapper(
        logicalWrapper: this
    ).writeToBuffer();
  }
}

extension on AndNode {
  LogicalType calculate(Map<String, dynamic> parameters) {
    return this.leftChild.calculate(parameters) &&
        this.rightChild.calculate(parameters);
  }
}

extension on BoolNode {
  LogicalType calculate(Map<String, dynamic> parameters) {
    return this.value;
  }
}

LogicalResultNodeWrapper createBoolNode(LogicalType value) {
  return LogicalResultNodeWrapper(
      boolNode: BoolNode(value: value)
  );
}

extension on EqualNode {
  LogicalType calculate(Map<String, dynamic> parameters) {
    return this.leftChild.calculate(parameters) ==
        this.rightChild.calculate(parameters);
  }
}

extension on LogicalIfElseNode {
  LogicalType calculate(Map<String, dynamic> parameters) {
    return this.condition.calculate(parameters) ?
    this.if_2.calculate(parameters) :
    this.else_3.calculate(parameters);
  }
}

extension on LogicalVariableNode {
  LogicalType calculate(Map<String, dynamic> parameters) {
    if (!parameters.containsKey(this.variableName)) {
      throw CalculationException(
          'The parameter ${this.variableName} was not passed'
      );
    }
    dynamic variable = parameters[this.variableName];
    if (variable is LogicalType) {
      return variable;
    }
    throw CalculationException(
        'The parameter ${this.variableName} must be of a logical type'
    );
  }
}

LogicalResultNodeWrapper createLogicalVariableNode(String variableName) {
  return LogicalResultNodeWrapper(
      variableNode: LogicalVariableNode(variableName: variableName)
  );
}

extension on NegateNode {
  LogicalType calculate(Map<String, dynamic> parameters) {
    return !this.child.calculate(parameters);
  }
}

extension on OrNode {
  LogicalType calculate(Map<String, dynamic> parameters) {
    return this.leftChild.calculate(parameters) ||
        this.rightChild.calculate(parameters);
  }
}

extension on XorNode {
  LogicalType calculate(Map<String, dynamic> parameters) {
    return this.leftChild.calculate(parameters) !=
        this.rightChild.calculate(parameters);
  }
}
