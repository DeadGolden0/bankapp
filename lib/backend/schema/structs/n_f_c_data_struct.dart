// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NFCDataStruct extends BaseStruct {
  NFCDataStruct({
    String? result,
    String? error,
  })  : _result = result,
        _error = error;

  // "result" field.
  String? _result;
  String get result => _result ?? '';
  set result(String? val) => _result = val;

  bool hasResult() => _result != null;

  // "error" field.
  String? _error;
  String get error => _error ?? '';
  set error(String? val) => _error = val;

  bool hasError() => _error != null;

  static NFCDataStruct fromMap(Map<String, dynamic> data) => NFCDataStruct(
        result: data['result'] as String?,
        error: data['error'] as String?,
      );

  static NFCDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? NFCDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'result': _result,
        'error': _error,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'result': serializeParam(
          _result,
          ParamType.String,
        ),
        'error': serializeParam(
          _error,
          ParamType.String,
        ),
      }.withoutNulls;

  static NFCDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      NFCDataStruct(
        result: deserializeParam(
          data['result'],
          ParamType.String,
          false,
        ),
        error: deserializeParam(
          data['error'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NFCDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NFCDataStruct &&
        result == other.result &&
        error == other.error;
  }

  @override
  int get hashCode => const ListEquality().hash([result, error]);
}

NFCDataStruct createNFCDataStruct({
  String? result,
  String? error,
}) =>
    NFCDataStruct(
      result: result,
      error: error,
    );
