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
    int? pageNumber,
    int? month,
    int? year,
    bool? showCurrentMonthOnly,
    bool? showClearedOnly,
    bool? showCurrentMonthUpToToday = true,
    String? authenticationToken = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "householdId": "$householdId",
  "pageNumber": $pageNumber,
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
  String? ledgerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].ledgerId''',
      ));
  String? householdId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].householdId''',
      ));
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? paymentSourceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].paymentSourceId''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data[:].amount''',
      ));
  String? transactionType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].transactionType''',
      ));
  String? transactionDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].transactionDate''',
      ));
  String? category(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].category''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].description''',
      ));
  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.data[:].status''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].updatedAt''',
      ));
  double? runningTotal(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data[:].runningTotal''',
      ));
  bool? isInitial(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.data[:].isInitial''',
      ));
  String? transactionId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].transactions[:].transactionId''',
      ));
  int? month(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].month''',
      ));
  int? year(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].year''',
      ));
  int? dayOfMonth(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].dayOfMonth''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].type''',
      ));
  int? totalItems(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pagination.totalItems''',
      ));
  int? currentPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pagination.currentPage''',
      ));
  int? pageSize(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pagination.pageSize''',
      ));
  int? totalPages(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pagination.totalPages''',
      ));
  List? billId(dynamic response) => getJsonField(
        response,
        r'''$.data[:].bill.billId''',
        true,
      ) as List?;
  dynamic incomeId(dynamic response) => getJsonField(
        response,
        r'''$.data[:].income.incomeId''',
      );
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
