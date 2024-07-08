import 'dart:convert';
import '../cloud_functions/cloud_functions.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start TPPB Group Code

class TppbGroup {
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
  static DeleteLedgerEntryCall deleteLedgerEntryCall = DeleteLedgerEntryCall();
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AddUserCall',
        'variables': {
          'email': email,
          'mailOptIn': mailOptIn,
          'firstName': firstName,
          'lastName': lastName,
          'uuid': uuid,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetLedgerCall',
        'variables': {
          'householdId': householdId,
          'month': month,
          'year': year,
          'showCurrentMonthOnly': showCurrentMonthOnly,
          'showClearedOnly': showClearedOnly,
          'showCurrentMonthUpToToday': showCurrentMonthUpToToday,
          'threshold': threshold,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetHouseholdCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EditLedgerEntryAsClearedCall',
        'variables': {
          'ledgerId': ledgerId,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetPaymentSourceCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    String? frequency = '',
    String? description = '',
    String? billerUrl = '',
    String? user = '',
    String? password = '',
    String? startDate = '',
    String? endDate = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AddBillCall',
        'variables': {
          'category': category,
          'billName': billName,
          'amount': amount,
          'frequency': frequency,
          'description': description,
          'billerUrl': billerUrl,
          'user': user,
          'password': password,
          'startDate': startDate,
          'endDate': endDate,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    String? startDate = '',
    String? endDate = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AddIncomeCall',
        'variables': {
          'incomeName': incomeName,
          'incomeAmount': incomeAmount,
          'incomeFrequency': incomeFrequency,
          'startDate': startDate,
          'endDate': endDate,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetBillsCall',
        'variables': {
          'filterType': filterType,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetLedgerEntryCall',
        'variables': {
          'ledgerId': ledgerId,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetSafeToSpendCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTotalSpentCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AddTransactionCall',
        'variables': {
          'amount': amount,
          'transactionType': transactionType,
          'transactionDate': transactionDate,
          'category': category,
          'description': description,
          'status': status,
          'tags': tags,
          'image': image,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetBillPasswordCall',
        'variables': {
          'billId': billId,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetBillCall',
        'variables': {
          'billId': billId,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetIncomeCall',
        'variables': {
          'incomeId': incomeId,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
  String? paymentSourceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentSourceId''',
      ));
  dynamic startDate(dynamic response) => getJsonField(
        response,
        r'''$.startDate''',
      );
  dynamic endDate(dynamic response) => getJsonField(
        response,
        r'''$.endDate''',
      );
}

class GetTransactionCall {
  Future<ApiCallResponse> call({
    String? transactionId = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetTransactionCall',
        'variables': {
          'transactionId': transactionId,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetFilePathCall {
  Future<ApiCallResponse> call({
    String? transactionId = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetFilePathCall',
        'variables': {
          'transactionId': transactionId,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetIncomesCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? transactionDate(dynamic response) => (getJsonField(
        response,
        r'''$[:].transactionDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].incomeName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? incomeId(dynamic response) => (getJsonField(
        response,
        r'''$[:].incomeId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetCurrentMonthIncomeCall {
  Future<ApiCallResponse> call({
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetCurrentMonthIncomeCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'SearchTransactionsCall',
        'variables': {
          'query': query,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetNotificationsCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetNotificationCall',
        'variables': {
          'notificationId': notificationId,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EditNotificationCall',
        'variables': {
          'notificationId': notificationId,
          'dueDate': dueDate,
          'title': title,
          'message': message,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'SubscriptionCheckerCall',
        'variables': {
          'userUuid': userUuid,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetAllBillsCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    String? category = '',
    String? description = '',
    String? sourceId = '',
    String? billId = '',
    String? billerUrl = '',
    String? username = '',
    String? password = '',
    String? frequency = '',
    String? startDate = '',
    String? endDate = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EditBillCall',
        'variables': {
          'amount': amount,
          'category': category,
          'description': description,
          'sourceId': sourceId,
          'billId': billId,
          'billerUrl': billerUrl,
          'username': username,
          'password': password,
          'frequency': frequency,
          'startDate': startDate,
          'endDate': endDate,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class DeleteBillCall {
  Future<ApiCallResponse> call({
    String? billId = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'DeleteBillCall',
        'variables': {
          'billId': billId,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AddInviteCall',
        'variables': {
          'email': email,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AcceptInviteCall',
        'variables': {
          'invitationId': invitationId,
          'mailOptIn': mailOptIn,
          'firstName': firstName,
          'lastName': lastName,
          'uuid': uuid,
          'email': email,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AddHouseholdCall',
        'variables': {
          'householdName': householdName,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? householdName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.householdName''',
      ));
  dynamic householdId(dynamic response) => getJsonField(
        response,
        r'''$.householdId''',
      );
}

class EditHouseholdCall {
  Future<ApiCallResponse> call({
    String? householdName = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EditHouseholdCall',
        'variables': {
          'householdName': householdName,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class GetHouseholdMembersCall {
  Future<ApiCallResponse> call({
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetHouseholdMembersCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'DeleteMemberFromHouseholdCall',
        'variables': {
          'memberUuid': memberUuid,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'DeleteHouseholdCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    String? startDate = '',
    String? endDate = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EditIncomeCall',
        'variables': {
          'incomeId': incomeId,
          'name': name,
          'amount': amount,
          'frequency': frequency,
          'date': date,
          'startDate': startDate,
          'endDate': endDate,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'DeleteIncomeCall',
        'variables': {
          'incomeId': incomeId,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetCategoriesCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ExportLedgerToCsvCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ExportLedgerToQBOCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ExportSearchCall',
        'variables': {
          'reportType': reportType,
          'category': category,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EditLedgerEntryCall',
        'variables': {
          'status': status,
          'ledgerId': ledgerId,
          'transactionDate': transactionDate,
          'description': description,
          'amount': amount,
          'category': category,
          'tags': tags,
          'transactionType': transactionType,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EditTransactionCall',
        'variables': {
          'amount': amount,
          'transactionType': transactionType,
          'transactionDate': transactionDate,
          'category': category,
          'description': description,
          'status': status,
          'tags': tags,
          'image': image,
          'transactionId': transactionId,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetUserCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EditUserCall',
        'variables': {
          'email': email,
          'optin': optin,
          'firstName': firstName,
          'lastName': lastName,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'DeleteUserCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetDefaultPaymentSourceCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'SetDefaultPaymentSourceCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AddPaymentSourceCall',
        'variables': {
          'name': name,
          'type': type,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic paymentSourceId(dynamic response) => getJsonField(
        response,
        r'''$.paymentSourceId''',
      );
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EditPaymentSourceCall',
        'variables': {
          'name': name,
          'type': type,
          'description': description,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'DeletePaymentSourceCall',
        'variables': {
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class DeleteTransactionCall {
  Future<ApiCallResponse> call({
    String? transactionId = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'DeleteTransactionCall',
        'variables': {
          'transactionId': transactionId,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class DeleteLedgerEntryCall {
  Future<ApiCallResponse> call({
    String? ledgerId = '',
    String? authenticationToken = '',
    String? householdIdGlobal = '',
    String? paymentSourceIdGlobal = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'DeleteLedgerEntryCall',
        'variables': {
          'ledgerId': ledgerId,
          'authenticationToken': authenticationToken,
          'householdIdGlobal': householdIdGlobal,
          'paymentSourceIdGlobal': paymentSourceIdGlobal,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

/// End TPPB Group Code

/// Start stripeSubscription Group Code

class StripeSubscriptionGroup {
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateCustomerCall',
        'variables': {
          'email': email,
          'id': id,
          'name': name,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateCheckoutSessionCall',
        'variables': {
          'priceId': priceId,
          'mode': mode,
          'uuid': uuid,
          'cancelUrl': cancelUrl,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetCustomerPortalSessionCall',
        'variables': {
          'uuid': uuid,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
