import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_userAppState')) {
        try {
          final serializedData = prefs.getString('ff_userAppState') ?? '{}';
          _userAppState = UserDataTypeStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_cardsAppState')) {
        try {
          final serializedData = prefs.getString('ff_cardsAppState') ?? '{}';
          _cardsAppState = CardsDataTypeStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_accountAppState')) {
        try {
          final serializedData = prefs.getString('ff_accountAppState') ?? '{}';
          _accountAppState = AccountDataTypeStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  UserDataTypeStruct _userAppState = UserDataTypeStruct();
  UserDataTypeStruct get userAppState => _userAppState;
  set userAppState(UserDataTypeStruct value) {
    _userAppState = value;
    prefs.setString('ff_userAppState', value.serialize());
  }

  void updateUserAppStateStruct(Function(UserDataTypeStruct) updateFn) {
    updateFn(_userAppState);
    prefs.setString('ff_userAppState', _userAppState.serialize());
  }

  CardsDataTypeStruct _cardsAppState = CardsDataTypeStruct();
  CardsDataTypeStruct get cardsAppState => _cardsAppState;
  set cardsAppState(CardsDataTypeStruct value) {
    _cardsAppState = value;
    prefs.setString('ff_cardsAppState', value.serialize());
  }

  void updateCardsAppStateStruct(Function(CardsDataTypeStruct) updateFn) {
    updateFn(_cardsAppState);
    prefs.setString('ff_cardsAppState', _cardsAppState.serialize());
  }

  AccountDataTypeStruct _accountAppState = AccountDataTypeStruct();
  AccountDataTypeStruct get accountAppState => _accountAppState;
  set accountAppState(AccountDataTypeStruct value) {
    _accountAppState = value;
    prefs.setString('ff_accountAppState', value.serialize());
  }

  void updateAccountAppStateStruct(Function(AccountDataTypeStruct) updateFn) {
    updateFn(_accountAppState);
    prefs.setString('ff_accountAppState', _accountAppState.serialize());
  }

  DebugStruct _DEBUG = DebugStruct();
  DebugStruct get DEBUG => _DEBUG;
  set DEBUG(DebugStruct value) {
    _DEBUG = value;
  }

  void updateDEBUGStruct(Function(DebugStruct) updateFn) {
    updateFn(_DEBUG);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
