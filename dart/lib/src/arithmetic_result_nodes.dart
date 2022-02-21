import 'dart:math';
import 'dart:typed_data';

import 'logical_result_nodes.dart';
import 'arithmetic_type.dart';
import 'calculation_exception.dart';
import 'instruction_serialiser/instruction_serialiser.pbserver.dart';

extension ARNW on ArithmeticResultNodeWrapper {
  ArithmeticType calculate(Map<String, dynamic> parameters) {
    if (this.hasAddNode()) {
      return this.ensureAddNode().calculate(parameters);
    } else if (this.hasDivideNode()) {
      return this.ensureDivideNode().calculate(parameters);
    } else if (this.hasIfElseNode()) {
      return this.ensureIfElseNode().calculate(parameters);
    } else if (this.hasLogarithmNode()) {
      return this.ensureLogarithmNode().calculate(parameters);
    } else if (this.hasModuloNode()) {
      return this.ensureModuloNode().calculate(parameters);
    } else if (this.hasMultiplyNode()) {
      return this.ensureMultiplyNode().calculate(parameters);
    } else if (this.hasNumberNode()) {
      return this.ensureNumberNode().calculate(parameters);
    } else if (this.hasPowerNode()) {
      return this.ensurePowerNode().calculate(parameters);
    } else if (this.hasSubtractNode()) {
      return this.ensureSubtractNode().calculate(parameters);
    } else if (this.hasVariableNode()) {
      return this.ensureVariableNode().calculate(parameters);
    } else {
      // this arm is meant to allow easier debugging if a new arithmetic node
      // type is added in the future.
      // if there is a language feature allowing for doing something generic
      // use it instead.
      throw CalculationException(
          'An arithmetic result node wrapper requires a supported node'
      );
    }
  }

  ArithmeticResultNodeWrapper operator +(ArithmeticResultNodeWrapper other) {
    return ArithmeticResultNodeWrapper(
      addNode: AddNode(
        leftChild: this,
        rightChild: other
      )
    );
  }

  ArithmeticResultNodeWrapper operator /(ArithmeticResultNodeWrapper divisor) {
    return ArithmeticResultNodeWrapper(
        divideNode: DivideNode(
            leftChild: this,
            rightChild: divisor
        )
    );
  }

  LogicalResultNodeWrapper equal(ArithmeticResultNodeWrapper other) {
    return LogicalResultNodeWrapper(
        equalNode: EqualNode(
            leftChild: this,
            rightChild: other
        )
    );
  }

  LogicalResultNodeWrapper operator >(ArithmeticResultNodeWrapper other) {
    return LogicalResultNodeWrapper(
        greaterThanNode: GreaterThanNode(
            leftChild: this,
            rightChild: other
        )
    );
  }

  LogicalResultNodeWrapper operator >=(ArithmeticResultNodeWrapper other) {
    return LogicalResultNodeWrapper(
        greaterThanOrEqualNode: GreaterThanOrEqualNode(
            leftChild: this,
            rightChild: other
        )
    );
  }

  ArithmeticResultNodeWrapper logarithm(ArithmeticResultNodeWrapper other) {
    return ArithmeticResultNodeWrapper(
        logarithmNode: LogarithmNode(
            leftChild: this,
            rightChild: other
        )
    );
  }

  ArithmeticResultNodeWrapper operator %(ArithmeticResultNodeWrapper divisor) {
    return ArithmeticResultNodeWrapper(
        moduloNode: ModuloNode(
            leftChild: this,
            rightChild: divisor
        )
    );
  }

  ArithmeticResultNodeWrapper operator *(ArithmeticResultNodeWrapper other) {
    return ArithmeticResultNodeWrapper(
        multiplyNode: MultiplyNode(
            leftChild: this,
            rightChild: other
        )
    );
  }

  ArithmeticResultNodeWrapper power(ArithmeticResultNodeWrapper other) {
    return ArithmeticResultNodeWrapper(
        powerNode: PowerNode(
            leftChild: this,
            rightChild: other
        )
    );
  }

  LogicalResultNodeWrapper operator <(ArithmeticResultNodeWrapper other) {
    return LogicalResultNodeWrapper(
        smallerThanNode: SmallerThanNode(
            leftChild: this,
            rightChild: other
        )
    );
  }

  LogicalResultNodeWrapper operator <=(ArithmeticResultNodeWrapper other) {
    return LogicalResultNodeWrapper(
        smallerThanOrEqualNode: SmallerThanOrEqualNode(
            leftChild: this,
            rightChild: other
        )
    );
  }

  ArithmeticResultNodeWrapper operator -(ArithmeticResultNodeWrapper subtractor) {
    return ArithmeticResultNodeWrapper(
        subtractNode: SubtractNode(
            leftChild: this,
            rightChild: subtractor
        )
    );
  }

  Uint8List serialise() {
    return InstructionWrapper(
      arithmeticWrapper: this
    ).writeToBuffer();
  }
}

extension on AddNode {
  ArithmeticType calculate(Map<String, dynamic> parameters) {
    return this.leftChild.calculate(parameters) +
        this.rightChild.calculate(parameters);
  }
}

extension on ArithmeticIfElseNode {
  ArithmeticType calculate(Map<String, dynamic> parameters) {
    return this.condition.calculate(parameters) ?
        this.if_2.calculate(parameters) :
        this.else_3.calculate(parameters);
  }
}

extension on ArithmeticVariableNode {
  ArithmeticType calculate(Map<String, dynamic> parameters) {
    if (!parameters.containsKey(this.variableName)) {
      throw CalculationException(
          'The parameter ${this.variableName} was not passed'
      );
    }
    dynamic variable = parameters[this.variableName];
    if (variable is ArithmeticType) {
      return variable;
    }
    throw CalculationException(
        'The parameter ${this.variableName} must be of an arithmetic type'
    );
  }
}

ArithmeticResultNodeWrapper createArithmeticVariableNode(String variableName) {
  return ArithmeticResultNodeWrapper(
    variableNode: ArithmeticVariableNode(variableName: variableName)
  );
}

extension on DivideNode {
  ArithmeticType calculate(Map<String, dynamic> parameters) {
    return this.leftChild.calculate(parameters) /
        this.rightChild.calculate(parameters);
  }
}

extension on LogarithmNode {
  ArithmeticType calculate(Map<String, dynamic> parameters) {
    return log(this.leftChild.calculate(parameters)) /
        log(this.rightChild.calculate(parameters));
  }
}

extension on ModuloNode {
  ArithmeticType calculate(Map<String, dynamic> parameters) {
    return this.leftChild.calculate(parameters) %
        this.rightChild.calculate(parameters);
  }
}

extension on MultiplyNode {
  ArithmeticType calculate(Map<String, dynamic> parameters) {
    return this.leftChild.calculate(parameters) *
        this.rightChild.calculate(parameters);
  }
}

extension on NumberNode {
  ArithmeticType calculate(Map<String, dynamic> parameters) {
    return this.value;
  }
}

ArithmeticResultNodeWrapper createNumberNode(ArithmeticType value) {
  return ArithmeticResultNodeWrapper(
      numberNode: NumberNode(value: value.toDouble())
  );
}

extension on PowerNode {
  ArithmeticType calculate(Map<String, dynamic> parameters) {
    return pow(
        this.leftChild.calculate(parameters),
        this.rightChild.calculate(parameters)
    );
  }
}

extension on SubtractNode {
  ArithmeticType calculate(Map<String, dynamic> parameters) {
    return this.leftChild.calculate(parameters) -
        this.rightChild.calculate(parameters);
  }
}
