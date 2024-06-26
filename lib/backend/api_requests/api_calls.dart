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
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
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
  static GetPaymentSourcesCall getPaymentSourcesCall = GetPaymentSourcesCall();
  static AddBillCall addBillCall = AddBillCall();
  static AddIncomeCall addIncomeCall = AddIncomeCall();
  static GetBillsCall getBillsCall = GetBillsCall();
  static GetLedgerEntryCall getLedgerEntryCall = GetLedgerEntryCall();
  static GetSafeToSpendCall getSafeToSpendCall = GetSafeToSpendCall();
  static GetTotalSpentCall getTotalSpentCall = GetTotalSpentCall();
  static AddTransactionCall addTransactionCall = AddTransactionCall();
  static GetBillPasswordCall getBillPasswordCall = GetBillPasswordCall();
  static GetBillCall getBillCall = GetBillCall();
  static GetIncomeCall getIncomeCall = GetIncomeCall();
  static GetTransactionCall getTransactionCall = GetTransactionCall();
  static GetFilePathCall getFilePathCall = GetFilePathCall();
  static GetIncomesCall getIncomesCall = GetIncomesCall();
  static GetCurrentMonthIncomeCall getCurrentMonthIncomeCall =
      GetCurrentMonthIncomeCall();
}

class AddUserCall {
  Future<ApiCallResponse> call({
    String? email = '',
    bool? mailOptIn,
    String? firstName = '',
    String? lastName = '',
    String? uuid = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
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
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "householdId": "$householdIdGlobal",
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
  List<String>? paymentSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].paymentSource.sourceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? billId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].billId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? incomeId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].incomeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tags(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].tags''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
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
  List<String>? month(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].month''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].transactionId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
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
}

class GetHouseholdCall {
  Future<ApiCallResponse> call({
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
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
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
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

class GetPaymentSourcesCall {
  Future<ApiCallResponse> call({
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "householdId": "$householdIdGlobal"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getPaymentSources',
      apiUrl: '$baseUrl/getPaymentSource',
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

  List<String>? paymentSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.paymentSourceIDs''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.paymentSourceNames''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AddBillCall {
  Future<ApiCallResponse> call({
    String? category = '',
    String? billName = '',
    double? amount,
    int? dayOfMonth,
    String? frequency = '',
    String? description = '',
    String? url = '',
    String? user = '',
    String? password = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "householdId": "$householdIdGlobal",
  "billData": {
    "category": "$category",
    "billName": "$billName",
    "amount": $amount,
    "dayOfMonth": $dayOfMonth,
    "frequency": "$frequency",
    "description": "$description",
    "url": "$url",
    "username": "$user",
    "paymentSourceId": "$paymentSourceIdGlobal",
    "password": "$password"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addBill',
      apiUrl: '$baseUrl/addBill',
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

  String? billId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billId''',
      ));
  String? householdId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.householdId''',
      ));
  String? category(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.category''',
      ));
  String? billName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billName''',
      ));
  int? amount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.amount''',
      ));
  int? dayOfMonth(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.dayOfMonth''',
      ));
  String? frequency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.frequency''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.username''',
      ));
  String? password(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.password''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.updatedAt''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AddIncomeCall {
  Future<ApiCallResponse> call({
    String? incomeName = '',
    double? incomeAmount,
    String? incomeFrequency = '',
    String? incomeFirstPayDay = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "householdId": "$householdIdGlobal",
  "paymentSourceId": "$paymentSourceIdGlobal",
  "incomeData": {
    "name": "$incomeName",
    "amount": $incomeAmount,
    "frequency": "$incomeFrequency",
    "firstPayDay": "$incomeFirstPayDay"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addIncome',
      apiUrl: '$baseUrl/addIncome',
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
}

class GetBillsCall {
  Future<ApiCallResponse> call({
    String? filterType = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "householdId": "$householdIdGlobal",
  "filterType": "$filterType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getBills',
      apiUrl: '$baseUrl/getBills',
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
  List? ledgerEntries(dynamic response) => getJsonField(
        response,
        r'''$.ledgerEntries''',
        true,
      ) as List?;
  List<String>? billId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].billId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? transactionDate(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].transactionDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].paymentSourceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].paymentSourceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? ledgerId(dynamic response) => (getJsonField(
        response,
        r'''$.ledgerEntries[:].ledgerId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetLedgerEntryCall {
  Future<ApiCallResponse> call({
    String? ledgerId = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "ledgerId": "$ledgerId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getLedgerEntry',
      apiUrl: '$baseUrl/getLedgerEntry',
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

  String? ledgerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ledgerId''',
      ));
  String? householdId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.householdId''',
      ));
  String? paymentSourceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSourceId''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? transactionType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transactionType''',
      ));
  String? transactionDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.transactionDate''',
      ));
  String? category(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.category''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.updatedAt''',
      ));
  String? billId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billId''',
      ));
  double? runningTotal(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.runningTotal''',
      ));
  String? tags(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tags''',
      ));
  String? householdName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.household.householdName''',
      ));
  String? sourceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSource.sourceId''',
      ));
  String? sourcename(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSource.sourceName''',
      ));
  String? sourceType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSource.sourceType''',
      ));
  String? paymentdescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.paymentSource.description''',
      ));
}

class GetSafeToSpendCall {
  Future<ApiCallResponse> call({
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "householdId": "$householdIdGlobal"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getSafeToSpend',
      apiUrl: '$baseUrl/getSafeToSpend',
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

  double? safeToSpend(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.safeToSpend''',
      ));
  String? nextPayday(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextPayday''',
      ));
}

class GetTotalSpentCall {
  Future<ApiCallResponse> call({
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "householdId": "$householdIdGlobal"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTotalSpent',
      apiUrl: '$baseUrl/getTotalSpent',
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

  double? totalSpent(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.totalSpent''',
      ));
}

class AddTransactionCall {
  Future<ApiCallResponse> call({
    double? amount,
    String? transactionType = '',
    String? transactionDate = '',
    String? category = '',
    String? description = '',
    bool? status,
    String? tags = '',
    String? image = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "householdId": "$householdIdGlobal",
  "amount": $amount,
  "transactionType": "$transactionType",
  "transactionDate": "$transactionDate",
  "category": "$category",
  "description": "$description",
  "status": $status,
  "sourceId": "$paymentSourceIdGlobal",
  "tags": "$tags",
  "image": "$image"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addTransaction',
      apiUrl: '$baseUrl/addTransaction',
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
}

class GetBillPasswordCall {
  Future<ApiCallResponse> call({
    String? billId = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "billId": "$billId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getBillPassword',
      apiUrl: '$baseUrl/getBillPassword',
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

  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.secret.username''',
      ));
  String? password(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.secret.password''',
      ));
}

class GetBillCall {
  Future<ApiCallResponse> call({
    String? billId = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "billId": "$billId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getBill',
      apiUrl: '$baseUrl/getBill',
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

  int? dayOfMonth(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.dayOfMonth''',
      ));
  String? frequency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.frequency''',
      ));
  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class GetIncomeCall {
  Future<ApiCallResponse> call({
    String? incomeId = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "incomeId": "$incomeId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getIncome',
      apiUrl: '$baseUrl/getIncome',
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

  String? frequency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.frequency''',
      ));
  String? firstPayDay(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstPayDay''',
      ));
}

class GetTransactionCall {
  Future<ApiCallResponse> call({
    String? transactionId = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "transactionId": "$transactionId",
  "authToken": "$authenticationToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTransaction',
      apiUrl: '$baseUrl/getTransaction',
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
}

class GetFilePathCall {
  Future<ApiCallResponse> call({
    String? transactionId = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "transactionId": "$transactionId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getFilePath',
      apiUrl: '$baseUrl/getFilePath',
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
  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

class GetIncomesCall {
  Future<ApiCallResponse> call({
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "householdId": "$householdIdGlobal"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getIncomes',
      apiUrl: '$baseUrl/getIncomes',
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

  List<String>? incomeId(dynamic response) => (getJsonField(
        response,
        r'''$[:].incomeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class GetCurrentMonthIncomeCall {
  Future<ApiCallResponse> call({
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final baseUrl = TppbGroup.getBaseUrl(
      authenticationToken: authenticationToken,
      householdIdGlobal: householdIdGlobal,
      paymentSourceIdGlobal: paymentSourceIdGlobal,
    );

    final ffApiRequestBody = '''
{
  "authToken": "$authenticationToken",
  "householdId": "$householdIdGlobal"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getCurrentMonthIncome',
      apiUrl: '$baseUrl/getCurrentMonthIncome',
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

  double? totalIncome(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.totalIncome''',
      ));
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
