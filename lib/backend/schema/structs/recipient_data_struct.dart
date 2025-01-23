// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipientDataStruct extends BaseStruct {
  RecipientDataStruct({
    String? recipientID,
    String? recipientName,
    String? recipientIBAN,
    String? recipientPicture,
  })  : _recipientID = recipientID,
        _recipientName = recipientName,
        _recipientIBAN = recipientIBAN,
        _recipientPicture = recipientPicture;

  // "recipientID" field.
  String? _recipientID;
  String get recipientID => _recipientID ?? '';
  set recipientID(String? val) => _recipientID = val;

  bool hasRecipientID() => _recipientID != null;

  // "recipientName" field.
  String? _recipientName;
  String get recipientName => _recipientName ?? '';
  set recipientName(String? val) => _recipientName = val;

  bool hasRecipientName() => _recipientName != null;

  // "recipientIBAN" field.
  String? _recipientIBAN;
  String get recipientIBAN => _recipientIBAN ?? '';
  set recipientIBAN(String? val) => _recipientIBAN = val;

  bool hasRecipientIBAN() => _recipientIBAN != null;

  // "recipientPicture" field.
  String? _recipientPicture;
  String get recipientPicture => _recipientPicture ?? '';
  set recipientPicture(String? val) => _recipientPicture = val;

  bool hasRecipientPicture() => _recipientPicture != null;

  static RecipientDataStruct fromMap(Map<String, dynamic> data) =>
      RecipientDataStruct(
        recipientID: data['recipientID'] as String?,
        recipientName: data['recipientName'] as String?,
        recipientIBAN: data['recipientIBAN'] as String?,
        recipientPicture: data['recipientPicture'] as String?,
      );

  static RecipientDataStruct? maybeFromMap(dynamic data) => data is Map
      ? RecipientDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'recipientID': _recipientID,
        'recipientName': _recipientName,
        'recipientIBAN': _recipientIBAN,
        'recipientPicture': _recipientPicture,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'recipientID': serializeParam(
          _recipientID,
          ParamType.String,
        ),
        'recipientName': serializeParam(
          _recipientName,
          ParamType.String,
        ),
        'recipientIBAN': serializeParam(
          _recipientIBAN,
          ParamType.String,
        ),
        'recipientPicture': serializeParam(
          _recipientPicture,
          ParamType.String,
        ),
      }.withoutNulls;

  static RecipientDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecipientDataStruct(
        recipientID: deserializeParam(
          data['recipientID'],
          ParamType.String,
          false,
        ),
        recipientName: deserializeParam(
          data['recipientName'],
          ParamType.String,
          false,
        ),
        recipientIBAN: deserializeParam(
          data['recipientIBAN'],
          ParamType.String,
          false,
        ),
        recipientPicture: deserializeParam(
          data['recipientPicture'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RecipientDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecipientDataStruct &&
        recipientID == other.recipientID &&
        recipientName == other.recipientName &&
        recipientIBAN == other.recipientIBAN &&
        recipientPicture == other.recipientPicture;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([recipientID, recipientName, recipientIBAN, recipientPicture]);
}

RecipientDataStruct createRecipientDataStruct({
  String? recipientID,
  String? recipientName,
  String? recipientIBAN,
  String? recipientPicture,
}) =>
    RecipientDataStruct(
      recipientID: recipientID,
      recipientName: recipientName,
      recipientIBAN: recipientIBAN,
      recipientPicture: recipientPicture,
    );
