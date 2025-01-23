// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransfertDataStruct extends BaseStruct {
  TransfertDataStruct({
    double? transferAmount,
    String? transferReason,
  })  : _transferAmount = transferAmount,
        _transferReason = transferReason;

  // "transferAmount" field.
  double? _transferAmount;
  double get transferAmount => _transferAmount ?? 0.0;
  set transferAmount(double? val) => _transferAmount = val;

  void incrementTransferAmount(double amount) =>
      transferAmount = transferAmount + amount;

  bool hasTransferAmount() => _transferAmount != null;

  // "transferReason" field.
  String? _transferReason;
  String get transferReason => _transferReason ?? '';
  set transferReason(String? val) => _transferReason = val;

  bool hasTransferReason() => _transferReason != null;

  static TransfertDataStruct fromMap(Map<String, dynamic> data) =>
      TransfertDataStruct(
        transferAmount: castToType<double>(data['transferAmount']),
        transferReason: data['transferReason'] as String?,
      );

  static TransfertDataStruct? maybeFromMap(dynamic data) => data is Map
      ? TransfertDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'transferAmount': _transferAmount,
        'transferReason': _transferReason,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'transferAmount': serializeParam(
          _transferAmount,
          ParamType.double,
        ),
        'transferReason': serializeParam(
          _transferReason,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransfertDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransfertDataStruct(
        transferAmount: deserializeParam(
          data['transferAmount'],
          ParamType.double,
          false,
        ),
        transferReason: deserializeParam(
          data['transferReason'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransfertDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransfertDataStruct &&
        transferAmount == other.transferAmount &&
        transferReason == other.transferReason;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([transferAmount, transferReason]);
}

TransfertDataStruct createTransfertDataStruct({
  double? transferAmount,
  String? transferReason,
}) =>
    TransfertDataStruct(
      transferAmount: transferAmount,
      transferReason: transferReason,
    );
