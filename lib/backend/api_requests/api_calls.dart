import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class UserTransferDataCall {
  static Future<ApiCallResponse> call({
    String? apiKey =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5pY2lwanZ4cWllaW5xeHB3d29vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzc0NDg5ODcsImV4cCI6MjA1MzAyNDk4N30.0-qToaY62BPXopNzpgWJ6ICQZH6805oEh1tURGpTtcY',
    String? jwtToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'userTransferData',
      apiUrl:
          'https://nicipjvxqieinqxpwwoo.supabase.co/rest/v1/rpc/get_user_transfer_history',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey': '$apiKey',
        'Authorization': 'Bearer $jwtToken',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? all(dynamic response) => getJsonField(
        response,
        r'''$.transfers''',
        true,
      ) as List?;
  static List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$.transfers[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.transfers[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? reason(dynamic response) => (getJsonField(
        response,
        r'''$.transfers[:].reason''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? sourceID(dynamic response) => (getJsonField(
        response,
        r'''$.transfers[:].sourceUserID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? destinationID(dynamic response) => (getJsonField(
        response,
        r'''$.transfers[:].destinationUserID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
