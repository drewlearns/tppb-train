import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:just_audio/just_audio.dart';
import 'ledger_model.dart';
export 'ledger_model.dart';

class LedgerWidget extends StatefulWidget {
  const LedgerWidget({super.key});

  @override
  State<LedgerWidget> createState() => _LedgerWidgetState();
}

class _LedgerWidgetState extends State<LedgerWidget>
    with TickerProviderStateMixin {
  late LedgerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LedgerModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.subscriptionCheckerOutput =
          await TppbGroup.subscriptionCheckerCall.call(
        userUuid: currentUserUid,
      );

      if ((_model.subscriptionCheckerOutput?.succeeded ?? true)) {
        if (TppbGroup.subscriptionCheckerCall.isTrial(
          (_model.subscriptionCheckerOutput?.jsonBody ?? ''),
        )!) {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: const Text('Thank you for Trying Our App'),
                    content: Text('Your trial ends ${valueOrDefault<String>(
                      TppbGroup.subscriptionCheckerCall.subscriptionEndDate(
                        (_model.subscriptionCheckerOutput?.jsonBody ?? ''),
                      ),
                      'after 14 days',
                    )}. Please consider purchasing from the account page'),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: const Text('Buy now'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: const Text('Continue'),
                      ),
                    ],
                  );
                },
              ) ??
              false;
          if (!confirmDialogResponse) {
            if (Navigator.of(context).canPop()) {
              context.pop();
            }
            context.pushNamedAuth('SalesPage', context.mounted);
          }
        } else if (TppbGroup.subscriptionCheckerCall.isExpired(
          (_model.subscriptionCheckerOutput?.jsonBody ?? ''),
        )!) {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: const Text(
                        'Your  trial Period is over or your subscription has expired'),
                    content:
                        Text('Your subscription ended${valueOrDefault<String>(
                      TppbGroup.subscriptionCheckerCall.subscriptionEndDate(
                        (_model.subscriptionCheckerOutput?.jsonBody ?? ''),
                      ),
                      'after 14 days',
                    )}. Please consider purchasing from the account page'),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: const Text('Buy now'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: const Text('Log Out'),
                      ),
                    ],
                  );
                },
              ) ??
              false;
          if (confirmDialogResponse) {
            GoRouter.of(context).prepareAuthEvent();
            await authManager.signOut();
            GoRouter.of(context).clearRedirectLocation();
          } else {
            if (Navigator.of(context).canPop()) {
              context.pop();
            }
            context.pushNamedAuth('Account', context.mounted);
          }
        }
      } else {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: const Text('Error'),
              content: const Text(
                  'Error Checking Subscription Status - Please contact support, help@thepurplepiggybank.com'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: const Text('Ok'),
                ),
              ],
            );
          },
        );
      }
    });

    animationsMap.addAll({
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Ledger',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: Visibility(
                visible: _model.householdDropDownValue != null &&
                    _model.householdDropDownValue != '',
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.category_outlined,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(
                        'Categories',
                        queryParameters: {
                          'householdId': serializeParam(
                            _model.householdDropDownValue,
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.search,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      setState(() {
                        _model.householdDropDownValueController?.reset();
                        _model.monthDropDownValueController?.reset();
                        _model.yearDropDownValueController?.reset();
                      });

                      context.pushNamed('SearchTransactions');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: ToggleIcon(
                    onPressed: () async {
                      setState(
                          () => _model.filterClicked = !_model.filterClicked);
                      setState(() => _model.apiRequestCompleter = null);
                      await _model.waitForApiRequestCompleted();

                      setState(() {});
                    },
                    value: _model.filterClicked,
                    onIcon: Icon(
                      Icons.filter_alt,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 25.0,
                    ),
                    offIcon: Icon(
                      Icons.filter_alt_off,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 25.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 8.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.add,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      setState(() {
                        _model.householdDropDownValueController?.reset();
                        _model.monthDropDownValueController?.reset();
                        _model.yearDropDownValueController?.reset();
                      });

                      context.pushNamed('AddTransaction');
                    },
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                title: AutoSizeText(
                  FFLocalizations.of(context).getText(
                    'ne1dsipt' /* Ledger */,
                  ),
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Noto Sans JP',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        letterSpacing: 0.0,
                      ),
                ),
                centerTitle: true,
                expandedTitleScale: 1.0,
              ),
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(12.0),
                                          bottomRight: Radius.circular(12.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                      ),
                                      child: SingleChildScrollView(
                                        primary: false,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: FutureBuilder<
                                                  ApiCallResponse>(
                                                future: TppbGroup
                                                    .getHouseholdCall
                                                    .call(
                                                  authenticationToken:
                                                      valueOrDefault<String>(
                                                    currentJwtToken,
                                                    'Loading...',
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final householdDropDownGetHouseholdResponse =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .householdDropDownValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: List<String>.from(
                                                        TppbGroup
                                                            .getHouseholdCall
                                                            .householdIds(
                                                      householdDropDownGetHouseholdResponse
                                                          .jsonBody,
                                                    )!),
                                                    optionLabels: TppbGroup
                                                        .getHouseholdCall
                                                        .householdNames(
                                                      householdDropDownGetHouseholdResponse
                                                          .jsonBody,
                                                    )!,
                                                    onChanged: (val) async {
                                                      setState(() => _model
                                                              .householdDropDownValue =
                                                          val);
                                                      setState(() => _model
                                                              .apiRequestCompleter =
                                                          null);
                                                      await _model
                                                          .waitForApiRequestCompleted();

                                                      setState(() {});
                                                    },
                                                    width: 300.0,
                                                    height: 56.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'ne8su8g7' /* Please select... */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'y1wzq8cs' /* Budget* */,
                                                    ),
                                                    labelTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Noto Sans JP',
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                  );
                                                },
                                              ),
                                            ),
                                            if (_model.filterClicked)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 8.0),
                                                child: Container(
                                                  width: 370.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u6b4mzwm' /* Turn off All filters to view E... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      SwitchListTile.adaptive(
                                                        value: _model
                                                                .thisMonthUpToTodayValue ??=
                                                            true,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .thisMonthUpToTodayValue =
                                                              newValue);
                                                          if (newValue) {
                                                            setState(() {});
                                                            setState(() => _model
                                                                    .apiRequestCompleter =
                                                                null);
                                                            await _model
                                                                .waitForApiRequestCompleted();
                                                          } else {
                                                            setState(() {});
                                                            setState(() => _model
                                                                    .apiRequestCompleter =
                                                                null);
                                                            await _model
                                                                .waitForApiRequestCompleted();
                                                          }
                                                        },
                                                        title: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'x8j8s3es' /* This Month Up to Today */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                fontSize: 21.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        subtitle: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'klbtbbz5' /* Default View */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        tileColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        activeTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        dense: false,
                                                        controlAffinity:
                                                            ListTileControlAffinity
                                                                .trailing,
                                                      ),
                                                      SwitchListTile.adaptive(
                                                        value: _model
                                                                .thisMonthFullValue ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .thisMonthFullValue =
                                                              newValue);
                                                          if (newValue) {
                                                            setState(() {});
                                                            setState(() => _model
                                                                    .apiRequestCompleter =
                                                                null);
                                                            await _model
                                                                .waitForApiRequestCompleted();
                                                          } else {
                                                            setState(() {});
                                                            setState(() => _model
                                                                    .apiRequestCompleter =
                                                                null);
                                                            await _model
                                                                .waitForApiRequestCompleted();
                                                          }
                                                        },
                                                        title: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'q3a4pp5v' /* View This Full Month */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        subtitle: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'wzsinpdm' /* All Transactions for the curre... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                fontSize: 13.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        tileColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        activeTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        dense: false,
                                                        controlAffinity:
                                                            ListTileControlAffinity
                                                                .trailing,
                                                      ),
                                                      SwitchListTile.adaptive(
                                                        value: _model
                                                                .clearedTransactionsOnlyValue ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .clearedTransactionsOnlyValue =
                                                              newValue);
                                                          if (newValue) {
                                                            setState(() {});
                                                            setState(() => _model
                                                                    .apiRequestCompleter =
                                                                null);
                                                            await _model
                                                                .waitForApiRequestCompleted();
                                                          } else {
                                                            setState(() {});
                                                            setState(() => _model
                                                                    .apiRequestCompleter =
                                                                null);
                                                            await _model
                                                                .waitForApiRequestCompleted();
                                                          }
                                                        },
                                                        title: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'nokqubxu' /* Cleared Transactions */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        subtitle: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '5sdir9z5' /* All Cleared Transactions regar... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        tileColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        activeTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        dense: false,
                                                        controlAffinity:
                                                            ListTileControlAffinity
                                                                .trailing,
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child:
                                                                  FlutterFlowDropDown<
                                                                      int>(
                                                                controller: _model
                                                                        .monthDropDownValueController ??=
                                                                    FormFieldController<
                                                                        int>(
                                                                  _model.monthDropDownValue ??=
                                                                      null,
                                                                ),
                                                                options: List<
                                                                    int>.from([
                                                                  1,
                                                                  2,
                                                                  3,
                                                                  4,
                                                                  5,
                                                                  6,
                                                                  7,
                                                                  8,
                                                                  9,
                                                                  10,
                                                                  11,
                                                                  12
                                                                ]),
                                                                optionLabels: [
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'ylfa4x4e' /* 1 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '717nxosy' /* 2 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '9ys2bg0c' /* 3 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'q7u3yx15' /* 4 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '312koiqm' /* 5 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'heuud5al' /* 6 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'aldggef3' /* 7 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'chckzjum' /* 8 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'vw7nvkt5' /* 9 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'demcvpmc' /* 10 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'j2yc0093' /* 11 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'tkpfv5ee' /* 12 */,
                                                                  )
                                                                ],
                                                                onChanged:
                                                                    (val) async {
                                                                  setState(() =>
                                                                      _model.monthDropDownValue =
                                                                          val);
                                                                  setState(
                                                                      () {});
                                                                  setState(() =>
                                                                      _model.apiRequestCompleter =
                                                                          null);
                                                                  await _model
                                                                      .waitForApiRequestCompleted();
                                                                },
                                                                width: 300.0,
                                                                height: 56.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans JP',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                borderWidth:
                                                                    2.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    true,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                                labelText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'ollann0r' /* Month */,
                                                                ),
                                                                labelTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans JP',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child:
                                                                  FlutterFlowDropDown<
                                                                      int>(
                                                                controller: _model
                                                                        .yearDropDownValueController ??=
                                                                    FormFieldController<
                                                                        int>(
                                                                  _model.yearDropDownValue ??=
                                                                      null,
                                                                ),
                                                                options: List<
                                                                    int>.from([
                                                                  2024,
                                                                  2025,
                                                                  2026,
                                                                  2027,
                                                                  2028,
                                                                  2029,
                                                                  2030,
                                                                  2031,
                                                                  2032,
                                                                  2033,
                                                                  2034,
                                                                  2035,
                                                                  2036,
                                                                  2037,
                                                                  2038,
                                                                  2039,
                                                                  2040,
                                                                  2041,
                                                                  2042,
                                                                  2043,
                                                                  2044,
                                                                  2045,
                                                                  2046,
                                                                  2047,
                                                                  2048,
                                                                  2049,
                                                                  2050
                                                                ]),
                                                                optionLabels: [
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'w5gfg0q4' /* 2024 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'mamil3vk' /* 2025 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'ov0g1r1n' /* 2026 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'vo0ubcaf' /* 2027 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'kg4pfflz' /* 2028 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'lvdkfj8s' /* 2029 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'cassuvj1' /* 2030 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'jug681q1' /* 2031 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '7qmj78v4' /* 2032 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'iooc9hfu' /* 2033 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'eg4el8cm' /* 2034 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'bpeqqh86' /* 2035 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'ewmumqy3' /* 2036 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'gwaw8cnv' /* 2037 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '5a2h9i8i' /* 2038 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '31mipnvq' /* 2039 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'f3ijny2j' /* 2040 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '61bgykag' /* 2041 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'xb8yxmxs' /* 2042 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '7dr08m94' /* 2043 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '0c66uvb4' /* 2044 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'voa83xlp' /* 2045 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'oux6z30c' /* 2046 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'p5cpofum' /* 2047 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'ntlw8kvl' /* 2048 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '5kluln6y' /* 2049 */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'pngmkocw' /* 2050 */,
                                                                  )
                                                                ],
                                                                onChanged:
                                                                    (val) async {
                                                                  setState(() =>
                                                                      _model.yearDropDownValue =
                                                                          val);
                                                                  setState(
                                                                      () {});
                                                                  setState(() =>
                                                                      _model.apiRequestCompleter =
                                                                          null);
                                                                  await _model
                                                                      .waitForApiRequestCompleted();
                                                                },
                                                                width: 300.0,
                                                                height: 56.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans JP',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                borderWidth:
                                                                    2.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    true,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                                labelText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'sh51edbc' /* Year */,
                                                                ),
                                                                labelTextStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans JP',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '2qm5vjd7' /* Threshold */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          SizedBox(
                                                            width: 360.0,
                                                            child: Slider(
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              inactiveColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              min: 0.0,
                                                              max: 10000.0,
                                                              value: _model
                                                                      .sliderValue ??=
                                                                  500.0,
                                                              label: _model
                                                                  .sliderValue
                                                                  ?.toStringAsFixed(
                                                                      1),
                                                              divisions: 100,
                                                              onChanged:
                                                                  (newValue) {
                                                                newValue = double
                                                                    .parse(newValue
                                                                        .toStringAsFixed(
                                                                            1));
                                                                setState(() =>
                                                                    _model.sliderValue =
                                                                        newValue);
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ]
                                                        .divide(const SizedBox(
                                                            height: 4.0))
                                                        .addToStart(const SizedBox(
                                                            height: 4.0))
                                                        .addToEnd(const SizedBox(
                                                            height: 4.0)),
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (_model.householdDropDownValue !=
                                                            null &&
                                                        _model.householdDropDownValue !=
                                                            '')
                                                      FutureBuilder<
                                                          ApiCallResponse>(
                                                        future: TppbGroup
                                                            .getTotalSpentCall
                                                            .call(
                                                          authenticationToken:
                                                              currentJwtToken,
                                                          householdIdGlobal: _model
                                                              .householdDropDownValue,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final textGetTotalSpentResponse =
                                                              snapshot.data!;
                                                          return Text(
                                                            valueOrDefault<
                                                                String>(
                                                              'Total Spent This Month: ${formatNumber(
                                                                TppbGroup
                                                                    .getTotalSpentCall
                                                                    .totalSpent(
                                                                  textGetTotalSpentResponse
                                                                      .jsonBody,
                                                                ),
                                                                formatType:
                                                                    FormatType
                                                                        .custom,
                                                                currency: '',
                                                                format:
                                                                    '###,##0.00',
                                                                locale: '',
                                                              )}',
                                                              'Total Spent This Month: Loading...',
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          );
                                                        },
                                                      ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            if (_model.householdDropDownValue !=
                                                    null &&
                                                _model.householdDropDownValue !=
                                                    '')
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  FutureBuilder<
                                                      ApiCallResponse>(
                                                    future: TppbGroup
                                                        .getSafeToSpendCall
                                                        .call(
                                                      authenticationToken:
                                                          currentJwtToken,
                                                      householdIdGlobal: _model
                                                          .householdDropDownValue,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final rowGetSafeToSpendResponse =
                                                          snapshot.data!;
                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              'Safe To Spend: ${valueOrDefault<String>(
                                                                formatNumber(
                                                                  TppbGroup
                                                                      .getSafeToSpendCall
                                                                      .safeToSpend(
                                                                    rowGetSafeToSpendResponse
                                                                        .jsonBody,
                                                                  ),
                                                                  formatType:
                                                                      FormatType
                                                                          .custom,
                                                                  currency: '',
                                                                  format:
                                                                      '###,##0.00',
                                                                  locale: '',
                                                                ),
                                                                '\$0.00',
                                                              )}',
                                                              'Safe To Spend: \$0.00',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          FlutterFlowIconButton(
                                                            borderRadius: 20.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons
                                                                  .info_outline,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Information'),
                                                                    content: const Text(
                                                                        'Safe To Spend  is the amount that is \"safe to spend\" without breaking the bank between now and  your next pay day.  Disclaimer, this is only as accurate as the information you provide the application and only applies to the default wallet.'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: const Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                          ]
                                              .divide(const SizedBox(height: 4.0))
                                              .addToStart(const SizedBox(height: 4.0))
                                              .addToEnd(const SizedBox(height: 4.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (valueOrDefault<bool>(
                                _model.householdDropDownValue != null &&
                                    _model.householdDropDownValue != '',
                                false,
                              ))
                                FutureBuilder<ApiCallResponse>(
                                  future: (_model.apiRequestCompleter ??=
                                          Completer<ApiCallResponse>()
                                            ..complete(
                                                TppbGroup.getLedgerCall.call(
                                              householdIdGlobal:
                                                  _model.householdDropDownValue,
                                              showCurrentMonthOnly:
                                                  _model.thisMonthFullValue,
                                              showClearedOnly: _model
                                                  .clearedTransactionsOnlyValue,
                                              showCurrentMonthUpToToday: _model
                                                  .thisMonthUpToTodayValue,
                                              authenticationToken:
                                                  currentJwtToken,
                                              month: _model.monthDropDownValue,
                                              year: _model.yearDropDownValue,
                                              threshold: valueOrDefault<double>(
                                                _model.sliderValue,
                                                500.0,
                                              ),
                                            )))
                                      .future,
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final listViewGetLedgerResponse =
                                        snapshot.data!;
                                    return Builder(
                                      builder: (context) {
                                        final ledgerEntries =
                                            TppbGroup.getLedgerCall
                                                    .ledgerId(
                                                      listViewGetLedgerResponse
                                                          .jsonBody,
                                                    )
                                                    ?.map((e) => e)
                                                    .toList()
                                                    .toList() ??
                                                [];
                                        if (ledgerEntries.isEmpty) {
                                          return Center(
                                            child: Image.asset(
                                              'assets/images/piggy_bank_with_drop_shadow.png',
                                              width: 360.0,
                                            ),
                                          );
                                        }
                                        return ListView.separated(
                                          padding: const EdgeInsets.fromLTRB(
                                            0,
                                            4.0,
                                            0,
                                            4.0,
                                          ),
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: ledgerEntries.length,
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(height: 4.0),
                                          itemBuilder:
                                              (context, ledgerEntriesIndex) {
                                            final ledgerEntriesItem =
                                                ledgerEntries[
                                                    ledgerEntriesIndex];
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Semantics(
                                                    label:
                                                        'Click to view transaction Details',
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          'TransactionDetails',
                                                          queryParameters: {
                                                            'ledgerId':
                                                                serializeParam(
                                                              valueOrDefault<
                                                                  String>(
                                                                TppbGroup
                                                                    .getLedgerCall
                                                                    .ledgerId(
                                                                  listViewGetLedgerResponse
                                                                      .jsonBody,
                                                                )?[ledgerEntriesIndex],
                                                                'true',
                                                              ),
                                                              ParamType.String,
                                                            ),
                                                            'billId':
                                                                serializeParam(
                                                              TppbGroup
                                                                  .getLedgerCall
                                                                  .billId(
                                                                listViewGetLedgerResponse
                                                                    .jsonBody,
                                                              )?[ledgerEntriesIndex],
                                                              ParamType.String,
                                                            ),
                                                            'transactionId':
                                                                serializeParam(
                                                              TppbGroup
                                                                  .getLedgerCall
                                                                  .transactionId(
                                                                listViewGetLedgerResponse
                                                                    .jsonBody,
                                                              )?[ledgerEntriesIndex],
                                                              ParamType.String,
                                                            ),
                                                            'incomeId':
                                                                serializeParam(
                                                              TppbGroup
                                                                  .getLedgerCall
                                                                  .incomeId(
                                                                listViewGetLedgerResponse
                                                                    .jsonBody,
                                                              )?[ledgerEntriesIndex],
                                                              ParamType.String,
                                                            ),
                                                            'type':
                                                                serializeParam(
                                                              TppbGroup
                                                                  .getLedgerCall
                                                                  .type(
                                                                listViewGetLedgerResponse
                                                                    .jsonBody,
                                                              )?[ledgerEntriesIndex],
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5.0,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: SafeArea(
                                                          child: Container(
                                                            width: 368.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: TppbGroup
                                                                          .getLedgerCall
                                                                          .threshold(
                                                                listViewGetLedgerResponse
                                                                    .jsonBody,
                                                              )![
                                                                      ledgerEntriesIndex]
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .error
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              border:
                                                                  Border.all(
                                                                color: valueOrDefault<
                                                                        bool>(
                                                                  TppbGroup
                                                                      .getLedgerCall
                                                                      .status(
                                                                    listViewGetLedgerResponse
                                                                        .jsonBody,
                                                                  )?[ledgerEntriesIndex],
                                                                  true,
                                                                )
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                width: 2.0,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    AutoSizeText(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        TppbGroup
                                                                            .getLedgerCall
                                                                            .description(
                                                                          listViewGetLedgerResponse
                                                                              .jsonBody,
                                                                        )?[ledgerEntriesIndex],
                                                                        'Loading....',
                                                                      ).maybeHandleOverflow(
                                                                        maxChars:
                                                                            20,
                                                                        replacement:
                                                                            '…',
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          1,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Noto Sans JP',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                23.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, -1.0),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                                                                                child: Semantics(
                                                                                  label: 'Click to toggle Status',
                                                                                  child: FlutterFlowIconButton(
                                                                                    borderColor: Colors.transparent,
                                                                                    borderRadius: 20.0,
                                                                                    borderWidth: 1.0,
                                                                                    buttonSize: 40.0,
                                                                                    icon: Icon(
                                                                                      Icons.check_circle,
                                                                                      color: valueOrDefault<bool>(
                                                                                        TppbGroup.getLedgerCall.status(
                                                                                          listViewGetLedgerResponse.jsonBody,
                                                                                        )?[ledgerEntriesIndex],
                                                                                        true,
                                                                                      )
                                                                                          ? FlutterFlowTheme.of(context).secondary
                                                                                          : FlutterFlowTheme.of(context).alternate,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    showLoadingIndicator: true,
                                                                                    onPressed: () async {
                                                                                      _model.apiResultlh2 = await TppbGroup.editLedgerEntryAsClearedCall.call(
                                                                                        ledgerId: TppbGroup.getLedgerCall.ledgerId(
                                                                                          listViewGetLedgerResponse.jsonBody,
                                                                                        )?[ledgerEntriesIndex],
                                                                                        authenticationToken: currentJwtToken,
                                                                                        householdIdGlobal: _model.householdDropDownValue,
                                                                                      );

                                                                                      if ((_model.apiResultlh2?.succeeded ?? true)) {
                                                                                        _model.soundPlayer ??= AudioPlayer();
                                                                                        if (_model.soundPlayer!.playing) {
                                                                                          await _model.soundPlayer!.stop();
                                                                                        }
                                                                                        _model.soundPlayer!.setVolume(1.0);
                                                                                        _model.soundPlayer!.setAsset('assets/audios/cash-register-kaching-sound-effect-125042.mp3').then((_) => _model.soundPlayer!.play());

                                                                                        setState(() => _model.apiRequestCompleter = null);
                                                                                        await _model.waitForApiRequestCompleted();
                                                                                      } else {
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (alertDialogContext) {
                                                                                            return AlertDialog(
                                                                                              title: const Text('Error'),
                                                                                              content: const Text('Unable to update status at this time. Please try again.'),
                                                                                              actions: [
                                                                                                TextButton(
                                                                                                  onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                  child: const Text('Ok'),
                                                                                                ),
                                                                                              ],
                                                                                            );
                                                                                          },
                                                                                        );
                                                                                      }

                                                                                      setState(() {});
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  AutoSizeText(
                                                                                    valueOrDefault<String>(
                                                                                      'Wallet: ${valueOrDefault<String>(
                                                                                        TppbGroup.getLedgerCall.paymentSourceName(
                                                                                          listViewGetLedgerResponse.jsonBody,
                                                                                        )?[ledgerEntriesIndex],
                                                                                        'Loading....',
                                                                                      )}',
                                                                                      'Wallet: Loading...',
                                                                                    ).maybeHandleOverflow(
                                                                                      maxChars: 20,
                                                                                      replacement: '…',
                                                                                    ),
                                                                                    maxLines: 1,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Noto Sans JP',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  AutoSizeText(
                                                                                    valueOrDefault<String>(
                                                                                      'Category: ${valueOrDefault<String>(
                                                                                        TppbGroup.getLedgerCall.category(
                                                                                          listViewGetLedgerResponse.jsonBody,
                                                                                        )?[ledgerEntriesIndex],
                                                                                        'Loading....',
                                                                                      )}',
                                                                                      'Loading...',
                                                                                    ).maybeHandleOverflow(
                                                                                      maxChars: 20,
                                                                                      replacement: '…',
                                                                                    ),
                                                                                    maxLines: 1,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Noto Sans JP',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    AutoSizeText(
                                                                                      valueOrDefault<String>(
                                                                                        TppbGroup.getLedgerCall.transactionDate(
                                                                                          listViewGetLedgerResponse.jsonBody,
                                                                                        )?[ledgerEntriesIndex],
                                                                                        'Loading....',
                                                                                      ),
                                                                                      maxLines: 1,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Noto Sans JP',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                      child: AutoSizeText(
                                                                                        valueOrDefault<String>(
                                                                                          '${valueOrDefault<String>(
                                                                                            (valueOrDefault<String>(
                                                                                                          TppbGroup.getLedgerCall.transactionType(
                                                                                                            listViewGetLedgerResponse.jsonBody,
                                                                                                          )?[ledgerEntriesIndex],
                                                                                                          'true',
                                                                                                        ) ==
                                                                                                        'Debit') ||
                                                                                                    (valueOrDefault<String>(
                                                                                                          TppbGroup.getLedgerCall.transactionType(
                                                                                                            listViewGetLedgerResponse.jsonBody,
                                                                                                          )?[ledgerEntriesIndex],
                                                                                                          'true',
                                                                                                        ) ==
                                                                                                        'debit')
                                                                                                ? '-'
                                                                                                : '+',
                                                                                            '-',
                                                                                          )}${valueOrDefault<String>(
                                                                                            formatNumber(
                                                                                              TppbGroup.getLedgerCall.amount(
                                                                                                listViewGetLedgerResponse.jsonBody,
                                                                                              )?[ledgerEntriesIndex],
                                                                                              formatType: FormatType.custom,
                                                                                              currency: '',
                                                                                              format: '###,##0.00',
                                                                                              locale: '',
                                                                                            ),
                                                                                            'true',
                                                                                          )}',
                                                                                          'Loading...',
                                                                                        ),
                                                                                        textAlign: TextAlign.end,
                                                                                        maxLines: 1,
                                                                                        style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                              fontFamily: 'Noto Sans JP',
                                                                                              color: (valueOrDefault<String>(
                                                                                                            TppbGroup.getLedgerCall.transactionType(
                                                                                                              listViewGetLedgerResponse.jsonBody,
                                                                                                            )?[ledgerEntriesIndex],
                                                                                                            'true',
                                                                                                          ) ==
                                                                                                          'Debit') ||
                                                                                                      (valueOrDefault<String>(
                                                                                                            TppbGroup.getLedgerCall.transactionType(
                                                                                                              listViewGetLedgerResponse.jsonBody,
                                                                                                            )?[ledgerEntriesIndex],
                                                                                                            'true',
                                                                                                          ) ==
                                                                                                          'debit')
                                                                                                  ? FlutterFlowTheme.of(context).primaryText
                                                                                                  : const Color(0xFF1C7A00),
                                                                                              fontSize: 38.73,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 0.0)).around(const SizedBox(width: 0.0)),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        'Running Total: ${valueOrDefault<String>(
                                                                                          formatNumber(
                                                                                            TppbGroup.getLedgerCall.runningTotal(
                                                                                              listViewGetLedgerResponse.jsonBody,
                                                                                            )?[ledgerEntriesIndex],
                                                                                            formatType: FormatType.custom,
                                                                                            currency: '',
                                                                                            format: '###,##0.00',
                                                                                            locale: '',
                                                                                          ),
                                                                                          'Loading...',
                                                                                        )}',
                                                                                        'Loading...',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Noto Sans JP',
                                                                                            fontSize: 13.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ).animateOnPageLoad(animationsMap[
                                            'listViewOnPageLoadAnimation']!);
                                      },
                                    );
                                  },
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
