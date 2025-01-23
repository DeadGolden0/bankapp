// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountDataTypeStruct extends BaseStruct {
  AccountDataTypeStruct({
    double? accountBalance,
    String? accountIBAN,
  })  : _accountBalance = accountBalance,
        _accountIBAN = accountIBAN;

  // "AccountBalance" field.
  double? _accountBalance;
  double get accountBalance => _accountBalance ?? 0.0;
  set accountBalance(double? val) => _accountBalance = val;

  void incrementAccountBalance(double amount) =>
      accountBalance = accountBalance + amount;

  bool hasAccountBalance() => _accountBalance != null;

  // "AccountIBAN" field.
  String? _accountIBAN;
  String get accountIBAN => _accountIBAN ?? '';
  set accountIBAN(String? val) => _accountIBAN = val;

  bool hasAccountIBAN() => _accountIBAN != null;

  static AccountDataTypeStruct fromMap(Map<String, dynamic> data) =>
      AccountDataTypeStruct(
        accountBalance: castToType<double>(data['AccountBalance']),
        accountIBAN: data['AccountIBAN'] as String?,
      );

  static AccountDataTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? AccountDataTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'AccountBalance': _accountBalance,
        'AccountIBAN': _accountIBAN,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'AccountBalance': serializeParam(
          _accountBalance,
          ParamType.double,
        ),
        'AccountIBAN': serializeParam(
          _accountIBAN,
          ParamType.String,
        ),
      }.withoutNulls;

  static AccountDataTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccountDataTypeStruct(
        accountBalance: deserializeParam(
          data['AccountBalance'],
          ParamType.double,
          false,
        ),
        accountIBAN: deserializeParam(
          data['AccountIBAN'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AccountDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountDataTypeStruct &&
        accountBalance == other.accountBalance &&
        accountIBAN == other.accountIBAN;
  }

  @override
  int get hashCode => const ListEquality().hash([accountBalance, accountIBAN]);
}

AccountDataTypeStruct createAccountDataTypeStruct({
  double? accountBalance,
  String? accountIBAN,
}) =>
    AccountDataTypeStruct(
      accountBalance: accountBalance,
      accountIBAN: accountIBAN,
    );
