// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransferHistoryStruct extends BaseStruct {
  TransferHistoryStruct({
    String? transferID,
    String? sourceUserID,
    String? destinationUserID,
    double? transferAmount,
    String? transferReason,
    DateTime? transferDate,
    String? transferStatus,
  })  : _transferID = transferID,
        _sourceUserID = sourceUserID,
        _destinationUserID = destinationUserID,
        _transferAmount = transferAmount,
        _transferReason = transferReason,
        _transferDate = transferDate,
        _transferStatus = transferStatus;

  // "transferID" field.
  String? _transferID;
  String get transferID => _transferID ?? '';
  set transferID(String? val) => _transferID = val;

  bool hasTransferID() => _transferID != null;

  // "sourceUserID" field.
  String? _sourceUserID;
  String get sourceUserID => _sourceUserID ?? '';
  set sourceUserID(String? val) => _sourceUserID = val;

  bool hasSourceUserID() => _sourceUserID != null;

  // "destinationUserID" field.
  String? _destinationUserID;
  String get destinationUserID => _destinationUserID ?? '';
  set destinationUserID(String? val) => _destinationUserID = val;

  bool hasDestinationUserID() => _destinationUserID != null;

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

  // "transferDate" field.
  DateTime? _transferDate;
  DateTime? get transferDate => _transferDate;
  set transferDate(DateTime? val) => _transferDate = val;

  bool hasTransferDate() => _transferDate != null;

  // "transferStatus" field.
  String? _transferStatus;
  String get transferStatus => _transferStatus ?? '';
  set transferStatus(String? val) => _transferStatus = val;

  bool hasTransferStatus() => _transferStatus != null;

  static TransferHistoryStruct fromMap(Map<String, dynamic> data) =>
      TransferHistoryStruct(
        transferID: data['transferID'] as String?,
        sourceUserID: data['sourceUserID'] as String?,
        destinationUserID: data['destinationUserID'] as String?,
        transferAmount: castToType<double>(data['transferAmount']),
        transferReason: data['transferReason'] as String?,
        transferDate: data['transferDate'] as DateTime?,
        transferStatus: data['transferStatus'] as String?,
      );

  static TransferHistoryStruct? maybeFromMap(dynamic data) => data is Map
      ? TransferHistoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'transferID': _transferID,
        'sourceUserID': _sourceUserID,
        'destinationUserID': _destinationUserID,
        'transferAmount': _transferAmount,
        'transferReason': _transferReason,
        'transferDate': _transferDate,
        'transferStatus': _transferStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'transferID': serializeParam(
          _transferID,
          ParamType.String,
        ),
        'sourceUserID': serializeParam(
          _sourceUserID,
          ParamType.String,
        ),
        'destinationUserID': serializeParam(
          _destinationUserID,
          ParamType.String,
        ),
        'transferAmount': serializeParam(
          _transferAmount,
          ParamType.double,
        ),
        'transferReason': serializeParam(
          _transferReason,
          ParamType.String,
        ),
        'transferDate': serializeParam(
          _transferDate,
          ParamType.DateTime,
        ),
        'transferStatus': serializeParam(
          _transferStatus,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransferHistoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransferHistoryStruct(
        transferID: deserializeParam(
          data['transferID'],
          ParamType.String,
          false,
        ),
        sourceUserID: deserializeParam(
          data['sourceUserID'],
          ParamType.String,
          false,
        ),
        destinationUserID: deserializeParam(
          data['destinationUserID'],
          ParamType.String,
          false,
        ),
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
        transferDate: deserializeParam(
          data['transferDate'],
          ParamType.DateTime,
          false,
        ),
        transferStatus: deserializeParam(
          data['transferStatus'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransferHistoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransferHistoryStruct &&
        transferID == other.transferID &&
        sourceUserID == other.sourceUserID &&
        destinationUserID == other.destinationUserID &&
        transferAmount == other.transferAmount &&
        transferReason == other.transferReason &&
        transferDate == other.transferDate &&
        transferStatus == other.transferStatus;
  }

  @override
  int get hashCode => const ListEquality().hash([
        transferID,
        sourceUserID,
        destinationUserID,
        transferAmount,
        transferReason,
        transferDate,
        transferStatus
      ]);
}

TransferHistoryStruct createTransferHistoryStruct({
  String? transferID,
  String? sourceUserID,
  String? destinationUserID,
  double? transferAmount,
  String? transferReason,
  DateTime? transferDate,
  String? transferStatus,
}) =>
    TransferHistoryStruct(
      transferID: transferID,
      sourceUserID: sourceUserID,
      destinationUserID: destinationUserID,
      transferAmount: transferAmount,
      transferReason: transferReason,
      transferDate: transferDate,
      transferStatus: transferStatus,
    );
