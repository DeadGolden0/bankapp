// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseDataStruct extends BaseStruct {
  ResponseDataStruct({
    String? status,
    String? message,
  })  : _status = status,
        _message = message;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static ResponseDataStruct fromMap(Map<String, dynamic> data) =>
      ResponseDataStruct(
        status: data['status'] as String?,
        message: data['message'] as String?,
      );

  static ResponseDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponseDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResponseDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponseDataStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResponseDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseDataStruct &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([status, message]);
}

ResponseDataStruct createResponseDataStruct({
  String? status,
  String? message,
}) =>
    ResponseDataStruct(
      status: status,
      message: message,
    );
