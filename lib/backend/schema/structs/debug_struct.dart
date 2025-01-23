// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DebugStruct extends BaseStruct {
  DebugStruct({
    String? error,
  }) : _error = error;

  // "ERROR" field.
  String? _error;
  String get error => _error ?? '';
  set error(String? val) => _error = val;

  bool hasError() => _error != null;

  static DebugStruct fromMap(Map<String, dynamic> data) => DebugStruct(
        error: data['ERROR'] as String?,
      );

  static DebugStruct? maybeFromMap(dynamic data) =>
      data is Map ? DebugStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ERROR': _error,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ERROR': serializeParam(
          _error,
          ParamType.String,
        ),
      }.withoutNulls;

  static DebugStruct fromSerializableMap(Map<String, dynamic> data) =>
      DebugStruct(
        error: deserializeParam(
          data['ERROR'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DebugStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DebugStruct && error == other.error;
  }

  @override
  int get hashCode => const ListEquality().hash([error]);
}

DebugStruct createDebugStruct({
  String? error,
}) =>
    DebugStruct(
      error: error,
    );
