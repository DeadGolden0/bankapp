// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardsDataTypeStruct extends BaseStruct {
  CardsDataTypeStruct({
    int? cardNumber,
    int? cardCVC,
    bool? cardStatus,
  })  : _cardNumber = cardNumber,
        _cardCVC = cardCVC,
        _cardStatus = cardStatus;

  // "CardNumber" field.
  int? _cardNumber;
  int get cardNumber => _cardNumber ?? 0;
  set cardNumber(int? val) => _cardNumber = val;

  void incrementCardNumber(int amount) => cardNumber = cardNumber + amount;

  bool hasCardNumber() => _cardNumber != null;

  // "CardCVC" field.
  int? _cardCVC;
  int get cardCVC => _cardCVC ?? 0;
  set cardCVC(int? val) => _cardCVC = val;

  void incrementCardCVC(int amount) => cardCVC = cardCVC + amount;

  bool hasCardCVC() => _cardCVC != null;

  // "CardStatus" field.
  bool? _cardStatus;
  bool get cardStatus => _cardStatus ?? false;
  set cardStatus(bool? val) => _cardStatus = val;

  bool hasCardStatus() => _cardStatus != null;

  static CardsDataTypeStruct fromMap(Map<String, dynamic> data) =>
      CardsDataTypeStruct(
        cardNumber: castToType<int>(data['CardNumber']),
        cardCVC: castToType<int>(data['CardCVC']),
        cardStatus: data['CardStatus'] as bool?,
      );

  static CardsDataTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? CardsDataTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CardNumber': _cardNumber,
        'CardCVC': _cardCVC,
        'CardStatus': _cardStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CardNumber': serializeParam(
          _cardNumber,
          ParamType.int,
        ),
        'CardCVC': serializeParam(
          _cardCVC,
          ParamType.int,
        ),
        'CardStatus': serializeParam(
          _cardStatus,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CardsDataTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardsDataTypeStruct(
        cardNumber: deserializeParam(
          data['CardNumber'],
          ParamType.int,
          false,
        ),
        cardCVC: deserializeParam(
          data['CardCVC'],
          ParamType.int,
          false,
        ),
        cardStatus: deserializeParam(
          data['CardStatus'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CardsDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardsDataTypeStruct &&
        cardNumber == other.cardNumber &&
        cardCVC == other.cardCVC &&
        cardStatus == other.cardStatus;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([cardNumber, cardCVC, cardStatus]);
}

CardsDataTypeStruct createCardsDataTypeStruct({
  int? cardNumber,
  int? cardCVC,
  bool? cardStatus,
}) =>
    CardsDataTypeStruct(
      cardNumber: cardNumber,
      cardCVC: cardCVC,
      cardStatus: cardStatus,
    );
