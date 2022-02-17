///
//  Generated code. Do not modify.
//  source: instruction_serialiser.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use instructionWrapperDescriptor instead')
const InstructionWrapper$json = const {
  '1': 'InstructionWrapper',
  '2': const [
    const {'1': 'arithmetic_wrapper', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '9': 0, '10': 'arithmeticWrapper'},
    const {'1': 'logical_wrapper', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.LogicalResultNodeWrapper', '9': 0, '10': 'logicalWrapper'},
  ],
  '8': const [
    const {'1': 'wrapper'},
  ],
};

/// Descriptor for `InstructionWrapper`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List instructionWrapperDescriptor = $convert.base64Decode('ChJJbnN0cnVjdGlvbldyYXBwZXISZAoSYXJpdGhtZXRpY193cmFwcGVyGAEgASgLMjMuaW5zdHJ1Y3Rpb25fc2VyaWFsaXNlci5Bcml0aG1ldGljUmVzdWx0Tm9kZVdyYXBwZXJIAFIRYXJpdGhtZXRpY1dyYXBwZXISWwoPbG9naWNhbF93cmFwcGVyGAIgASgLMjAuaW5zdHJ1Y3Rpb25fc2VyaWFsaXNlci5Mb2dpY2FsUmVzdWx0Tm9kZVdyYXBwZXJIAFIObG9naWNhbFdyYXBwZXJCCQoHd3JhcHBlcg==');
@$core.Deprecated('Use arithmeticResultNodeWrapperDescriptor instead')
const ArithmeticResultNodeWrapper$json = const {
  '1': 'ArithmeticResultNodeWrapper',
  '2': const [
    const {'1': 'add_node', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.AddNode', '9': 0, '10': 'addNode'},
    const {'1': 'divide_node', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.DivideNode', '9': 0, '10': 'divideNode'},
    const {'1': 'multiply_node', '3': 3, '4': 1, '5': 11, '6': '.instruction_serialiser.MultiplyNode', '9': 0, '10': 'multiplyNode'},
    const {'1': 'number_node', '3': 4, '4': 1, '5': 11, '6': '.instruction_serialiser.NumberNode', '9': 0, '10': 'numberNode'},
    const {'1': 'subtract_node', '3': 5, '4': 1, '5': 11, '6': '.instruction_serialiser.SubtractNode', '9': 0, '10': 'subtractNode'},
    const {'1': 'variable_node', '3': 6, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticVariableNode', '9': 0, '10': 'variableNode'},
    const {'1': 'logarithm_node', '3': 7, '4': 1, '5': 11, '6': '.instruction_serialiser.LogarithmNode', '9': 0, '10': 'logarithmNode'},
    const {'1': 'power_node', '3': 8, '4': 1, '5': 11, '6': '.instruction_serialiser.PowerNode', '9': 0, '10': 'powerNode'},
    const {'1': 'modulo_node', '3': 9, '4': 1, '5': 11, '6': '.instruction_serialiser.ModuloNode', '9': 0, '10': 'moduloNode'},
  ],
  '8': const [
    const {'1': 'node'},
  ],
};

/// Descriptor for `ArithmeticResultNodeWrapper`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arithmeticResultNodeWrapperDescriptor = $convert.base64Decode('ChtBcml0aG1ldGljUmVzdWx0Tm9kZVdyYXBwZXISPAoIYWRkX25vZGUYASABKAsyHy5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLkFkZE5vZGVIAFIHYWRkTm9kZRJFCgtkaXZpZGVfbm9kZRgCIAEoCzIiLmluc3RydWN0aW9uX3NlcmlhbGlzZXIuRGl2aWRlTm9kZUgAUgpkaXZpZGVOb2RlEksKDW11bHRpcGx5X25vZGUYAyABKAsyJC5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLk11bHRpcGx5Tm9kZUgAUgxtdWx0aXBseU5vZGUSRQoLbnVtYmVyX25vZGUYBCABKAsyIi5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLk51bWJlck5vZGVIAFIKbnVtYmVyTm9kZRJLCg1zdWJ0cmFjdF9ub2RlGAUgASgLMiQuaW5zdHJ1Y3Rpb25fc2VyaWFsaXNlci5TdWJ0cmFjdE5vZGVIAFIMc3VidHJhY3ROb2RlElUKDXZhcmlhYmxlX25vZGUYBiABKAsyLi5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLkFyaXRobWV0aWNWYXJpYWJsZU5vZGVIAFIMdmFyaWFibGVOb2RlEk4KDmxvZ2FyaXRobV9ub2RlGAcgASgLMiUuaW5zdHJ1Y3Rpb25fc2VyaWFsaXNlci5Mb2dhcml0aG1Ob2RlSABSDWxvZ2FyaXRobU5vZGUSQgoKcG93ZXJfbm9kZRgIIAEoCzIhLmluc3RydWN0aW9uX3NlcmlhbGlzZXIuUG93ZXJOb2RlSABSCXBvd2VyTm9kZRJFCgttb2R1bG9fbm9kZRgJIAEoCzIiLmluc3RydWN0aW9uX3NlcmlhbGlzZXIuTW9kdWxvTm9kZUgAUgptb2R1bG9Ob2RlQgYKBG5vZGU=');
@$core.Deprecated('Use logicalResultNodeWrapperDescriptor instead')
const LogicalResultNodeWrapper$json = const {
  '1': 'LogicalResultNodeWrapper',
  '2': const [
    const {'1': 'equal_node', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.EqualNode', '9': 0, '10': 'equalNode'},
    const {'1': 'and_node', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.AndNode', '9': 0, '10': 'andNode'},
    const {'1': 'bool_node', '3': 3, '4': 1, '5': 11, '6': '.instruction_serialiser.BoolNode', '9': 0, '10': 'boolNode'},
    const {'1': 'negate_node', '3': 4, '4': 1, '5': 11, '6': '.instruction_serialiser.NegateNode', '9': 0, '10': 'negateNode'},
    const {'1': 'or_node', '3': 5, '4': 1, '5': 11, '6': '.instruction_serialiser.OrNode', '9': 0, '10': 'orNode'},
    const {'1': 'xor_node', '3': 6, '4': 1, '5': 11, '6': '.instruction_serialiser.XorNode', '9': 0, '10': 'xorNode'},
    const {'1': 'variable_node', '3': 7, '4': 1, '5': 11, '6': '.instruction_serialiser.LogicalVariableNode', '9': 0, '10': 'variableNode'},
  ],
  '8': const [
    const {'1': 'node'},
  ],
};

/// Descriptor for `LogicalResultNodeWrapper`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logicalResultNodeWrapperDescriptor = $convert.base64Decode('ChhMb2dpY2FsUmVzdWx0Tm9kZVdyYXBwZXISQgoKZXF1YWxfbm9kZRgBIAEoCzIhLmluc3RydWN0aW9uX3NlcmlhbGlzZXIuRXF1YWxOb2RlSABSCWVxdWFsTm9kZRI8CghhbmRfbm9kZRgCIAEoCzIfLmluc3RydWN0aW9uX3NlcmlhbGlzZXIuQW5kTm9kZUgAUgdhbmROb2RlEj8KCWJvb2xfbm9kZRgDIAEoCzIgLmluc3RydWN0aW9uX3NlcmlhbGlzZXIuQm9vbE5vZGVIAFIIYm9vbE5vZGUSRQoLbmVnYXRlX25vZGUYBCABKAsyIi5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLk5lZ2F0ZU5vZGVIAFIKbmVnYXRlTm9kZRI5Cgdvcl9ub2RlGAUgASgLMh4uaW5zdHJ1Y3Rpb25fc2VyaWFsaXNlci5Pck5vZGVIAFIGb3JOb2RlEjwKCHhvcl9ub2RlGAYgASgLMh8uaW5zdHJ1Y3Rpb25fc2VyaWFsaXNlci5Yb3JOb2RlSABSB3hvck5vZGUSUgoNdmFyaWFibGVfbm9kZRgHIAEoCzIrLmluc3RydWN0aW9uX3NlcmlhbGlzZXIuTG9naWNhbFZhcmlhYmxlTm9kZUgAUgx2YXJpYWJsZU5vZGVCBgoEbm9kZQ==');
@$core.Deprecated('Use addNodeDescriptor instead')
const AddNode$json = const {
  '1': 'AddNode',
  '2': const [
    const {'1': 'left_child', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'leftChild'},
    const {'1': 'right_child', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'rightChild'},
  ],
};

/// Descriptor for `AddNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addNodeDescriptor = $convert.base64Decode('CgdBZGROb2RlElIKCmxlZnRfY2hpbGQYASABKAsyMy5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLkFyaXRobWV0aWNSZXN1bHROb2RlV3JhcHBlclIJbGVmdENoaWxkElQKC3JpZ2h0X2NoaWxkGAIgASgLMjMuaW5zdHJ1Y3Rpb25fc2VyaWFsaXNlci5Bcml0aG1ldGljUmVzdWx0Tm9kZVdyYXBwZXJSCnJpZ2h0Q2hpbGQ=');
@$core.Deprecated('Use divideNodeDescriptor instead')
const DivideNode$json = const {
  '1': 'DivideNode',
  '2': const [
    const {'1': 'left_child', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'leftChild'},
    const {'1': 'right_child', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'rightChild'},
  ],
};

/// Descriptor for `DivideNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List divideNodeDescriptor = $convert.base64Decode('CgpEaXZpZGVOb2RlElIKCmxlZnRfY2hpbGQYASABKAsyMy5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLkFyaXRobWV0aWNSZXN1bHROb2RlV3JhcHBlclIJbGVmdENoaWxkElQKC3JpZ2h0X2NoaWxkGAIgASgLMjMuaW5zdHJ1Y3Rpb25fc2VyaWFsaXNlci5Bcml0aG1ldGljUmVzdWx0Tm9kZVdyYXBwZXJSCnJpZ2h0Q2hpbGQ=');
@$core.Deprecated('Use multiplyNodeDescriptor instead')
const MultiplyNode$json = const {
  '1': 'MultiplyNode',
  '2': const [
    const {'1': 'left_child', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'leftChild'},
    const {'1': 'right_child', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'rightChild'},
  ],
};

/// Descriptor for `MultiplyNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiplyNodeDescriptor = $convert.base64Decode('CgxNdWx0aXBseU5vZGUSUgoKbGVmdF9jaGlsZBgBIAEoCzIzLmluc3RydWN0aW9uX3NlcmlhbGlzZXIuQXJpdGhtZXRpY1Jlc3VsdE5vZGVXcmFwcGVyUglsZWZ0Q2hpbGQSVAoLcmlnaHRfY2hpbGQYAiABKAsyMy5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLkFyaXRobWV0aWNSZXN1bHROb2RlV3JhcHBlclIKcmlnaHRDaGlsZA==');
@$core.Deprecated('Use subtractNodeDescriptor instead')
const SubtractNode$json = const {
  '1': 'SubtractNode',
  '2': const [
    const {'1': 'left_child', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'leftChild'},
    const {'1': 'right_child', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'rightChild'},
  ],
};

/// Descriptor for `SubtractNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subtractNodeDescriptor = $convert.base64Decode('CgxTdWJ0cmFjdE5vZGUSUgoKbGVmdF9jaGlsZBgBIAEoCzIzLmluc3RydWN0aW9uX3NlcmlhbGlzZXIuQXJpdGhtZXRpY1Jlc3VsdE5vZGVXcmFwcGVyUglsZWZ0Q2hpbGQSVAoLcmlnaHRfY2hpbGQYAiABKAsyMy5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLkFyaXRobWV0aWNSZXN1bHROb2RlV3JhcHBlclIKcmlnaHRDaGlsZA==');
@$core.Deprecated('Use logarithmNodeDescriptor instead')
const LogarithmNode$json = const {
  '1': 'LogarithmNode',
  '2': const [
    const {'1': 'left_child', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'leftChild'},
    const {'1': 'right_child', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'rightChild'},
  ],
};

/// Descriptor for `LogarithmNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logarithmNodeDescriptor = $convert.base64Decode('Cg1Mb2dhcml0aG1Ob2RlElIKCmxlZnRfY2hpbGQYASABKAsyMy5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLkFyaXRobWV0aWNSZXN1bHROb2RlV3JhcHBlclIJbGVmdENoaWxkElQKC3JpZ2h0X2NoaWxkGAIgASgLMjMuaW5zdHJ1Y3Rpb25fc2VyaWFsaXNlci5Bcml0aG1ldGljUmVzdWx0Tm9kZVdyYXBwZXJSCnJpZ2h0Q2hpbGQ=');
@$core.Deprecated('Use powerNodeDescriptor instead')
const PowerNode$json = const {
  '1': 'PowerNode',
  '2': const [
    const {'1': 'left_child', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'leftChild'},
    const {'1': 'right_child', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'rightChild'},
  ],
};

/// Descriptor for `PowerNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List powerNodeDescriptor = $convert.base64Decode('CglQb3dlck5vZGUSUgoKbGVmdF9jaGlsZBgBIAEoCzIzLmluc3RydWN0aW9uX3NlcmlhbGlzZXIuQXJpdGhtZXRpY1Jlc3VsdE5vZGVXcmFwcGVyUglsZWZ0Q2hpbGQSVAoLcmlnaHRfY2hpbGQYAiABKAsyMy5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLkFyaXRobWV0aWNSZXN1bHROb2RlV3JhcHBlclIKcmlnaHRDaGlsZA==');
@$core.Deprecated('Use moduloNodeDescriptor instead')
const ModuloNode$json = const {
  '1': 'ModuloNode',
  '2': const [
    const {'1': 'left_child', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'leftChild'},
    const {'1': 'right_child', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'rightChild'},
  ],
};

/// Descriptor for `ModuloNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduloNodeDescriptor = $convert.base64Decode('CgpNb2R1bG9Ob2RlElIKCmxlZnRfY2hpbGQYASABKAsyMy5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLkFyaXRobWV0aWNSZXN1bHROb2RlV3JhcHBlclIJbGVmdENoaWxkElQKC3JpZ2h0X2NoaWxkGAIgASgLMjMuaW5zdHJ1Y3Rpb25fc2VyaWFsaXNlci5Bcml0aG1ldGljUmVzdWx0Tm9kZVdyYXBwZXJSCnJpZ2h0Q2hpbGQ=');
@$core.Deprecated('Use numberNodeDescriptor instead')
const NumberNode$json = const {
  '1': 'NumberNode',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 1, '10': 'value'},
  ],
};

/// Descriptor for `NumberNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List numberNodeDescriptor = $convert.base64Decode('CgpOdW1iZXJOb2RlEhQKBXZhbHVlGAEgASgBUgV2YWx1ZQ==');
@$core.Deprecated('Use arithmeticVariableNodeDescriptor instead')
const ArithmeticVariableNode$json = const {
  '1': 'ArithmeticVariableNode',
  '2': const [
    const {'1': 'variable_name', '3': 1, '4': 1, '5': 9, '10': 'variableName'},
  ],
};

/// Descriptor for `ArithmeticVariableNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arithmeticVariableNodeDescriptor = $convert.base64Decode('ChZBcml0aG1ldGljVmFyaWFibGVOb2RlEiMKDXZhcmlhYmxlX25hbWUYASABKAlSDHZhcmlhYmxlTmFtZQ==');
@$core.Deprecated('Use andNodeDescriptor instead')
const AndNode$json = const {
  '1': 'AndNode',
  '2': const [
    const {'1': 'left_child', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.LogicalResultNodeWrapper', '10': 'leftChild'},
    const {'1': 'right_child', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.LogicalResultNodeWrapper', '10': 'rightChild'},
  ],
};

/// Descriptor for `AndNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List andNodeDescriptor = $convert.base64Decode('CgdBbmROb2RlEk8KCmxlZnRfY2hpbGQYASABKAsyMC5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLkxvZ2ljYWxSZXN1bHROb2RlV3JhcHBlclIJbGVmdENoaWxkElEKC3JpZ2h0X2NoaWxkGAIgASgLMjAuaW5zdHJ1Y3Rpb25fc2VyaWFsaXNlci5Mb2dpY2FsUmVzdWx0Tm9kZVdyYXBwZXJSCnJpZ2h0Q2hpbGQ=');
@$core.Deprecated('Use equalNodeDescriptor instead')
const EqualNode$json = const {
  '1': 'EqualNode',
  '2': const [
    const {'1': 'left_child', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'leftChild'},
    const {'1': 'right_child', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.ArithmeticResultNodeWrapper', '10': 'rightChild'},
  ],
};

/// Descriptor for `EqualNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List equalNodeDescriptor = $convert.base64Decode('CglFcXVhbE5vZGUSUgoKbGVmdF9jaGlsZBgBIAEoCzIzLmluc3RydWN0aW9uX3NlcmlhbGlzZXIuQXJpdGhtZXRpY1Jlc3VsdE5vZGVXcmFwcGVyUglsZWZ0Q2hpbGQSVAoLcmlnaHRfY2hpbGQYAiABKAsyMy5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLkFyaXRobWV0aWNSZXN1bHROb2RlV3JhcHBlclIKcmlnaHRDaGlsZA==');
@$core.Deprecated('Use negateNodeDescriptor instead')
const NegateNode$json = const {
  '1': 'NegateNode',
  '2': const [
    const {'1': 'child', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.LogicalResultNodeWrapper', '10': 'child'},
  ],
};

/// Descriptor for `NegateNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List negateNodeDescriptor = $convert.base64Decode('CgpOZWdhdGVOb2RlEkYKBWNoaWxkGAEgASgLMjAuaW5zdHJ1Y3Rpb25fc2VyaWFsaXNlci5Mb2dpY2FsUmVzdWx0Tm9kZVdyYXBwZXJSBWNoaWxk');
@$core.Deprecated('Use orNodeDescriptor instead')
const OrNode$json = const {
  '1': 'OrNode',
  '2': const [
    const {'1': 'left_child', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.LogicalResultNodeWrapper', '10': 'leftChild'},
    const {'1': 'right_child', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.LogicalResultNodeWrapper', '10': 'rightChild'},
  ],
};

/// Descriptor for `OrNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orNodeDescriptor = $convert.base64Decode('CgZPck5vZGUSTwoKbGVmdF9jaGlsZBgBIAEoCzIwLmluc3RydWN0aW9uX3NlcmlhbGlzZXIuTG9naWNhbFJlc3VsdE5vZGVXcmFwcGVyUglsZWZ0Q2hpbGQSUQoLcmlnaHRfY2hpbGQYAiABKAsyMC5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLkxvZ2ljYWxSZXN1bHROb2RlV3JhcHBlclIKcmlnaHRDaGlsZA==');
@$core.Deprecated('Use xorNodeDescriptor instead')
const XorNode$json = const {
  '1': 'XorNode',
  '2': const [
    const {'1': 'left_child', '3': 1, '4': 1, '5': 11, '6': '.instruction_serialiser.LogicalResultNodeWrapper', '10': 'leftChild'},
    const {'1': 'right_child', '3': 2, '4': 1, '5': 11, '6': '.instruction_serialiser.LogicalResultNodeWrapper', '10': 'rightChild'},
  ],
};

/// Descriptor for `XorNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List xorNodeDescriptor = $convert.base64Decode('CgdYb3JOb2RlEk8KCmxlZnRfY2hpbGQYASABKAsyMC5pbnN0cnVjdGlvbl9zZXJpYWxpc2VyLkxvZ2ljYWxSZXN1bHROb2RlV3JhcHBlclIJbGVmdENoaWxkElEKC3JpZ2h0X2NoaWxkGAIgASgLMjAuaW5zdHJ1Y3Rpb25fc2VyaWFsaXNlci5Mb2dpY2FsUmVzdWx0Tm9kZVdyYXBwZXJSCnJpZ2h0Q2hpbGQ=');
@$core.Deprecated('Use boolNodeDescriptor instead')
const BoolNode$json = const {
  '1': 'BoolNode',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 8, '10': 'value'},
  ],
};

/// Descriptor for `BoolNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boolNodeDescriptor = $convert.base64Decode('CghCb29sTm9kZRIUCgV2YWx1ZRgBIAEoCFIFdmFsdWU=');
@$core.Deprecated('Use logicalVariableNodeDescriptor instead')
const LogicalVariableNode$json = const {
  '1': 'LogicalVariableNode',
  '2': const [
    const {'1': 'variable_name', '3': 1, '4': 1, '5': 9, '10': 'variableName'},
  ],
};

/// Descriptor for `LogicalVariableNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logicalVariableNodeDescriptor = $convert.base64Decode('ChNMb2dpY2FsVmFyaWFibGVOb2RlEiMKDXZhcmlhYmxlX25hbWUYASABKAlSDHZhcmlhYmxlTmFtZQ==');
