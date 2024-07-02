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
  static GetPaymentSourceCall getPaymentSourceCall = GetPaymentSourceCall();
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
  static SearchTransactionsCall searchTransactionsCall =
      SearchTransactionsCall();
  static GetNotificationsCall getNotificationsCall = GetNotificationsCall();
  static GetNotificationCall getNotificationCall = GetNotificationCall();
  static EditNotificationCall editNotificationCall = EditNotificationCall();
  static SubscriptionCheckerCall subscriptionCheckerCall =
      SubscriptionCheckerCall();
  static GetAllBillsCall getAllBillsCall = GetAllBillsCall();
  static EditBillCall editBillCall = EditBillCall();
  static DeleteBillCall deleteBillCall = DeleteBillCall();
  static AddInviteCall addInviteCall = AddInviteCall();
  static AcceptInviteCall acceptInviteCall = AcceptInviteCall();
  static AddHouseholdCall addHouseholdCall = AddHouseholdCall();
  static EditHouseholdCall editHouseholdCall = EditHouseholdCall();
  static GetHouseholdMembersCall getHouseholdMembersCall =
      GetHouseholdMembersCall();
  static DeleteMemberFromHouseholdCall deleteMemberFromHouseholdCall =
      DeleteMemberFromHouseholdCall();
  static DeleteHouseholdCall deleteHouseholdCall = DeleteHouseholdCall();
  static EditIncomeCall editIncomeCall = EditIncomeCall();
  static DeleteIncomeCall deleteIncomeCall = DeleteIncomeCall();
  static GetCategoriesCall getCategoriesCall = GetCategoriesCall();
  static ExportLedgerToCsvCall exportLedgerToCsvCall = ExportLedgerToCsvCall();
  static ExportLedgerToQBOCall exportLedgerToQBOCall = ExportLedgerToQBOCall();
  static ExportSearchCall exportSearchCall = ExportSearchCall();
  static EditLedgerEntryCall editLedgerEntryCall = EditLedgerEntryCall();
  static EditTransactionCall editTransactionCall = EditTransactionCall();
  static GetUserCall getUserCall = GetUserCall();
  static EditUserCall editUserCall = EditUserCall();
  static DeleteUserCall deleteUserCall = DeleteUserCall();
  static GetDefaultPaymentSourceCall getDefaultPaymentSourceCall =
      GetDefaultPaymentSourceCall();
  static SetDefaultPaymentSourceCall setDefaultPaymentSourceCall =
      SetDefaultPaymentSourceCall();
  static AddPaymentSourceCall addPaymentSourceCall = AddPaymentSourceCall();
  static EditPaymentSourceCall editPaymentSourceCall = EditPaymentSourceCall();
  static DeletePaymentSourceCall deletePaymentSourceCall =
      DeletePaymentSourceCall();
  static DeleteTransactionCall deleteTransactionCall = DeleteTransactionCall();
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
    double? threshold,
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
  },
  "threshold": "$threshold"
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
  List<bool>? threshold(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].threshold''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
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

class GetPaymentSourceCall {
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
      callName: 'getPaymentSource',
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

  List<String>? paymentSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.paymentSourceNames''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? runningTotals(dynamic response) => (getJsonField(
        response,
        r'''$.runningTotals''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<bool>? isDefault(dynamic response) => (getJsonField(
        response,
        r'''$.isDefault''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceId(dynamic response) => (getJsonField(
        response,
        r'''$.paymentSourceIds''',
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
  String? amount(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
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
  String? paymentSourceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ledgers[0].paymentSourceId''',
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
  String? incomeId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.incomeId''',
      ));
  String? householdId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.householdId''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? amount(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.updatedAt''',
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

class SearchTransactionsCall {
  Future<ApiCallResponse> call({
    String? query = '',
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
"query":"$query"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchTransactions',
      apiUrl: '$baseUrl/searchTransactions',
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

  List? list(dynamic response) => getJsonField(
        response,
        r'''$.transactions''',
        true,
      ) as List?;
  List<String>? ledgerId(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].ledgerId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? householdId(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].householdId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? sourceId(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].paymentSourceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? transactionType(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].transactionType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionDate(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].transactionDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? category(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<double>? runningTotal(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].runningTotal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? householdName(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].household.householdName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? paymentSourceName(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].paymentSourceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetNotificationsCall {
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
      callName: 'getNotifications',
      apiUrl: '$baseUrl/getNotifications',
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

  List<String>? notificationId(dynamic response) => (getJsonField(
        response,
        r'''$[:].notificationId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? billId(dynamic response) => (getJsonField(
        response,
        r'''$[:].billId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? message(dynamic response) => (getJsonField(
        response,
        r'''$[:].message''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dueDate(dynamic response) => (getJsonField(
        response,
        r'''$[:].dueDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetNotificationCall {
  Future<ApiCallResponse> call({
    String? notificationId = '',
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
  "notificationId": "$notificationId",
  "authToken": "$authenticationToken"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getNotification',
      apiUrl: '$baseUrl/getNotification',
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

  String? notificationId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.notificationId''',
      ));
  String? billId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billId''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.updatedAt''',
      ));
  String? dueDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dueDate''',
      ));
}

class EditNotificationCall {
  Future<ApiCallResponse> call({
    String? notificationId = '',
    String? dueDate = '',
    String? title = '',
    String? message = '',
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
  "notificationId": "$notificationId",
  "title": "$title",
  "message": "$message",
  "dueDate": "$dueDate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editNotification',
      apiUrl: '$baseUrl/editNotification',
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

class SubscriptionCheckerCall {
  Future<ApiCallResponse> call({
    String? userUuid = '',
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
{"uuid":"$userUuid"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'subscriptionChecker',
      apiUrl: '$baseUrl/subscriptionChecker',
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

  bool? isTrial(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.trial''',
      ));
  bool? isExpired(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.expired''',
      ));
  String? subscriptionEndDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.subscriptionEndDate''',
      ));
  bool? isActive(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.active''',
      ));
  bool? isCancelled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.cancelled''',
      ));
}

class GetAllBillsCall {
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
      callName: 'getAllBills',
      apiUrl: '$baseUrl/getAllBills',
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
  List? billsList(dynamic response) => getJsonField(
        response,
        r'''$.bills''',
        true,
      ) as List?;
  List<String>? billId(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].billId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? billName(dynamic response) => (getJsonField(
        response,
        r'''$.bills[:].billName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EditBillCall {
  Future<ApiCallResponse> call({
    double? amount,
    int? dayOfMonth,
    String? category = '',
    String? description = '',
    String? sourceId = '',
    String? billId = '',
    String? url = '',
    String? username = '',
    String? password = '',
    String? frequency = '',
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
  "householdId": "$householdIdGlobal",
  "amount": "$amount",
  "dayOfMonth": $dayOfMonth,
  "category": "$category",
  "description": "$description",
  "sourceId": "$sourceId",
  "billId": "$billId",
  "url": "$url",
  "username": "$username",
  "password": "$password",
  "frequency": "$frequency"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editBill',
      apiUrl: '$baseUrl/editBill',
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

class DeleteBillCall {
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
  "householdId": "$householdIdGlobal",
  "billId": "$billId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteBill',
      apiUrl: '$baseUrl/deleteBill',
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

class AddInviteCall {
  Future<ApiCallResponse> call({
    String? email = '',
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
  "authorizationToken": "$authenticationToken",
  "email": "$email",
  "householdId": "$householdIdGlobal"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addInvite',
      apiUrl: '$baseUrl/addInvite',
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

class AcceptInviteCall {
  Future<ApiCallResponse> call({
    String? invitationId = '',
    bool? mailOptIn,
    String? firstName = '',
    String? lastName = '',
    String? uuid = '',
    String? email = '',
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
  "invitationId": "$invitationId",
  "email": "$email",
  "mailOptIn": $mailOptIn,
  "firstName": "$firstName",
  "lastName": "$lastName",
  "uuid": "$uuid"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'acceptInvite',
      apiUrl: '$baseUrl/acceptInvite',
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

class AddHouseholdCall {
  Future<ApiCallResponse> call({
    String? householdName = '',
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
  "householdData": {
    "householdName": "$householdName",
    "activeSubscription": false
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addHousehold',
      apiUrl: '$baseUrl/addHousehold',
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

  String? householdName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.householdName''',
      ));
}

class EditHouseholdCall {
  Future<ApiCallResponse> call({
    String? householdName = '',
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
  "householdData": {
    "householdName": "$householdName"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editHousehold',
      apiUrl: '$baseUrl/editHousehold',
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

class GetHouseholdMembersCall {
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
      callName: 'getHouseholdMembers',
      apiUrl: '$baseUrl/getHouseholdMembers',
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

  List<String>? uuid(dynamic response) => (getJsonField(
        response,
        r'''$[:].uuid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? firstName(dynamic response) => (getJsonField(
        response,
        r'''$[:].firstName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? lastName(dynamic response) => (getJsonField(
        response,
        r'''$[:].lastName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? email(dynamic response) => (getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? role(dynamic response) => (getJsonField(
        response,
        r'''$[:].role''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? joinedDate(dynamic response) => (getJsonField(
        response,
        r'''$[:].joinedDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DeleteMemberFromHouseholdCall {
  Future<ApiCallResponse> call({
    String? memberUuid = '',
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
  "memberUuid": "$memberUuid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteMemberFromHousehold',
      apiUrl: '$baseUrl/deleteMemberFromHousehold',
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

class DeleteHouseholdCall {
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
      callName: 'deleteHousehold',
      apiUrl: '$baseUrl/deleteHousehold',
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

class EditIncomeCall {
  Future<ApiCallResponse> call({
    String? incomeId = '',
    String? name = '',
    double? amount,
    String? frequency = '',
    String? date = '',
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
  "incomeId": "$incomeId",
  "updatedIncomeData": {
    "name": "$name",
    "amount": $amount,
    "frequency": "$frequency",
    "firstPayDay": "$date",
    "paymentSourceId": "$paymentSourceIdGlobal"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editIncome',
      apiUrl: '$baseUrl/editIncome',
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

class DeleteIncomeCall {
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
      callName: 'deleteIncome',
      apiUrl: '$baseUrl/deleteIncome',
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

class GetCategoriesCall {
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
      callName: 'getCategories',
      apiUrl: '$baseUrl/getCategories',
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

  List? ytdList(dynamic response) => getJsonField(
        response,
        r'''$.yearToDate''',
        true,
      ) as List?;
  List<String>? ytdCateegory(dynamic response) => (getJsonField(
        response,
        r'''$.yearToDate[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? ytdAmount(dynamic response) => (getJsonField(
        response,
        r'''$.yearToDate[:].totalAmount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List? mtdList(dynamic response) => getJsonField(
        response,
        r'''$.monthToDate''',
        true,
      ) as List?;
  List<String>? mtdCategory(dynamic response) => (getJsonField(
        response,
        r'''$.monthToDate[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? mtdAmount(dynamic response) => (getJsonField(
        response,
        r'''$.monthToDate[:].totalAmount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class ExportLedgerToCsvCall {
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
  "authorizationToken": "$authenticationToken",
  "householdId": "$householdIdGlobal",
  "paymentSourceId": "$paymentSourceIdGlobal"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'exportLedgerToCsv',
      apiUrl: '$baseUrl/exportLedgerToCsv',
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
        r'''$.presignedUrl''',
      ));
}

class ExportLedgerToQBOCall {
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
  "authorizationToken": "$authenticationToken",
  "householdId": "$householdIdGlobal",
  "paymentSourceId": "$paymentSourceIdGlobal"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'exportLedgerToQBO',
      apiUrl: '$baseUrl/exportLedgerToQBO',
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
        r'''$.presignedUrl''',
      ));
}

class ExportSearchCall {
  Future<ApiCallResponse> call({
    String? reportType = '',
    String? category = '',
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
  "authorizationToken": "$authenticationToken",
  "householdId": "$householdIdGlobal",
  "paymentSourceId": "$paymentSourceIdGlobal",
  "reportType": "$reportType",
  "category": "$category"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'exportSearch',
      apiUrl: '$baseUrl/exportSearch',
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
        r'''$.presignedUrl''',
      ));
}

class EditLedgerEntryCall {
  Future<ApiCallResponse> call({
    bool? status,
    String? ledgerId = '',
    String? transactionDate = '',
    String? description = '',
    double? amount,
    String? category = '',
    String? tags = '',
    String? transactionType = '',
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
  "ledgerId": "$ledgerId",
  "updatedLedgerData": {
    "transactionDate": "$transactionDate",
    "status": $status,
    "description": "$description",
    "amount": $amount,
    "category": "$category",
    "tags": "$tags",
    "householdId": "$householdIdGlobal",
    "paymentSourceId": "$paymentSourceIdGlobal",
    "transactionType": "$transactionType"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editLedgerEntry',
      apiUrl: '$baseUrl/editLedgerEntry',
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

class EditTransactionCall {
  Future<ApiCallResponse> call({
    double? amount,
    String? transactionType = '',
    String? transactionDate = '',
    String? category = '',
    String? description = '',
    bool? status,
    String? tags = '',
    String? image = '',
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
  "transactionId": "$transactionId",
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
      callName: 'editTransaction',
      apiUrl: '$baseUrl/editTransaction',
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

class GetUserCall {
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
      callName: 'getUser',
      apiUrl: '$baseUrl/getUser',
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
  String? signupDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.signupDate''',
      ));
  bool? mailOptin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.mailOptIn''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.updatedAt''',
      ));
  String? subscriptionEndDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.subscriptionEndDate''',
      ));
  String? subscriptionStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.subscriptionStatus''',
      ));
}

class EditUserCall {
  Future<ApiCallResponse> call({
    String? email = '',
    bool? optin,
    String? firstName = '',
    String? lastName = '',
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
  "email": "$email",
  "mailOptIn": $optin,
  "firstName": "$firstName",
  "lastName": "$lastName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editUser',
      apiUrl: '$baseUrl/editUser',
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

class DeleteUserCall {
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
      callName: 'deleteUser',
      apiUrl: '$baseUrl/deleteUser',
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

class GetDefaultPaymentSourceCall {
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
  "householdId": "$householdIdGlobal"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getDefaultPaymentSource',
      apiUrl: '$baseUrl/getDefaultPaymentSource',
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

  String? defaultPaymentSourceId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.defaultPaymentSource''',
      ));
}

class SetDefaultPaymentSourceCall {
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
  "householdId": "$householdIdGlobal",
  "paymentSourceId": "$paymentSourceIdGlobal"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'setDefaultPaymentSource',
      apiUrl: '$baseUrl/setDefaultPaymentSource',
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

class AddPaymentSourceCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? type = '',
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
  "name": "$name",
  "type": "$type"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addPaymentSource',
      apiUrl: '$baseUrl/addPaymentSource',
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

class EditPaymentSourceCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? type = '',
    String? description = '',
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
  "sourceId": "$paymentSourceIdGlobal",
  "name": "$name",
  "type": "$type",
  "description": "$description"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editPaymentSource',
      apiUrl: '$baseUrl/editPaymentSource',
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

class DeletePaymentSourceCall {
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
  "sourceId": "$paymentSourceIdGlobal"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deletePaymentSource',
      apiUrl: '$baseUrl/deletePaymentSource',
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

class DeleteTransactionCall {
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
      callName: 'deleteTransaction',
      apiUrl: '$baseUrl/deleteTransaction',
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

/// End TPPB Group Code

/// Start stripeSubscription Group Code

class StripeSubscriptionGroup {
  static String getBaseUrl() => 'https://api.stripe.com/v1';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer sk_test_51OKoUuJMeGUbw0WodKTGYm9ICvEUEy14E2vjIci3XVvDQN0xTK6Yg0mOiCDNIRXYCrlxZT1BGKao12HsHudDXANE00hMkf8i1x',
    'ContentType': 'application/x-xxx-formm-urlencoded',
  };
  static CreateCustomerCall createCustomerCall = CreateCustomerCall();
  static CreateCheckoutSessionCall createCheckoutSessionCall =
      CreateCheckoutSessionCall();
  static GetCustomerPortalSessionCall getCustomerPortalSessionCall =
      GetCustomerPortalSessionCall();
}

class CreateCustomerCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? id = '',
    String? name = '',
  }) async {
    final baseUrl = StripeSubscriptionGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'create Customer',
      apiUrl: '$baseUrl/customers',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51OKoUuJMeGUbw0WodKTGYm9ICvEUEy14E2vjIci3XVvDQN0xTK6Yg0mOiCDNIRXYCrlxZT1BGKao12HsHudDXANE00hMkf8i1x',
        'ContentType': 'application/x-xxx-formm-urlencoded',
      },
      params: {
        'email': email,
        'id': id,
        'name': name,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class CreateCheckoutSessionCall {
  Future<ApiCallResponse> call({
    String? priceId = '',
    String? mode = '',
    String? uuid = '',
    String? cancelUrl = '',
  }) async {
    final baseUrl = StripeSubscriptionGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'create checkout session',
      apiUrl: '$baseUrl/checkout/sessions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51OKoUuJMeGUbw0WodKTGYm9ICvEUEy14E2vjIci3XVvDQN0xTK6Yg0mOiCDNIRXYCrlxZT1BGKao12HsHudDXANE00hMkf8i1x',
        'ContentType': 'application/x-xxx-formm-urlencoded',
      },
      params: {
        'mode': mode,
        'success_url': "https://thepurplepiggybank.com/thankyou",
        'cancel_url': cancelUrl,
        'line_items[0][price]': priceId,
        'line_items[0][quantity': "1",
        'customer': uuid,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? subscriptionId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  int? expiresAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expires_at''',
      ));
  int? createdAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  String? paymentStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payment_status''',
      ));
  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
  dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
}

class GetCustomerPortalSessionCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
  }) async {
    final baseUrl = StripeSubscriptionGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get customer portal session',
      apiUrl: '$baseUrl/billing_portal/sessions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_51OKoUuJMeGUbw0WodKTGYm9ICvEUEy14E2vjIci3XVvDQN0xTK6Yg0mOiCDNIRXYCrlxZT1BGKao12HsHudDXANE00hMkf8i1x',
        'ContentType': 'application/x-xxx-formm-urlencoded',
      },
      params: {
        'customer': uuid,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
}

/// End stripeSubscription Group Code

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
