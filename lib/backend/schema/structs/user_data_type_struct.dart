// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataTypeStruct extends BaseStruct {
  UserDataTypeStruct({
    String? userName,
    String? userPhone,
    String? userPicture,
    String? userIBAN,
    double? userBalance,
  })  : _userName = userName,
        _userPhone = userPhone,
        _userPicture = userPicture,
        _userIBAN = userIBAN,
        _userBalance = userBalance;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "userPhone" field.
  String? _userPhone;
  String get userPhone => _userPhone ?? '';
  set userPhone(String? val) => _userPhone = val;

  bool hasUserPhone() => _userPhone != null;

  // "userPicture" field.
  String? _userPicture;
  String get userPicture => _userPicture ?? '';
  set userPicture(String? val) => _userPicture = val;

  bool hasUserPicture() => _userPicture != null;

  // "userIBAN" field.
  String? _userIBAN;
  String get userIBAN => _userIBAN ?? '';
  set userIBAN(String? val) => _userIBAN = val;

  bool hasUserIBAN() => _userIBAN != null;

  // "userBalance" field.
  double? _userBalance;
  double get userBalance => _userBalance ?? 0.0;
  set userBalance(double? val) => _userBalance = val;

  void incrementUserBalance(double amount) =>
      userBalance = userBalance + amount;

  bool hasUserBalance() => _userBalance != null;

  static UserDataTypeStruct fromMap(Map<String, dynamic> data) =>
      UserDataTypeStruct(
        userName: data['userName'] as String?,
        userPhone: data['userPhone'] as String?,
        userPicture: data['userPicture'] as String?,
        userIBAN: data['userIBAN'] as String?,
        userBalance: castToType<double>(data['userBalance']),
      );

  static UserDataTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? UserDataTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userName': _userName,
        'userPhone': _userPhone,
        'userPicture': _userPicture,
        'userIBAN': _userIBAN,
        'userBalance': _userBalance,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'userPhone': serializeParam(
          _userPhone,
          ParamType.String,
        ),
        'userPicture': serializeParam(
          _userPicture,
          ParamType.String,
        ),
        'userIBAN': serializeParam(
          _userIBAN,
          ParamType.String,
        ),
        'userBalance': serializeParam(
          _userBalance,
          ParamType.double,
        ),
      }.withoutNulls;

  static UserDataTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataTypeStruct(
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        userPhone: deserializeParam(
          data['userPhone'],
          ParamType.String,
          false,
        ),
        userPicture: deserializeParam(
          data['userPicture'],
          ParamType.String,
          false,
        ),
        userIBAN: deserializeParam(
          data['userIBAN'],
          ParamType.String,
          false,
        ),
        userBalance: deserializeParam(
          data['userBalance'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'UserDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDataTypeStruct &&
        userName == other.userName &&
        userPhone == other.userPhone &&
        userPicture == other.userPicture &&
        userIBAN == other.userIBAN &&
        userBalance == other.userBalance;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([userName, userPhone, userPicture, userIBAN, userBalance]);
}

UserDataTypeStruct createUserDataTypeStruct({
  String? userName,
  String? userPhone,
  String? userPicture,
  String? userIBAN,
  double? userBalance,
}) =>
    UserDataTypeStruct(
      userName: userName,
      userPhone: userPhone,
      userPicture: userPicture,
      userIBAN: userIBAN,
      userBalance: userBalance,
    );
