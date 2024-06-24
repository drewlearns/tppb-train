import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start TPPB Group Code

class TppbGroup {
  static String getBaseUrl({
    String? authenticationToken = '',
  }) =>
      'https://api.thepurplepiggybank.com';
  static Map<String, String> headers = {
    'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
  };
  static AddUserCall addUserCall = AddUserCall();
  static GetLedgerCall getLedgerCall = GetLedgerCall();
  static GetHouseholdCall getHouseholdCall = GetHouseholdCall();
  static EditLedgerEntryAsClearedCall editLedgerEntryAsClearedCall =
      EditLedgerEntryAsClearedCall();
}

class AddUserCall {
  Future<ApiCallResponse> call({
    String? email = '',
    bool? mailOptIn,
    String? firstName = '',
    String? lastName = '',
    String? uuid = '',
    String? authenticationToken = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
    );

    final ffApiRequestBody = '''
{
"email":"$email",
"mailOptIn":$mailOptIn,
"firstName":"$firstName",
"lastName":"$lastName",
"uuid":"$uuid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addUser',
      apiUrl: '$baseUrl/addUser',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? uuid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.uuid''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.lastName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
}

class GetLedgerCall {
  Future<ApiCallResponse> call({
    String? householdId = '',
    int? month,
    int? year,
    bool? showCurrentMonthOnly,
    bool? showClearedOnly,
    bool? showCurrentMonthUpToToday = false,
    String? authenticationToken = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "householdId": "$householdId",
  "filters": {
    "month": $month,
    "year": $year,
    "showCurrentMonthOnly": $showCurrentMonthOnly,
    "showClearedOnly": $showClearedOnly,
    "showCurrentMonthUpToToday": $showCurrentMonthUpToToday
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getLedger',
      apiUrl: '$baseUrl/getLedger',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<String>? ledgerId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].ledgerId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? householdId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].householdId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List<String>? paymentSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].paymentSourceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? transactionType(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].transactionType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionDate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].transactionDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? category(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? runningTotal(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].runningTotal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<bool>? isInitial(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].isInitial''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? transactionId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].transactions[:].transactionId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? month(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].month''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? year(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].year''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? dayOfMonth(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].dayOfMonth''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? totalItems(dynamic response) => (getJsonField(
        response,
        r'''$.pagination.totalItems''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? currentPage(dynamic response) => (getJsonField(
        response,
        r'''$.pagination.currentPage''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? pageSize(dynamic response) => (getJsonField(
        response,
        r'''$.pagination.pageSize''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? totalPages(dynamic response) => (getJsonField(
        response,
        r'''$.pagination.totalPages''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? billId(dynamic response) => getJsonField(
        response,
        r'''$.data[:].bill.billId''',
        true,
      ) as List?;
  List? incomeId(dynamic response) => getJsonField(
        response,
        r'''$.data[:].income.incomeId''',
        true,
      ) as List?;
  List<String>? paymentSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].paymentSource.sourceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetHouseholdCall {
  Future<ApiCallResponse> call({
    String? authenticationToken = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getHousehold',
      apiUrl: '$baseUrl/getHousehold',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? householdIds(dynamic response) => (getJsonField(
        response,
        r'''$.householdIds''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? householdNames(dynamic response) => (getJsonField(
        response,
        r'''$.householdNames''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EditLedgerEntryAsClearedCall {
  Future<ApiCallResponse> call({
    String? ledgerId = '',
    String? authenticationToken = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "ledgerId": "$ledgerId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editLedgerEntryAsCleared',
      apiUrl: '$baseUrl/editLedgerEntryAsCleared',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': 'zRkOsRKfGjAxK5aKxXO4gS9HUTIsSzmM',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

/// End TPPB Group Code

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
