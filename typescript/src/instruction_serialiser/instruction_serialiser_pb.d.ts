import * as jspb from 'google-protobuf'



export class InstructionWrapper extends jspb.Message {
  getArithmeticWrapper(): ArithmeticResultNodeWrapper | undefined;
  setArithmeticWrapper(value?: ArithmeticResultNodeWrapper): InstructionWrapper;
  hasArithmeticWrapper(): boolean;
  clearArithmeticWrapper(): InstructionWrapper;

  getLogicalWrapper(): LogicalResultNodeWrapper | undefined;
  setLogicalWrapper(value?: LogicalResultNodeWrapper): InstructionWrapper;
  hasLogicalWrapper(): boolean;
  clearLogicalWrapper(): InstructionWrapper;

  getWrapperCase(): InstructionWrapper.WrapperCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): InstructionWrapper.AsObject;
  static toObject(includeInstance: boolean, msg: InstructionWrapper): InstructionWrapper.AsObject;
  static serializeBinaryToWriter(message: InstructionWrapper, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): InstructionWrapper;
  static deserializeBinaryFromReader(message: InstructionWrapper, reader: jspb.BinaryReader): InstructionWrapper;
}

export namespace InstructionWrapper {
  export type AsObject = {
    arithmeticWrapper?: ArithmeticResultNodeWrapper.AsObject,
    logicalWrapper?: LogicalResultNodeWrapper.AsObject,
  }

  export enum WrapperCase { 
    WRAPPER_NOT_SET = 0,
    ARITHMETIC_WRAPPER = 1,
    LOGICAL_WRAPPER = 2,
  }
}

export class ArithmeticResultNodeWrapper extends jspb.Message {
  getAddNode(): AddNode | undefined;
  setAddNode(value?: AddNode): ArithmeticResultNodeWrapper;
  hasAddNode(): boolean;
  clearAddNode(): ArithmeticResultNodeWrapper;

  getDivideNode(): DivideNode | undefined;
  setDivideNode(value?: DivideNode): ArithmeticResultNodeWrapper;
  hasDivideNode(): boolean;
  clearDivideNode(): ArithmeticResultNodeWrapper;

  getMultiplyNode(): MultiplyNode | undefined;
  setMultiplyNode(value?: MultiplyNode): ArithmeticResultNodeWrapper;
  hasMultiplyNode(): boolean;
  clearMultiplyNode(): ArithmeticResultNodeWrapper;

  getNumberNode(): NumberNode | undefined;
  setNumberNode(value?: NumberNode): ArithmeticResultNodeWrapper;
  hasNumberNode(): boolean;
  clearNumberNode(): ArithmeticResultNodeWrapper;

  getSubtractNode(): SubtractNode | undefined;
  setSubtractNode(value?: SubtractNode): ArithmeticResultNodeWrapper;
  hasSubtractNode(): boolean;
  clearSubtractNode(): ArithmeticResultNodeWrapper;

  getVariableNode(): ArithmeticVariableNode | undefined;
  setVariableNode(value?: ArithmeticVariableNode): ArithmeticResultNodeWrapper;
  hasVariableNode(): boolean;
  clearVariableNode(): ArithmeticResultNodeWrapper;

  getLogarithmNode(): LogarithmNode | undefined;
  setLogarithmNode(value?: LogarithmNode): ArithmeticResultNodeWrapper;
  hasLogarithmNode(): boolean;
  clearLogarithmNode(): ArithmeticResultNodeWrapper;

  getPowerNode(): PowerNode | undefined;
  setPowerNode(value?: PowerNode): ArithmeticResultNodeWrapper;
  hasPowerNode(): boolean;
  clearPowerNode(): ArithmeticResultNodeWrapper;

  getModuloNode(): ModuloNode | undefined;
  setModuloNode(value?: ModuloNode): ArithmeticResultNodeWrapper;
  hasModuloNode(): boolean;
  clearModuloNode(): ArithmeticResultNodeWrapper;

  getIfElseNode(): ArithmeticIfElseNode | undefined;
  setIfElseNode(value?: ArithmeticIfElseNode): ArithmeticResultNodeWrapper;
  hasIfElseNode(): boolean;
  clearIfElseNode(): ArithmeticResultNodeWrapper;

  getNodeCase(): ArithmeticResultNodeWrapper.NodeCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ArithmeticResultNodeWrapper.AsObject;
  static toObject(includeInstance: boolean, msg: ArithmeticResultNodeWrapper): ArithmeticResultNodeWrapper.AsObject;
  static serializeBinaryToWriter(message: ArithmeticResultNodeWrapper, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ArithmeticResultNodeWrapper;
  static deserializeBinaryFromReader(message: ArithmeticResultNodeWrapper, reader: jspb.BinaryReader): ArithmeticResultNodeWrapper;
}

export namespace ArithmeticResultNodeWrapper {
  export type AsObject = {
    addNode?: AddNode.AsObject,
    divideNode?: DivideNode.AsObject,
    multiplyNode?: MultiplyNode.AsObject,
    numberNode?: NumberNode.AsObject,
    subtractNode?: SubtractNode.AsObject,
    variableNode?: ArithmeticVariableNode.AsObject,
    logarithmNode?: LogarithmNode.AsObject,
    powerNode?: PowerNode.AsObject,
    moduloNode?: ModuloNode.AsObject,
    ifElseNode?: ArithmeticIfElseNode.AsObject,
  }

  export enum NodeCase { 
    NODE_NOT_SET = 0,
    ADD_NODE = 1,
    DIVIDE_NODE = 2,
    MULTIPLY_NODE = 3,
    NUMBER_NODE = 4,
    SUBTRACT_NODE = 5,
    VARIABLE_NODE = 6,
    LOGARITHM_NODE = 7,
    POWER_NODE = 8,
    MODULO_NODE = 9,
    IF_ELSE_NODE = 10,
  }
}

export class LogicalResultNodeWrapper extends jspb.Message {
  getEqualNode(): EqualNode | undefined;
  setEqualNode(value?: EqualNode): LogicalResultNodeWrapper;
  hasEqualNode(): boolean;
  clearEqualNode(): LogicalResultNodeWrapper;

  getAndNode(): AndNode | undefined;
  setAndNode(value?: AndNode): LogicalResultNodeWrapper;
  hasAndNode(): boolean;
  clearAndNode(): LogicalResultNodeWrapper;

  getBoolNode(): BoolNode | undefined;
  setBoolNode(value?: BoolNode): LogicalResultNodeWrapper;
  hasBoolNode(): boolean;
  clearBoolNode(): LogicalResultNodeWrapper;

  getNegateNode(): NegateNode | undefined;
  setNegateNode(value?: NegateNode): LogicalResultNodeWrapper;
  hasNegateNode(): boolean;
  clearNegateNode(): LogicalResultNodeWrapper;

  getOrNode(): OrNode | undefined;
  setOrNode(value?: OrNode): LogicalResultNodeWrapper;
  hasOrNode(): boolean;
  clearOrNode(): LogicalResultNodeWrapper;

  getXorNode(): XorNode | undefined;
  setXorNode(value?: XorNode): LogicalResultNodeWrapper;
  hasXorNode(): boolean;
  clearXorNode(): LogicalResultNodeWrapper;

  getVariableNode(): LogicalVariableNode | undefined;
  setVariableNode(value?: LogicalVariableNode): LogicalResultNodeWrapper;
  hasVariableNode(): boolean;
  clearVariableNode(): LogicalResultNodeWrapper;

  getIfElseNode(): LogicalIfElseNode | undefined;
  setIfElseNode(value?: LogicalIfElseNode): LogicalResultNodeWrapper;
  hasIfElseNode(): boolean;
  clearIfElseNode(): LogicalResultNodeWrapper;

  getGreaterThanNode(): GreaterThanNode | undefined;
  setGreaterThanNode(value?: GreaterThanNode): LogicalResultNodeWrapper;
  hasGreaterThanNode(): boolean;
  clearGreaterThanNode(): LogicalResultNodeWrapper;

  getGreaterThanOrEqualNode(): GreaterThanOrEqualNode | undefined;
  setGreaterThanOrEqualNode(value?: GreaterThanOrEqualNode): LogicalResultNodeWrapper;
  hasGreaterThanOrEqualNode(): boolean;
  clearGreaterThanOrEqualNode(): LogicalResultNodeWrapper;

  getSmallerThanNode(): SmallerThanNode | undefined;
  setSmallerThanNode(value?: SmallerThanNode): LogicalResultNodeWrapper;
  hasSmallerThanNode(): boolean;
  clearSmallerThanNode(): LogicalResultNodeWrapper;

  getSmallerThanOrEqualNode(): SmallerThanOrEqualNode | undefined;
  setSmallerThanOrEqualNode(value?: SmallerThanOrEqualNode): LogicalResultNodeWrapper;
  hasSmallerThanOrEqualNode(): boolean;
  clearSmallerThanOrEqualNode(): LogicalResultNodeWrapper;

  getNodeCase(): LogicalResultNodeWrapper.NodeCase;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): LogicalResultNodeWrapper.AsObject;
  static toObject(includeInstance: boolean, msg: LogicalResultNodeWrapper): LogicalResultNodeWrapper.AsObject;
  static serializeBinaryToWriter(message: LogicalResultNodeWrapper, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): LogicalResultNodeWrapper;
  static deserializeBinaryFromReader(message: LogicalResultNodeWrapper, reader: jspb.BinaryReader): LogicalResultNodeWrapper;
}

export namespace LogicalResultNodeWrapper {
  export type AsObject = {
    equalNode?: EqualNode.AsObject,
    andNode?: AndNode.AsObject,
    boolNode?: BoolNode.AsObject,
    negateNode?: NegateNode.AsObject,
    orNode?: OrNode.AsObject,
    xorNode?: XorNode.AsObject,
    variableNode?: LogicalVariableNode.AsObject,
    ifElseNode?: LogicalIfElseNode.AsObject,
    greaterThanNode?: GreaterThanNode.AsObject,
    greaterThanOrEqualNode?: GreaterThanOrEqualNode.AsObject,
    smallerThanNode?: SmallerThanNode.AsObject,
    smallerThanOrEqualNode?: SmallerThanOrEqualNode.AsObject,
  }

  export enum NodeCase { 
    NODE_NOT_SET = 0,
    EQUAL_NODE = 1,
    AND_NODE = 2,
    BOOL_NODE = 3,
    NEGATE_NODE = 4,
    OR_NODE = 5,
    XOR_NODE = 6,
    VARIABLE_NODE = 7,
    IF_ELSE_NODE = 8,
    GREATER_THAN_NODE = 9,
    GREATER_THAN_OR_EQUAL_NODE = 10,
    SMALLER_THAN_NODE = 11,
    SMALLER_THAN_OR_EQUAL_NODE = 12,
  }
}

export class AddNode extends jspb.Message {
  getLeftChild(): ArithmeticResultNodeWrapper | undefined;
  setLeftChild(value?: ArithmeticResultNodeWrapper): AddNode;
  hasLeftChild(): boolean;
  clearLeftChild(): AddNode;

  getRightChild(): ArithmeticResultNodeWrapper | undefined;
  setRightChild(value?: ArithmeticResultNodeWrapper): AddNode;
  hasRightChild(): boolean;
  clearRightChild(): AddNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AddNode.AsObject;
  static toObject(includeInstance: boolean, msg: AddNode): AddNode.AsObject;
  static serializeBinaryToWriter(message: AddNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AddNode;
  static deserializeBinaryFromReader(message: AddNode, reader: jspb.BinaryReader): AddNode;
}

export namespace AddNode {
  export type AsObject = {
    leftChild?: ArithmeticResultNodeWrapper.AsObject,
    rightChild?: ArithmeticResultNodeWrapper.AsObject,
  }
}

export class ArithmeticIfElseNode extends jspb.Message {
  getCondition(): LogicalResultNodeWrapper | undefined;
  setCondition(value?: LogicalResultNodeWrapper): ArithmeticIfElseNode;
  hasCondition(): boolean;
  clearCondition(): ArithmeticIfElseNode;

  getIf(): ArithmeticResultNodeWrapper | undefined;
  setIf(value?: ArithmeticResultNodeWrapper): ArithmeticIfElseNode;
  hasIf(): boolean;
  clearIf(): ArithmeticIfElseNode;

  getElse(): ArithmeticResultNodeWrapper | undefined;
  setElse(value?: ArithmeticResultNodeWrapper): ArithmeticIfElseNode;
  hasElse(): boolean;
  clearElse(): ArithmeticIfElseNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ArithmeticIfElseNode.AsObject;
  static toObject(includeInstance: boolean, msg: ArithmeticIfElseNode): ArithmeticIfElseNode.AsObject;
  static serializeBinaryToWriter(message: ArithmeticIfElseNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ArithmeticIfElseNode;
  static deserializeBinaryFromReader(message: ArithmeticIfElseNode, reader: jspb.BinaryReader): ArithmeticIfElseNode;
}

export namespace ArithmeticIfElseNode {
  export type AsObject = {
    condition?: LogicalResultNodeWrapper.AsObject,
    pb_if?: ArithmeticResultNodeWrapper.AsObject,
    pb_else?: ArithmeticResultNodeWrapper.AsObject,
  }
}

export class ArithmeticVariableNode extends jspb.Message {
  getVariableName(): string;
  setVariableName(value: string): ArithmeticVariableNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ArithmeticVariableNode.AsObject;
  static toObject(includeInstance: boolean, msg: ArithmeticVariableNode): ArithmeticVariableNode.AsObject;
  static serializeBinaryToWriter(message: ArithmeticVariableNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ArithmeticVariableNode;
  static deserializeBinaryFromReader(message: ArithmeticVariableNode, reader: jspb.BinaryReader): ArithmeticVariableNode;
}

export namespace ArithmeticVariableNode {
  export type AsObject = {
    variableName: string,
  }
}

export class DivideNode extends jspb.Message {
  getLeftChild(): ArithmeticResultNodeWrapper | undefined;
  setLeftChild(value?: ArithmeticResultNodeWrapper): DivideNode;
  hasLeftChild(): boolean;
  clearLeftChild(): DivideNode;

  getRightChild(): ArithmeticResultNodeWrapper | undefined;
  setRightChild(value?: ArithmeticResultNodeWrapper): DivideNode;
  hasRightChild(): boolean;
  clearRightChild(): DivideNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): DivideNode.AsObject;
  static toObject(includeInstance: boolean, msg: DivideNode): DivideNode.AsObject;
  static serializeBinaryToWriter(message: DivideNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): DivideNode;
  static deserializeBinaryFromReader(message: DivideNode, reader: jspb.BinaryReader): DivideNode;
}

export namespace DivideNode {
  export type AsObject = {
    leftChild?: ArithmeticResultNodeWrapper.AsObject,
    rightChild?: ArithmeticResultNodeWrapper.AsObject,
  }
}

export class LogarithmNode extends jspb.Message {
  getLeftChild(): ArithmeticResultNodeWrapper | undefined;
  setLeftChild(value?: ArithmeticResultNodeWrapper): LogarithmNode;
  hasLeftChild(): boolean;
  clearLeftChild(): LogarithmNode;

  getRightChild(): ArithmeticResultNodeWrapper | undefined;
  setRightChild(value?: ArithmeticResultNodeWrapper): LogarithmNode;
  hasRightChild(): boolean;
  clearRightChild(): LogarithmNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): LogarithmNode.AsObject;
  static toObject(includeInstance: boolean, msg: LogarithmNode): LogarithmNode.AsObject;
  static serializeBinaryToWriter(message: LogarithmNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): LogarithmNode;
  static deserializeBinaryFromReader(message: LogarithmNode, reader: jspb.BinaryReader): LogarithmNode;
}

export namespace LogarithmNode {
  export type AsObject = {
    leftChild?: ArithmeticResultNodeWrapper.AsObject,
    rightChild?: ArithmeticResultNodeWrapper.AsObject,
  }
}

export class ModuloNode extends jspb.Message {
  getLeftChild(): ArithmeticResultNodeWrapper | undefined;
  setLeftChild(value?: ArithmeticResultNodeWrapper): ModuloNode;
  hasLeftChild(): boolean;
  clearLeftChild(): ModuloNode;

  getRightChild(): ArithmeticResultNodeWrapper | undefined;
  setRightChild(value?: ArithmeticResultNodeWrapper): ModuloNode;
  hasRightChild(): boolean;
  clearRightChild(): ModuloNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): ModuloNode.AsObject;
  static toObject(includeInstance: boolean, msg: ModuloNode): ModuloNode.AsObject;
  static serializeBinaryToWriter(message: ModuloNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): ModuloNode;
  static deserializeBinaryFromReader(message: ModuloNode, reader: jspb.BinaryReader): ModuloNode;
}

export namespace ModuloNode {
  export type AsObject = {
    leftChild?: ArithmeticResultNodeWrapper.AsObject,
    rightChild?: ArithmeticResultNodeWrapper.AsObject,
  }
}

export class MultiplyNode extends jspb.Message {
  getLeftChild(): ArithmeticResultNodeWrapper | undefined;
  setLeftChild(value?: ArithmeticResultNodeWrapper): MultiplyNode;
  hasLeftChild(): boolean;
  clearLeftChild(): MultiplyNode;

  getRightChild(): ArithmeticResultNodeWrapper | undefined;
  setRightChild(value?: ArithmeticResultNodeWrapper): MultiplyNode;
  hasRightChild(): boolean;
  clearRightChild(): MultiplyNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): MultiplyNode.AsObject;
  static toObject(includeInstance: boolean, msg: MultiplyNode): MultiplyNode.AsObject;
  static serializeBinaryToWriter(message: MultiplyNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): MultiplyNode;
  static deserializeBinaryFromReader(message: MultiplyNode, reader: jspb.BinaryReader): MultiplyNode;
}

export namespace MultiplyNode {
  export type AsObject = {
    leftChild?: ArithmeticResultNodeWrapper.AsObject,
    rightChild?: ArithmeticResultNodeWrapper.AsObject,
  }
}

export class NumberNode extends jspb.Message {
  getValue(): number;
  setValue(value: number): NumberNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): NumberNode.AsObject;
  static toObject(includeInstance: boolean, msg: NumberNode): NumberNode.AsObject;
  static serializeBinaryToWriter(message: NumberNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): NumberNode;
  static deserializeBinaryFromReader(message: NumberNode, reader: jspb.BinaryReader): NumberNode;
}

export namespace NumberNode {
  export type AsObject = {
    value: number,
  }
}

export class PowerNode extends jspb.Message {
  getLeftChild(): ArithmeticResultNodeWrapper | undefined;
  setLeftChild(value?: ArithmeticResultNodeWrapper): PowerNode;
  hasLeftChild(): boolean;
  clearLeftChild(): PowerNode;

  getRightChild(): ArithmeticResultNodeWrapper | undefined;
  setRightChild(value?: ArithmeticResultNodeWrapper): PowerNode;
  hasRightChild(): boolean;
  clearRightChild(): PowerNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): PowerNode.AsObject;
  static toObject(includeInstance: boolean, msg: PowerNode): PowerNode.AsObject;
  static serializeBinaryToWriter(message: PowerNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): PowerNode;
  static deserializeBinaryFromReader(message: PowerNode, reader: jspb.BinaryReader): PowerNode;
}

export namespace PowerNode {
  export type AsObject = {
    leftChild?: ArithmeticResultNodeWrapper.AsObject,
    rightChild?: ArithmeticResultNodeWrapper.AsObject,
  }
}

export class SubtractNode extends jspb.Message {
  getLeftChild(): ArithmeticResultNodeWrapper | undefined;
  setLeftChild(value?: ArithmeticResultNodeWrapper): SubtractNode;
  hasLeftChild(): boolean;
  clearLeftChild(): SubtractNode;

  getRightChild(): ArithmeticResultNodeWrapper | undefined;
  setRightChild(value?: ArithmeticResultNodeWrapper): SubtractNode;
  hasRightChild(): boolean;
  clearRightChild(): SubtractNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SubtractNode.AsObject;
  static toObject(includeInstance: boolean, msg: SubtractNode): SubtractNode.AsObject;
  static serializeBinaryToWriter(message: SubtractNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SubtractNode;
  static deserializeBinaryFromReader(message: SubtractNode, reader: jspb.BinaryReader): SubtractNode;
}

export namespace SubtractNode {
  export type AsObject = {
    leftChild?: ArithmeticResultNodeWrapper.AsObject,
    rightChild?: ArithmeticResultNodeWrapper.AsObject,
  }
}

export class AndNode extends jspb.Message {
  getLeftChild(): LogicalResultNodeWrapper | undefined;
  setLeftChild(value?: LogicalResultNodeWrapper): AndNode;
  hasLeftChild(): boolean;
  clearLeftChild(): AndNode;

  getRightChild(): LogicalResultNodeWrapper | undefined;
  setRightChild(value?: LogicalResultNodeWrapper): AndNode;
  hasRightChild(): boolean;
  clearRightChild(): AndNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): AndNode.AsObject;
  static toObject(includeInstance: boolean, msg: AndNode): AndNode.AsObject;
  static serializeBinaryToWriter(message: AndNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): AndNode;
  static deserializeBinaryFromReader(message: AndNode, reader: jspb.BinaryReader): AndNode;
}

export namespace AndNode {
  export type AsObject = {
    leftChild?: LogicalResultNodeWrapper.AsObject,
    rightChild?: LogicalResultNodeWrapper.AsObject,
  }
}

export class BoolNode extends jspb.Message {
  getValue(): boolean;
  setValue(value: boolean): BoolNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): BoolNode.AsObject;
  static toObject(includeInstance: boolean, msg: BoolNode): BoolNode.AsObject;
  static serializeBinaryToWriter(message: BoolNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): BoolNode;
  static deserializeBinaryFromReader(message: BoolNode, reader: jspb.BinaryReader): BoolNode;
}

export namespace BoolNode {
  export type AsObject = {
    value: boolean,
  }
}

export class EqualNode extends jspb.Message {
  getLeftChild(): ArithmeticResultNodeWrapper | undefined;
  setLeftChild(value?: ArithmeticResultNodeWrapper): EqualNode;
  hasLeftChild(): boolean;
  clearLeftChild(): EqualNode;

  getRightChild(): ArithmeticResultNodeWrapper | undefined;
  setRightChild(value?: ArithmeticResultNodeWrapper): EqualNode;
  hasRightChild(): boolean;
  clearRightChild(): EqualNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): EqualNode.AsObject;
  static toObject(includeInstance: boolean, msg: EqualNode): EqualNode.AsObject;
  static serializeBinaryToWriter(message: EqualNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): EqualNode;
  static deserializeBinaryFromReader(message: EqualNode, reader: jspb.BinaryReader): EqualNode;
}

export namespace EqualNode {
  export type AsObject = {
    leftChild?: ArithmeticResultNodeWrapper.AsObject,
    rightChild?: ArithmeticResultNodeWrapper.AsObject,
  }
}

export class GreaterThanNode extends jspb.Message {
  getLeftChild(): ArithmeticResultNodeWrapper | undefined;
  setLeftChild(value?: ArithmeticResultNodeWrapper): GreaterThanNode;
  hasLeftChild(): boolean;
  clearLeftChild(): GreaterThanNode;

  getRightChild(): ArithmeticResultNodeWrapper | undefined;
  setRightChild(value?: ArithmeticResultNodeWrapper): GreaterThanNode;
  hasRightChild(): boolean;
  clearRightChild(): GreaterThanNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GreaterThanNode.AsObject;
  static toObject(includeInstance: boolean, msg: GreaterThanNode): GreaterThanNode.AsObject;
  static serializeBinaryToWriter(message: GreaterThanNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GreaterThanNode;
  static deserializeBinaryFromReader(message: GreaterThanNode, reader: jspb.BinaryReader): GreaterThanNode;
}

export namespace GreaterThanNode {
  export type AsObject = {
    leftChild?: ArithmeticResultNodeWrapper.AsObject,
    rightChild?: ArithmeticResultNodeWrapper.AsObject,
  }
}

export class GreaterThanOrEqualNode extends jspb.Message {
  getLeftChild(): ArithmeticResultNodeWrapper | undefined;
  setLeftChild(value?: ArithmeticResultNodeWrapper): GreaterThanOrEqualNode;
  hasLeftChild(): boolean;
  clearLeftChild(): GreaterThanOrEqualNode;

  getRightChild(): ArithmeticResultNodeWrapper | undefined;
  setRightChild(value?: ArithmeticResultNodeWrapper): GreaterThanOrEqualNode;
  hasRightChild(): boolean;
  clearRightChild(): GreaterThanOrEqualNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): GreaterThanOrEqualNode.AsObject;
  static toObject(includeInstance: boolean, msg: GreaterThanOrEqualNode): GreaterThanOrEqualNode.AsObject;
  static serializeBinaryToWriter(message: GreaterThanOrEqualNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): GreaterThanOrEqualNode;
  static deserializeBinaryFromReader(message: GreaterThanOrEqualNode, reader: jspb.BinaryReader): GreaterThanOrEqualNode;
}

export namespace GreaterThanOrEqualNode {
  export type AsObject = {
    leftChild?: ArithmeticResultNodeWrapper.AsObject,
    rightChild?: ArithmeticResultNodeWrapper.AsObject,
  }
}

export class LogicalIfElseNode extends jspb.Message {
  getCondition(): LogicalResultNodeWrapper | undefined;
  setCondition(value?: LogicalResultNodeWrapper): LogicalIfElseNode;
  hasCondition(): boolean;
  clearCondition(): LogicalIfElseNode;

  getIf(): LogicalResultNodeWrapper | undefined;
  setIf(value?: LogicalResultNodeWrapper): LogicalIfElseNode;
  hasIf(): boolean;
  clearIf(): LogicalIfElseNode;

  getElse(): LogicalResultNodeWrapper | undefined;
  setElse(value?: LogicalResultNodeWrapper): LogicalIfElseNode;
  hasElse(): boolean;
  clearElse(): LogicalIfElseNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): LogicalIfElseNode.AsObject;
  static toObject(includeInstance: boolean, msg: LogicalIfElseNode): LogicalIfElseNode.AsObject;
  static serializeBinaryToWriter(message: LogicalIfElseNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): LogicalIfElseNode;
  static deserializeBinaryFromReader(message: LogicalIfElseNode, reader: jspb.BinaryReader): LogicalIfElseNode;
}

export namespace LogicalIfElseNode {
  export type AsObject = {
    condition?: LogicalResultNodeWrapper.AsObject,
    pb_if?: LogicalResultNodeWrapper.AsObject,
    pb_else?: LogicalResultNodeWrapper.AsObject,
  }
}

export class LogicalVariableNode extends jspb.Message {
  getVariableName(): string;
  setVariableName(value: string): LogicalVariableNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): LogicalVariableNode.AsObject;
  static toObject(includeInstance: boolean, msg: LogicalVariableNode): LogicalVariableNode.AsObject;
  static serializeBinaryToWriter(message: LogicalVariableNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): LogicalVariableNode;
  static deserializeBinaryFromReader(message: LogicalVariableNode, reader: jspb.BinaryReader): LogicalVariableNode;
}

export namespace LogicalVariableNode {
  export type AsObject = {
    variableName: string,
  }
}

export class NegateNode extends jspb.Message {
  getChild(): LogicalResultNodeWrapper | undefined;
  setChild(value?: LogicalResultNodeWrapper): NegateNode;
  hasChild(): boolean;
  clearChild(): NegateNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): NegateNode.AsObject;
  static toObject(includeInstance: boolean, msg: NegateNode): NegateNode.AsObject;
  static serializeBinaryToWriter(message: NegateNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): NegateNode;
  static deserializeBinaryFromReader(message: NegateNode, reader: jspb.BinaryReader): NegateNode;
}

export namespace NegateNode {
  export type AsObject = {
    child?: LogicalResultNodeWrapper.AsObject,
  }
}

export class OrNode extends jspb.Message {
  getLeftChild(): LogicalResultNodeWrapper | undefined;
  setLeftChild(value?: LogicalResultNodeWrapper): OrNode;
  hasLeftChild(): boolean;
  clearLeftChild(): OrNode;

  getRightChild(): LogicalResultNodeWrapper | undefined;
  setRightChild(value?: LogicalResultNodeWrapper): OrNode;
  hasRightChild(): boolean;
  clearRightChild(): OrNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): OrNode.AsObject;
  static toObject(includeInstance: boolean, msg: OrNode): OrNode.AsObject;
  static serializeBinaryToWriter(message: OrNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): OrNode;
  static deserializeBinaryFromReader(message: OrNode, reader: jspb.BinaryReader): OrNode;
}

export namespace OrNode {
  export type AsObject = {
    leftChild?: LogicalResultNodeWrapper.AsObject,
    rightChild?: LogicalResultNodeWrapper.AsObject,
  }
}

export class SmallerThanNode extends jspb.Message {
  getLeftChild(): ArithmeticResultNodeWrapper | undefined;
  setLeftChild(value?: ArithmeticResultNodeWrapper): SmallerThanNode;
  hasLeftChild(): boolean;
  clearLeftChild(): SmallerThanNode;

  getRightChild(): ArithmeticResultNodeWrapper | undefined;
  setRightChild(value?: ArithmeticResultNodeWrapper): SmallerThanNode;
  hasRightChild(): boolean;
  clearRightChild(): SmallerThanNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SmallerThanNode.AsObject;
  static toObject(includeInstance: boolean, msg: SmallerThanNode): SmallerThanNode.AsObject;
  static serializeBinaryToWriter(message: SmallerThanNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SmallerThanNode;
  static deserializeBinaryFromReader(message: SmallerThanNode, reader: jspb.BinaryReader): SmallerThanNode;
}

export namespace SmallerThanNode {
  export type AsObject = {
    leftChild?: ArithmeticResultNodeWrapper.AsObject,
    rightChild?: ArithmeticResultNodeWrapper.AsObject,
  }
}

export class SmallerThanOrEqualNode extends jspb.Message {
  getLeftChild(): ArithmeticResultNodeWrapper | undefined;
  setLeftChild(value?: ArithmeticResultNodeWrapper): SmallerThanOrEqualNode;
  hasLeftChild(): boolean;
  clearLeftChild(): SmallerThanOrEqualNode;

  getRightChild(): ArithmeticResultNodeWrapper | undefined;
  setRightChild(value?: ArithmeticResultNodeWrapper): SmallerThanOrEqualNode;
  hasRightChild(): boolean;
  clearRightChild(): SmallerThanOrEqualNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): SmallerThanOrEqualNode.AsObject;
  static toObject(includeInstance: boolean, msg: SmallerThanOrEqualNode): SmallerThanOrEqualNode.AsObject;
  static serializeBinaryToWriter(message: SmallerThanOrEqualNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): SmallerThanOrEqualNode;
  static deserializeBinaryFromReader(message: SmallerThanOrEqualNode, reader: jspb.BinaryReader): SmallerThanOrEqualNode;
}

export namespace SmallerThanOrEqualNode {
  export type AsObject = {
    leftChild?: ArithmeticResultNodeWrapper.AsObject,
    rightChild?: ArithmeticResultNodeWrapper.AsObject,
  }
}

export class XorNode extends jspb.Message {
  getLeftChild(): LogicalResultNodeWrapper | undefined;
  setLeftChild(value?: LogicalResultNodeWrapper): XorNode;
  hasLeftChild(): boolean;
  clearLeftChild(): XorNode;

  getRightChild(): LogicalResultNodeWrapper | undefined;
  setRightChild(value?: LogicalResultNodeWrapper): XorNode;
  hasRightChild(): boolean;
  clearRightChild(): XorNode;

  serializeBinary(): Uint8Array;
  toObject(includeInstance?: boolean): XorNode.AsObject;
  static toObject(includeInstance: boolean, msg: XorNode): XorNode.AsObject;
  static serializeBinaryToWriter(message: XorNode, writer: jspb.BinaryWriter): void;
  static deserializeBinary(bytes: Uint8Array): XorNode;
  static deserializeBinaryFromReader(message: XorNode, reader: jspb.BinaryReader): XorNode;
}

export namespace XorNode {
  export type AsObject = {
    leftChild?: LogicalResultNodeWrapper.AsObject,
    rightChild?: LogicalResultNodeWrapper.AsObject,
  }
}

