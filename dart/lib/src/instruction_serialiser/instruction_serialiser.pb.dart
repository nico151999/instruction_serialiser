///
//  Generated code. Do not modify.
//  source: instruction_serialiser.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

enum InstructionWrapper_Wrapper {
  arithmeticWrapper, 
  logicalWrapper, 
  notSet
}

class InstructionWrapper extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, InstructionWrapper_Wrapper> _InstructionWrapper_WrapperByTag = {
    1 : InstructionWrapper_Wrapper.arithmeticWrapper,
    2 : InstructionWrapper_Wrapper.logicalWrapper,
    0 : InstructionWrapper_Wrapper.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InstructionWrapper', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ArithmeticResultNodeWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'arithmeticWrapper', subBuilder: ArithmeticResultNodeWrapper.create)
    ..aOM<LogicalResultNodeWrapper>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logicalWrapper', subBuilder: LogicalResultNodeWrapper.create)
    ..hasRequiredFields = false
  ;

  InstructionWrapper._() : super();
  factory InstructionWrapper({
    ArithmeticResultNodeWrapper? arithmeticWrapper,
    LogicalResultNodeWrapper? logicalWrapper,
  }) {
    final _result = create();
    if (arithmeticWrapper != null) {
      _result.arithmeticWrapper = arithmeticWrapper;
    }
    if (logicalWrapper != null) {
      _result.logicalWrapper = logicalWrapper;
    }
    return _result;
  }
  factory InstructionWrapper.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InstructionWrapper.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InstructionWrapper clone() => InstructionWrapper()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InstructionWrapper copyWith(void Function(InstructionWrapper) updates) => super.copyWith((message) => updates(message as InstructionWrapper)) as InstructionWrapper; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InstructionWrapper create() => InstructionWrapper._();
  InstructionWrapper createEmptyInstance() => create();
  static $pb.PbList<InstructionWrapper> createRepeated() => $pb.PbList<InstructionWrapper>();
  @$core.pragma('dart2js:noInline')
  static InstructionWrapper getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InstructionWrapper>(create);
  static InstructionWrapper? _defaultInstance;

  InstructionWrapper_Wrapper whichWrapper() => _InstructionWrapper_WrapperByTag[$_whichOneof(0)]!;
  void clearWrapper() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper get arithmeticWrapper => $_getN(0);
  @$pb.TagNumber(1)
  set arithmeticWrapper(ArithmeticResultNodeWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArithmeticWrapper() => $_has(0);
  @$pb.TagNumber(1)
  void clearArithmeticWrapper() => clearField(1);
  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper ensureArithmeticWrapper() => $_ensure(0);

  @$pb.TagNumber(2)
  LogicalResultNodeWrapper get logicalWrapper => $_getN(1);
  @$pb.TagNumber(2)
  set logicalWrapper(LogicalResultNodeWrapper v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLogicalWrapper() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicalWrapper() => clearField(2);
  @$pb.TagNumber(2)
  LogicalResultNodeWrapper ensureLogicalWrapper() => $_ensure(1);
}

enum ArithmeticResultNodeWrapper_Node {
  addNode, 
  divideNode, 
  multiplyNode, 
  numberNode, 
  subtractNode, 
  variableNode, 
  logarithmNode, 
  powerNode, 
  moduloNode, 
  notSet
}

class ArithmeticResultNodeWrapper extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ArithmeticResultNodeWrapper_Node> _ArithmeticResultNodeWrapper_NodeByTag = {
    1 : ArithmeticResultNodeWrapper_Node.addNode,
    2 : ArithmeticResultNodeWrapper_Node.divideNode,
    3 : ArithmeticResultNodeWrapper_Node.multiplyNode,
    4 : ArithmeticResultNodeWrapper_Node.numberNode,
    5 : ArithmeticResultNodeWrapper_Node.subtractNode,
    6 : ArithmeticResultNodeWrapper_Node.variableNode,
    7 : ArithmeticResultNodeWrapper_Node.logarithmNode,
    8 : ArithmeticResultNodeWrapper_Node.powerNode,
    9 : ArithmeticResultNodeWrapper_Node.moduloNode,
    0 : ArithmeticResultNodeWrapper_Node.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ArithmeticResultNodeWrapper', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9])
    ..aOM<AddNode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addNode', subBuilder: AddNode.create)
    ..aOM<DivideNode>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'divideNode', subBuilder: DivideNode.create)
    ..aOM<MultiplyNode>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multiplyNode', subBuilder: MultiplyNode.create)
    ..aOM<NumberNode>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numberNode', subBuilder: NumberNode.create)
    ..aOM<SubtractNode>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subtractNode', subBuilder: SubtractNode.create)
    ..aOM<ArithmeticVariableNode>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'variableNode', subBuilder: ArithmeticVariableNode.create)
    ..aOM<LogarithmNode>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logarithmNode', subBuilder: LogarithmNode.create)
    ..aOM<PowerNode>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'powerNode', subBuilder: PowerNode.create)
    ..aOM<ModuloNode>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'moduloNode', subBuilder: ModuloNode.create)
    ..hasRequiredFields = false
  ;

  ArithmeticResultNodeWrapper._() : super();
  factory ArithmeticResultNodeWrapper({
    AddNode? addNode,
    DivideNode? divideNode,
    MultiplyNode? multiplyNode,
    NumberNode? numberNode,
    SubtractNode? subtractNode,
    ArithmeticVariableNode? variableNode,
    LogarithmNode? logarithmNode,
    PowerNode? powerNode,
    ModuloNode? moduloNode,
  }) {
    final _result = create();
    if (addNode != null) {
      _result.addNode = addNode;
    }
    if (divideNode != null) {
      _result.divideNode = divideNode;
    }
    if (multiplyNode != null) {
      _result.multiplyNode = multiplyNode;
    }
    if (numberNode != null) {
      _result.numberNode = numberNode;
    }
    if (subtractNode != null) {
      _result.subtractNode = subtractNode;
    }
    if (variableNode != null) {
      _result.variableNode = variableNode;
    }
    if (logarithmNode != null) {
      _result.logarithmNode = logarithmNode;
    }
    if (powerNode != null) {
      _result.powerNode = powerNode;
    }
    if (moduloNode != null) {
      _result.moduloNode = moduloNode;
    }
    return _result;
  }
  factory ArithmeticResultNodeWrapper.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ArithmeticResultNodeWrapper.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ArithmeticResultNodeWrapper clone() => ArithmeticResultNodeWrapper()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ArithmeticResultNodeWrapper copyWith(void Function(ArithmeticResultNodeWrapper) updates) => super.copyWith((message) => updates(message as ArithmeticResultNodeWrapper)) as ArithmeticResultNodeWrapper; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ArithmeticResultNodeWrapper create() => ArithmeticResultNodeWrapper._();
  ArithmeticResultNodeWrapper createEmptyInstance() => create();
  static $pb.PbList<ArithmeticResultNodeWrapper> createRepeated() => $pb.PbList<ArithmeticResultNodeWrapper>();
  @$core.pragma('dart2js:noInline')
  static ArithmeticResultNodeWrapper getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ArithmeticResultNodeWrapper>(create);
  static ArithmeticResultNodeWrapper? _defaultInstance;

  ArithmeticResultNodeWrapper_Node whichNode() => _ArithmeticResultNodeWrapper_NodeByTag[$_whichOneof(0)]!;
  void clearNode() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AddNode get addNode => $_getN(0);
  @$pb.TagNumber(1)
  set addNode(AddNode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddNode() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddNode() => clearField(1);
  @$pb.TagNumber(1)
  AddNode ensureAddNode() => $_ensure(0);

  @$pb.TagNumber(2)
  DivideNode get divideNode => $_getN(1);
  @$pb.TagNumber(2)
  set divideNode(DivideNode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDivideNode() => $_has(1);
  @$pb.TagNumber(2)
  void clearDivideNode() => clearField(2);
  @$pb.TagNumber(2)
  DivideNode ensureDivideNode() => $_ensure(1);

  @$pb.TagNumber(3)
  MultiplyNode get multiplyNode => $_getN(2);
  @$pb.TagNumber(3)
  set multiplyNode(MultiplyNode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMultiplyNode() => $_has(2);
  @$pb.TagNumber(3)
  void clearMultiplyNode() => clearField(3);
  @$pb.TagNumber(3)
  MultiplyNode ensureMultiplyNode() => $_ensure(2);

  @$pb.TagNumber(4)
  NumberNode get numberNode => $_getN(3);
  @$pb.TagNumber(4)
  set numberNode(NumberNode v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumberNode() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumberNode() => clearField(4);
  @$pb.TagNumber(4)
  NumberNode ensureNumberNode() => $_ensure(3);

  @$pb.TagNumber(5)
  SubtractNode get subtractNode => $_getN(4);
  @$pb.TagNumber(5)
  set subtractNode(SubtractNode v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSubtractNode() => $_has(4);
  @$pb.TagNumber(5)
  void clearSubtractNode() => clearField(5);
  @$pb.TagNumber(5)
  SubtractNode ensureSubtractNode() => $_ensure(4);

  @$pb.TagNumber(6)
  ArithmeticVariableNode get variableNode => $_getN(5);
  @$pb.TagNumber(6)
  set variableNode(ArithmeticVariableNode v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasVariableNode() => $_has(5);
  @$pb.TagNumber(6)
  void clearVariableNode() => clearField(6);
  @$pb.TagNumber(6)
  ArithmeticVariableNode ensureVariableNode() => $_ensure(5);

  @$pb.TagNumber(7)
  LogarithmNode get logarithmNode => $_getN(6);
  @$pb.TagNumber(7)
  set logarithmNode(LogarithmNode v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasLogarithmNode() => $_has(6);
  @$pb.TagNumber(7)
  void clearLogarithmNode() => clearField(7);
  @$pb.TagNumber(7)
  LogarithmNode ensureLogarithmNode() => $_ensure(6);

  @$pb.TagNumber(8)
  PowerNode get powerNode => $_getN(7);
  @$pb.TagNumber(8)
  set powerNode(PowerNode v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPowerNode() => $_has(7);
  @$pb.TagNumber(8)
  void clearPowerNode() => clearField(8);
  @$pb.TagNumber(8)
  PowerNode ensurePowerNode() => $_ensure(7);

  @$pb.TagNumber(9)
  ModuloNode get moduloNode => $_getN(8);
  @$pb.TagNumber(9)
  set moduloNode(ModuloNode v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasModuloNode() => $_has(8);
  @$pb.TagNumber(9)
  void clearModuloNode() => clearField(9);
  @$pb.TagNumber(9)
  ModuloNode ensureModuloNode() => $_ensure(8);
}

enum LogicalResultNodeWrapper_Node {
  equalNode, 
  andNode, 
  boolNode, 
  negateNode, 
  orNode, 
  xorNode, 
  variableNode, 
  notSet
}

class LogicalResultNodeWrapper extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, LogicalResultNodeWrapper_Node> _LogicalResultNodeWrapper_NodeByTag = {
    1 : LogicalResultNodeWrapper_Node.equalNode,
    2 : LogicalResultNodeWrapper_Node.andNode,
    3 : LogicalResultNodeWrapper_Node.boolNode,
    4 : LogicalResultNodeWrapper_Node.negateNode,
    5 : LogicalResultNodeWrapper_Node.orNode,
    6 : LogicalResultNodeWrapper_Node.xorNode,
    7 : LogicalResultNodeWrapper_Node.variableNode,
    0 : LogicalResultNodeWrapper_Node.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogicalResultNodeWrapper', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7])
    ..aOM<EqualNode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'equalNode', subBuilder: EqualNode.create)
    ..aOM<AndNode>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'andNode', subBuilder: AndNode.create)
    ..aOM<BoolNode>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'boolNode', subBuilder: BoolNode.create)
    ..aOM<NegateNode>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'negateNode', subBuilder: NegateNode.create)
    ..aOM<OrNode>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orNode', subBuilder: OrNode.create)
    ..aOM<XorNode>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xorNode', subBuilder: XorNode.create)
    ..aOM<LogicalVariableNode>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'variableNode', subBuilder: LogicalVariableNode.create)
    ..hasRequiredFields = false
  ;

  LogicalResultNodeWrapper._() : super();
  factory LogicalResultNodeWrapper({
    EqualNode? equalNode,
    AndNode? andNode,
    BoolNode? boolNode,
    NegateNode? negateNode,
    OrNode? orNode,
    XorNode? xorNode,
    LogicalVariableNode? variableNode,
  }) {
    final _result = create();
    if (equalNode != null) {
      _result.equalNode = equalNode;
    }
    if (andNode != null) {
      _result.andNode = andNode;
    }
    if (boolNode != null) {
      _result.boolNode = boolNode;
    }
    if (negateNode != null) {
      _result.negateNode = negateNode;
    }
    if (orNode != null) {
      _result.orNode = orNode;
    }
    if (xorNode != null) {
      _result.xorNode = xorNode;
    }
    if (variableNode != null) {
      _result.variableNode = variableNode;
    }
    return _result;
  }
  factory LogicalResultNodeWrapper.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogicalResultNodeWrapper.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogicalResultNodeWrapper clone() => LogicalResultNodeWrapper()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogicalResultNodeWrapper copyWith(void Function(LogicalResultNodeWrapper) updates) => super.copyWith((message) => updates(message as LogicalResultNodeWrapper)) as LogicalResultNodeWrapper; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogicalResultNodeWrapper create() => LogicalResultNodeWrapper._();
  LogicalResultNodeWrapper createEmptyInstance() => create();
  static $pb.PbList<LogicalResultNodeWrapper> createRepeated() => $pb.PbList<LogicalResultNodeWrapper>();
  @$core.pragma('dart2js:noInline')
  static LogicalResultNodeWrapper getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogicalResultNodeWrapper>(create);
  static LogicalResultNodeWrapper? _defaultInstance;

  LogicalResultNodeWrapper_Node whichNode() => _LogicalResultNodeWrapper_NodeByTag[$_whichOneof(0)]!;
  void clearNode() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  EqualNode get equalNode => $_getN(0);
  @$pb.TagNumber(1)
  set equalNode(EqualNode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEqualNode() => $_has(0);
  @$pb.TagNumber(1)
  void clearEqualNode() => clearField(1);
  @$pb.TagNumber(1)
  EqualNode ensureEqualNode() => $_ensure(0);

  @$pb.TagNumber(2)
  AndNode get andNode => $_getN(1);
  @$pb.TagNumber(2)
  set andNode(AndNode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAndNode() => $_has(1);
  @$pb.TagNumber(2)
  void clearAndNode() => clearField(2);
  @$pb.TagNumber(2)
  AndNode ensureAndNode() => $_ensure(1);

  @$pb.TagNumber(3)
  BoolNode get boolNode => $_getN(2);
  @$pb.TagNumber(3)
  set boolNode(BoolNode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBoolNode() => $_has(2);
  @$pb.TagNumber(3)
  void clearBoolNode() => clearField(3);
  @$pb.TagNumber(3)
  BoolNode ensureBoolNode() => $_ensure(2);

  @$pb.TagNumber(4)
  NegateNode get negateNode => $_getN(3);
  @$pb.TagNumber(4)
  set negateNode(NegateNode v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasNegateNode() => $_has(3);
  @$pb.TagNumber(4)
  void clearNegateNode() => clearField(4);
  @$pb.TagNumber(4)
  NegateNode ensureNegateNode() => $_ensure(3);

  @$pb.TagNumber(5)
  OrNode get orNode => $_getN(4);
  @$pb.TagNumber(5)
  set orNode(OrNode v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOrNode() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrNode() => clearField(5);
  @$pb.TagNumber(5)
  OrNode ensureOrNode() => $_ensure(4);

  @$pb.TagNumber(6)
  XorNode get xorNode => $_getN(5);
  @$pb.TagNumber(6)
  set xorNode(XorNode v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasXorNode() => $_has(5);
  @$pb.TagNumber(6)
  void clearXorNode() => clearField(6);
  @$pb.TagNumber(6)
  XorNode ensureXorNode() => $_ensure(5);

  @$pb.TagNumber(7)
  LogicalVariableNode get variableNode => $_getN(6);
  @$pb.TagNumber(7)
  set variableNode(LogicalVariableNode v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasVariableNode() => $_has(6);
  @$pb.TagNumber(7)
  void clearVariableNode() => clearField(7);
  @$pb.TagNumber(7)
  LogicalVariableNode ensureVariableNode() => $_ensure(6);
}

class AddNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOM<ArithmeticResultNodeWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..aOM<ArithmeticResultNodeWrapper>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rightChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..hasRequiredFields = false
  ;

  AddNode._() : super();
  factory AddNode({
    ArithmeticResultNodeWrapper? leftChild,
    ArithmeticResultNodeWrapper? rightChild,
  }) {
    final _result = create();
    if (leftChild != null) {
      _result.leftChild = leftChild;
    }
    if (rightChild != null) {
      _result.rightChild = rightChild;
    }
    return _result;
  }
  factory AddNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddNode clone() => AddNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddNode copyWith(void Function(AddNode) updates) => super.copyWith((message) => updates(message as AddNode)) as AddNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddNode create() => AddNode._();
  AddNode createEmptyInstance() => create();
  static $pb.PbList<AddNode> createRepeated() => $pb.PbList<AddNode>();
  @$core.pragma('dart2js:noInline')
  static AddNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddNode>(create);
  static AddNode? _defaultInstance;

  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper get leftChild => $_getN(0);
  @$pb.TagNumber(1)
  set leftChild(ArithmeticResultNodeWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftChild() => clearField(1);
  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper ensureLeftChild() => $_ensure(0);

  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper get rightChild => $_getN(1);
  @$pb.TagNumber(2)
  set rightChild(ArithmeticResultNodeWrapper v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightChild() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightChild() => clearField(2);
  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper ensureRightChild() => $_ensure(1);
}

class DivideNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DivideNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOM<ArithmeticResultNodeWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..aOM<ArithmeticResultNodeWrapper>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rightChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..hasRequiredFields = false
  ;

  DivideNode._() : super();
  factory DivideNode({
    ArithmeticResultNodeWrapper? leftChild,
    ArithmeticResultNodeWrapper? rightChild,
  }) {
    final _result = create();
    if (leftChild != null) {
      _result.leftChild = leftChild;
    }
    if (rightChild != null) {
      _result.rightChild = rightChild;
    }
    return _result;
  }
  factory DivideNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DivideNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DivideNode clone() => DivideNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DivideNode copyWith(void Function(DivideNode) updates) => super.copyWith((message) => updates(message as DivideNode)) as DivideNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DivideNode create() => DivideNode._();
  DivideNode createEmptyInstance() => create();
  static $pb.PbList<DivideNode> createRepeated() => $pb.PbList<DivideNode>();
  @$core.pragma('dart2js:noInline')
  static DivideNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DivideNode>(create);
  static DivideNode? _defaultInstance;

  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper get leftChild => $_getN(0);
  @$pb.TagNumber(1)
  set leftChild(ArithmeticResultNodeWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftChild() => clearField(1);
  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper ensureLeftChild() => $_ensure(0);

  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper get rightChild => $_getN(1);
  @$pb.TagNumber(2)
  set rightChild(ArithmeticResultNodeWrapper v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightChild() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightChild() => clearField(2);
  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper ensureRightChild() => $_ensure(1);
}

class MultiplyNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MultiplyNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOM<ArithmeticResultNodeWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..aOM<ArithmeticResultNodeWrapper>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rightChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..hasRequiredFields = false
  ;

  MultiplyNode._() : super();
  factory MultiplyNode({
    ArithmeticResultNodeWrapper? leftChild,
    ArithmeticResultNodeWrapper? rightChild,
  }) {
    final _result = create();
    if (leftChild != null) {
      _result.leftChild = leftChild;
    }
    if (rightChild != null) {
      _result.rightChild = rightChild;
    }
    return _result;
  }
  factory MultiplyNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiplyNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiplyNode clone() => MultiplyNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiplyNode copyWith(void Function(MultiplyNode) updates) => super.copyWith((message) => updates(message as MultiplyNode)) as MultiplyNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MultiplyNode create() => MultiplyNode._();
  MultiplyNode createEmptyInstance() => create();
  static $pb.PbList<MultiplyNode> createRepeated() => $pb.PbList<MultiplyNode>();
  @$core.pragma('dart2js:noInline')
  static MultiplyNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiplyNode>(create);
  static MultiplyNode? _defaultInstance;

  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper get leftChild => $_getN(0);
  @$pb.TagNumber(1)
  set leftChild(ArithmeticResultNodeWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftChild() => clearField(1);
  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper ensureLeftChild() => $_ensure(0);

  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper get rightChild => $_getN(1);
  @$pb.TagNumber(2)
  set rightChild(ArithmeticResultNodeWrapper v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightChild() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightChild() => clearField(2);
  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper ensureRightChild() => $_ensure(1);
}

class SubtractNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubtractNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOM<ArithmeticResultNodeWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..aOM<ArithmeticResultNodeWrapper>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rightChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..hasRequiredFields = false
  ;

  SubtractNode._() : super();
  factory SubtractNode({
    ArithmeticResultNodeWrapper? leftChild,
    ArithmeticResultNodeWrapper? rightChild,
  }) {
    final _result = create();
    if (leftChild != null) {
      _result.leftChild = leftChild;
    }
    if (rightChild != null) {
      _result.rightChild = rightChild;
    }
    return _result;
  }
  factory SubtractNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubtractNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubtractNode clone() => SubtractNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubtractNode copyWith(void Function(SubtractNode) updates) => super.copyWith((message) => updates(message as SubtractNode)) as SubtractNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubtractNode create() => SubtractNode._();
  SubtractNode createEmptyInstance() => create();
  static $pb.PbList<SubtractNode> createRepeated() => $pb.PbList<SubtractNode>();
  @$core.pragma('dart2js:noInline')
  static SubtractNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubtractNode>(create);
  static SubtractNode? _defaultInstance;

  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper get leftChild => $_getN(0);
  @$pb.TagNumber(1)
  set leftChild(ArithmeticResultNodeWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftChild() => clearField(1);
  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper ensureLeftChild() => $_ensure(0);

  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper get rightChild => $_getN(1);
  @$pb.TagNumber(2)
  set rightChild(ArithmeticResultNodeWrapper v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightChild() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightChild() => clearField(2);
  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper ensureRightChild() => $_ensure(1);
}

class LogarithmNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogarithmNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOM<ArithmeticResultNodeWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..aOM<ArithmeticResultNodeWrapper>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rightChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..hasRequiredFields = false
  ;

  LogarithmNode._() : super();
  factory LogarithmNode({
    ArithmeticResultNodeWrapper? leftChild,
    ArithmeticResultNodeWrapper? rightChild,
  }) {
    final _result = create();
    if (leftChild != null) {
      _result.leftChild = leftChild;
    }
    if (rightChild != null) {
      _result.rightChild = rightChild;
    }
    return _result;
  }
  factory LogarithmNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogarithmNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogarithmNode clone() => LogarithmNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogarithmNode copyWith(void Function(LogarithmNode) updates) => super.copyWith((message) => updates(message as LogarithmNode)) as LogarithmNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogarithmNode create() => LogarithmNode._();
  LogarithmNode createEmptyInstance() => create();
  static $pb.PbList<LogarithmNode> createRepeated() => $pb.PbList<LogarithmNode>();
  @$core.pragma('dart2js:noInline')
  static LogarithmNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogarithmNode>(create);
  static LogarithmNode? _defaultInstance;

  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper get leftChild => $_getN(0);
  @$pb.TagNumber(1)
  set leftChild(ArithmeticResultNodeWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftChild() => clearField(1);
  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper ensureLeftChild() => $_ensure(0);

  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper get rightChild => $_getN(1);
  @$pb.TagNumber(2)
  set rightChild(ArithmeticResultNodeWrapper v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightChild() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightChild() => clearField(2);
  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper ensureRightChild() => $_ensure(1);
}

class PowerNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PowerNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOM<ArithmeticResultNodeWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..aOM<ArithmeticResultNodeWrapper>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rightChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..hasRequiredFields = false
  ;

  PowerNode._() : super();
  factory PowerNode({
    ArithmeticResultNodeWrapper? leftChild,
    ArithmeticResultNodeWrapper? rightChild,
  }) {
    final _result = create();
    if (leftChild != null) {
      _result.leftChild = leftChild;
    }
    if (rightChild != null) {
      _result.rightChild = rightChild;
    }
    return _result;
  }
  factory PowerNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PowerNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PowerNode clone() => PowerNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PowerNode copyWith(void Function(PowerNode) updates) => super.copyWith((message) => updates(message as PowerNode)) as PowerNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PowerNode create() => PowerNode._();
  PowerNode createEmptyInstance() => create();
  static $pb.PbList<PowerNode> createRepeated() => $pb.PbList<PowerNode>();
  @$core.pragma('dart2js:noInline')
  static PowerNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PowerNode>(create);
  static PowerNode? _defaultInstance;

  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper get leftChild => $_getN(0);
  @$pb.TagNumber(1)
  set leftChild(ArithmeticResultNodeWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftChild() => clearField(1);
  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper ensureLeftChild() => $_ensure(0);

  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper get rightChild => $_getN(1);
  @$pb.TagNumber(2)
  set rightChild(ArithmeticResultNodeWrapper v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightChild() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightChild() => clearField(2);
  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper ensureRightChild() => $_ensure(1);
}

class ModuloNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModuloNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOM<ArithmeticResultNodeWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..aOM<ArithmeticResultNodeWrapper>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rightChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..hasRequiredFields = false
  ;

  ModuloNode._() : super();
  factory ModuloNode({
    ArithmeticResultNodeWrapper? leftChild,
    ArithmeticResultNodeWrapper? rightChild,
  }) {
    final _result = create();
    if (leftChild != null) {
      _result.leftChild = leftChild;
    }
    if (rightChild != null) {
      _result.rightChild = rightChild;
    }
    return _result;
  }
  factory ModuloNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModuloNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModuloNode clone() => ModuloNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModuloNode copyWith(void Function(ModuloNode) updates) => super.copyWith((message) => updates(message as ModuloNode)) as ModuloNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModuloNode create() => ModuloNode._();
  ModuloNode createEmptyInstance() => create();
  static $pb.PbList<ModuloNode> createRepeated() => $pb.PbList<ModuloNode>();
  @$core.pragma('dart2js:noInline')
  static ModuloNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModuloNode>(create);
  static ModuloNode? _defaultInstance;

  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper get leftChild => $_getN(0);
  @$pb.TagNumber(1)
  set leftChild(ArithmeticResultNodeWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftChild() => clearField(1);
  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper ensureLeftChild() => $_ensure(0);

  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper get rightChild => $_getN(1);
  @$pb.TagNumber(2)
  set rightChild(ArithmeticResultNodeWrapper v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightChild() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightChild() => clearField(2);
  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper ensureRightChild() => $_ensure(1);
}

class NumberNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NumberNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  NumberNode._() : super();
  factory NumberNode({
    $core.double? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory NumberNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NumberNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NumberNode clone() => NumberNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NumberNode copyWith(void Function(NumberNode) updates) => super.copyWith((message) => updates(message as NumberNode)) as NumberNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NumberNode create() => NumberNode._();
  NumberNode createEmptyInstance() => create();
  static $pb.PbList<NumberNode> createRepeated() => $pb.PbList<NumberNode>();
  @$core.pragma('dart2js:noInline')
  static NumberNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NumberNode>(create);
  static NumberNode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class ArithmeticVariableNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ArithmeticVariableNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'variableName')
    ..hasRequiredFields = false
  ;

  ArithmeticVariableNode._() : super();
  factory ArithmeticVariableNode({
    $core.String? variableName,
  }) {
    final _result = create();
    if (variableName != null) {
      _result.variableName = variableName;
    }
    return _result;
  }
  factory ArithmeticVariableNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ArithmeticVariableNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ArithmeticVariableNode clone() => ArithmeticVariableNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ArithmeticVariableNode copyWith(void Function(ArithmeticVariableNode) updates) => super.copyWith((message) => updates(message as ArithmeticVariableNode)) as ArithmeticVariableNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ArithmeticVariableNode create() => ArithmeticVariableNode._();
  ArithmeticVariableNode createEmptyInstance() => create();
  static $pb.PbList<ArithmeticVariableNode> createRepeated() => $pb.PbList<ArithmeticVariableNode>();
  @$core.pragma('dart2js:noInline')
  static ArithmeticVariableNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ArithmeticVariableNode>(create);
  static ArithmeticVariableNode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get variableName => $_getSZ(0);
  @$pb.TagNumber(1)
  set variableName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVariableName() => $_has(0);
  @$pb.TagNumber(1)
  void clearVariableName() => clearField(1);
}

class AndNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AndNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOM<LogicalResultNodeWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftChild', subBuilder: LogicalResultNodeWrapper.create)
    ..aOM<LogicalResultNodeWrapper>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rightChild', subBuilder: LogicalResultNodeWrapper.create)
    ..hasRequiredFields = false
  ;

  AndNode._() : super();
  factory AndNode({
    LogicalResultNodeWrapper? leftChild,
    LogicalResultNodeWrapper? rightChild,
  }) {
    final _result = create();
    if (leftChild != null) {
      _result.leftChild = leftChild;
    }
    if (rightChild != null) {
      _result.rightChild = rightChild;
    }
    return _result;
  }
  factory AndNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AndNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AndNode clone() => AndNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AndNode copyWith(void Function(AndNode) updates) => super.copyWith((message) => updates(message as AndNode)) as AndNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AndNode create() => AndNode._();
  AndNode createEmptyInstance() => create();
  static $pb.PbList<AndNode> createRepeated() => $pb.PbList<AndNode>();
  @$core.pragma('dart2js:noInline')
  static AndNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AndNode>(create);
  static AndNode? _defaultInstance;

  @$pb.TagNumber(1)
  LogicalResultNodeWrapper get leftChild => $_getN(0);
  @$pb.TagNumber(1)
  set leftChild(LogicalResultNodeWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftChild() => clearField(1);
  @$pb.TagNumber(1)
  LogicalResultNodeWrapper ensureLeftChild() => $_ensure(0);

  @$pb.TagNumber(2)
  LogicalResultNodeWrapper get rightChild => $_getN(1);
  @$pb.TagNumber(2)
  set rightChild(LogicalResultNodeWrapper v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightChild() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightChild() => clearField(2);
  @$pb.TagNumber(2)
  LogicalResultNodeWrapper ensureRightChild() => $_ensure(1);
}

class EqualNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EqualNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOM<ArithmeticResultNodeWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..aOM<ArithmeticResultNodeWrapper>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rightChild', subBuilder: ArithmeticResultNodeWrapper.create)
    ..hasRequiredFields = false
  ;

  EqualNode._() : super();
  factory EqualNode({
    ArithmeticResultNodeWrapper? leftChild,
    ArithmeticResultNodeWrapper? rightChild,
  }) {
    final _result = create();
    if (leftChild != null) {
      _result.leftChild = leftChild;
    }
    if (rightChild != null) {
      _result.rightChild = rightChild;
    }
    return _result;
  }
  factory EqualNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EqualNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EqualNode clone() => EqualNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EqualNode copyWith(void Function(EqualNode) updates) => super.copyWith((message) => updates(message as EqualNode)) as EqualNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EqualNode create() => EqualNode._();
  EqualNode createEmptyInstance() => create();
  static $pb.PbList<EqualNode> createRepeated() => $pb.PbList<EqualNode>();
  @$core.pragma('dart2js:noInline')
  static EqualNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EqualNode>(create);
  static EqualNode? _defaultInstance;

  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper get leftChild => $_getN(0);
  @$pb.TagNumber(1)
  set leftChild(ArithmeticResultNodeWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftChild() => clearField(1);
  @$pb.TagNumber(1)
  ArithmeticResultNodeWrapper ensureLeftChild() => $_ensure(0);

  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper get rightChild => $_getN(1);
  @$pb.TagNumber(2)
  set rightChild(ArithmeticResultNodeWrapper v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightChild() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightChild() => clearField(2);
  @$pb.TagNumber(2)
  ArithmeticResultNodeWrapper ensureRightChild() => $_ensure(1);
}

class NegateNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NegateNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOM<LogicalResultNodeWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'child', subBuilder: LogicalResultNodeWrapper.create)
    ..hasRequiredFields = false
  ;

  NegateNode._() : super();
  factory NegateNode({
    LogicalResultNodeWrapper? child,
  }) {
    final _result = create();
    if (child != null) {
      _result.child = child;
    }
    return _result;
  }
  factory NegateNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NegateNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NegateNode clone() => NegateNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NegateNode copyWith(void Function(NegateNode) updates) => super.copyWith((message) => updates(message as NegateNode)) as NegateNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NegateNode create() => NegateNode._();
  NegateNode createEmptyInstance() => create();
  static $pb.PbList<NegateNode> createRepeated() => $pb.PbList<NegateNode>();
  @$core.pragma('dart2js:noInline')
  static NegateNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NegateNode>(create);
  static NegateNode? _defaultInstance;

  @$pb.TagNumber(1)
  LogicalResultNodeWrapper get child => $_getN(0);
  @$pb.TagNumber(1)
  set child(LogicalResultNodeWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearChild() => clearField(1);
  @$pb.TagNumber(1)
  LogicalResultNodeWrapper ensureChild() => $_ensure(0);
}

class OrNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOM<LogicalResultNodeWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftChild', subBuilder: LogicalResultNodeWrapper.create)
    ..aOM<LogicalResultNodeWrapper>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rightChild', subBuilder: LogicalResultNodeWrapper.create)
    ..hasRequiredFields = false
  ;

  OrNode._() : super();
  factory OrNode({
    LogicalResultNodeWrapper? leftChild,
    LogicalResultNodeWrapper? rightChild,
  }) {
    final _result = create();
    if (leftChild != null) {
      _result.leftChild = leftChild;
    }
    if (rightChild != null) {
      _result.rightChild = rightChild;
    }
    return _result;
  }
  factory OrNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrNode clone() => OrNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrNode copyWith(void Function(OrNode) updates) => super.copyWith((message) => updates(message as OrNode)) as OrNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrNode create() => OrNode._();
  OrNode createEmptyInstance() => create();
  static $pb.PbList<OrNode> createRepeated() => $pb.PbList<OrNode>();
  @$core.pragma('dart2js:noInline')
  static OrNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrNode>(create);
  static OrNode? _defaultInstance;

  @$pb.TagNumber(1)
  LogicalResultNodeWrapper get leftChild => $_getN(0);
  @$pb.TagNumber(1)
  set leftChild(LogicalResultNodeWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftChild() => clearField(1);
  @$pb.TagNumber(1)
  LogicalResultNodeWrapper ensureLeftChild() => $_ensure(0);

  @$pb.TagNumber(2)
  LogicalResultNodeWrapper get rightChild => $_getN(1);
  @$pb.TagNumber(2)
  set rightChild(LogicalResultNodeWrapper v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightChild() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightChild() => clearField(2);
  @$pb.TagNumber(2)
  LogicalResultNodeWrapper ensureRightChild() => $_ensure(1);
}

class XorNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'XorNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOM<LogicalResultNodeWrapper>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftChild', subBuilder: LogicalResultNodeWrapper.create)
    ..aOM<LogicalResultNodeWrapper>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rightChild', subBuilder: LogicalResultNodeWrapper.create)
    ..hasRequiredFields = false
  ;

  XorNode._() : super();
  factory XorNode({
    LogicalResultNodeWrapper? leftChild,
    LogicalResultNodeWrapper? rightChild,
  }) {
    final _result = create();
    if (leftChild != null) {
      _result.leftChild = leftChild;
    }
    if (rightChild != null) {
      _result.rightChild = rightChild;
    }
    return _result;
  }
  factory XorNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory XorNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  XorNode clone() => XorNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  XorNode copyWith(void Function(XorNode) updates) => super.copyWith((message) => updates(message as XorNode)) as XorNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static XorNode create() => XorNode._();
  XorNode createEmptyInstance() => create();
  static $pb.PbList<XorNode> createRepeated() => $pb.PbList<XorNode>();
  @$core.pragma('dart2js:noInline')
  static XorNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<XorNode>(create);
  static XorNode? _defaultInstance;

  @$pb.TagNumber(1)
  LogicalResultNodeWrapper get leftChild => $_getN(0);
  @$pb.TagNumber(1)
  set leftChild(LogicalResultNodeWrapper v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeftChild() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeftChild() => clearField(1);
  @$pb.TagNumber(1)
  LogicalResultNodeWrapper ensureLeftChild() => $_ensure(0);

  @$pb.TagNumber(2)
  LogicalResultNodeWrapper get rightChild => $_getN(1);
  @$pb.TagNumber(2)
  set rightChild(LogicalResultNodeWrapper v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRightChild() => $_has(1);
  @$pb.TagNumber(2)
  void clearRightChild() => clearField(2);
  @$pb.TagNumber(2)
  LogicalResultNodeWrapper ensureRightChild() => $_ensure(1);
}

class BoolNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BoolNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  BoolNode._() : super();
  factory BoolNode({
    $core.bool? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory BoolNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoolNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoolNode clone() => BoolNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoolNode copyWith(void Function(BoolNode) updates) => super.copyWith((message) => updates(message as BoolNode)) as BoolNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BoolNode create() => BoolNode._();
  BoolNode createEmptyInstance() => create();
  static $pb.PbList<BoolNode> createRepeated() => $pb.PbList<BoolNode>();
  @$core.pragma('dart2js:noInline')
  static BoolNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoolNode>(create);
  static BoolNode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class LogicalVariableNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogicalVariableNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'instruction_serialiser'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'variableName')
    ..hasRequiredFields = false
  ;

  LogicalVariableNode._() : super();
  factory LogicalVariableNode({
    $core.String? variableName,
  }) {
    final _result = create();
    if (variableName != null) {
      _result.variableName = variableName;
    }
    return _result;
  }
  factory LogicalVariableNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogicalVariableNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogicalVariableNode clone() => LogicalVariableNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogicalVariableNode copyWith(void Function(LogicalVariableNode) updates) => super.copyWith((message) => updates(message as LogicalVariableNode)) as LogicalVariableNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogicalVariableNode create() => LogicalVariableNode._();
  LogicalVariableNode createEmptyInstance() => create();
  static $pb.PbList<LogicalVariableNode> createRepeated() => $pb.PbList<LogicalVariableNode>();
  @$core.pragma('dart2js:noInline')
  static LogicalVariableNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogicalVariableNode>(create);
  static LogicalVariableNode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get variableName => $_getSZ(0);
  @$pb.TagNumber(1)
  set variableName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVariableName() => $_has(0);
  @$pb.TagNumber(1)
  void clearVariableName() => clearField(1);
}

