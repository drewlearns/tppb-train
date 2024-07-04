import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'incomes_model.dart';
export 'incomes_model.dart';

class IncomesWidget extends StatefulWidget {
  const IncomesWidget({super.key});

  @override
  State<IncomesWidget> createState() => _IncomesWidgetState();
}

class _IncomesWidgetState extends State<IncomesWidget> {
  late IncomesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IncomesModel());

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
        title: 'Incomes',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                iconTheme: IconThemeData(
                    color: FlutterFlowTheme.of(context).secondaryBackground),
                automaticallyImplyLeading: true,
                actions: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
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
                        context.pushNamed('AddIncome');
                      },
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    FFLocalizations.of(context).getText(
                      '40jyp3sn' /* Incomes */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Noto Sans JP',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          letterSpacing: 0.0,
                        ),
                  ),
                  centerTitle: true,
                  expandedTitleScale: 1.0,
                ),
                elevation: 0.0,
              ),
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12.0),
                            bottomRight: Radius.circular(12.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                            shape: BoxShape.rectangle,
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 8.0),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: TppbGroup.getHouseholdCall.call(
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
                                      final householdDropDownGetHouseholdResponse =
                                          snapshot.data!;
                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                                .householdDropDownValueController ??=
                                            FormFieldController<String>(null),
                                        options: List<String>.from(TppbGroup
                                            .getHouseholdCall
                                            .householdIds(
                                          householdDropDownGetHouseholdResponse
                                              .jsonBody,
                                        )!),
                                        optionLabels: TppbGroup.getHouseholdCall
                                            .householdNames(
                                          householdDropDownGetHouseholdResponse
                                              .jsonBody,
                                        )!,
                                        onChanged: (val) => setState(() =>
                                            _model.householdDropDownValue =
                                                val),
                                        width: 300.0,
                                        height: 56.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Noto Sans JP',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '161heoda' /* Please select... */,
                                        ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'b2ukmat3' /* Budget* */,
                                        ),
                                        labelTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (_model.householdDropDownValue != null &&
                              _model.householdDropDownValue != '')
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 16.0),
                                child: SafeArea(
                                  child: Container(
                                    width: 360.0,
                                    constraints: const BoxConstraints(
                                      maxWidth: 770.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: SingleChildScrollView(
                                        primary: false,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'iyh5lfzl' /* Your Incomes */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 4.0, 0.0, 12.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'fmryx8tt' /* Below is a list of your Income... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            FutureBuilder<ApiCallResponse>(
                                              future:
                                                  TppbGroup.getIncomesCall.call(
                                                authenticationToken:
                                                    currentJwtToken,
                                                householdIdGlobal: _model
                                                    .householdDropDownValue,
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
                                                final listViewGetIncomesResponse =
                                                    snapshot.data!;
                                                return ListView(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  children: [
                                                    Builder(
                                                      builder: (context) {
                                                        final incomes = TppbGroup
                                                                .getIncomesCall
                                                                .incomeId(
                                                                  listViewGetIncomesResponse
                                                                      .jsonBody,
                                                                )
                                                                ?.map((e) => e)
                                                                .toList()
                                                                .toList() ??
                                                            [];
                                                        return Semantics(
                                                          label:
                                                              'Click to view income details',
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: List.generate(
                                                                incomes.length,
                                                                (incomesIndex) {
                                                              final incomesItem =
                                                                  incomes[
                                                                      incomesIndex];
                                                              return Semantics(
                                                                label:
                                                                    'Click to view income details',
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      'EditIncome',
                                                                      queryParameters:
                                                                          {
                                                                        'incomeId':
                                                                            serializeParam(
                                                                          TppbGroup
                                                                              .getIncomesCall
                                                                              .incomeId(
                                                                            listViewGetIncomesResponse.jsonBody,
                                                                          )?[incomesIndex],
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            12.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Expanded(
                                                                              flex: 3,
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    valueOrDefault<String>(
                                                                                      TppbGroup.getIncomesCall.name(
                                                                                        listViewGetIncomesResponse.jsonBody,
                                                                                      )?[incomesIndex],
                                                                                      'Loading...',
                                                                                    ).maybeHandleOverflow(
                                                                                      maxChars: 14,
                                                                                      replacement: '…',
                                                                                    ),
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                          fontFamily: 'Noto Sans JP',
                                                                                          color: FlutterFlowTheme.of(context).secondary,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  formatNumber(
                                                                                    TppbGroup.getIncomesCall.amount(
                                                                                      listViewGetIncomesResponse.jsonBody,
                                                                                    )?[incomesIndex],
                                                                                    formatType: FormatType.custom,
                                                                                    currency: '',
                                                                                    format: '#,###,##0.00',
                                                                                    locale: '',
                                                                                  ),
                                                                                  'Loading...',
                                                                                ),
                                                                                textAlign: TextAlign.end,
                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                      fontFamily: 'Noto Sans JP',
                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Divider(
                                                                        thickness:
                                                                            2.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent1,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                );
                                              },
                                            ),
                                            ListView(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: SingleChildScrollView(
                                                    primary: false,
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      's50xnyoi' /* Total  */,
                                                                    ),
                                                                    minFontSize:
                                                                        12.0,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                              FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future: TppbGroup
                                                                    .getCurrentMonthIncomeCall
                                                                    .call(
                                                                  authenticationToken:
                                                                      currentJwtToken,
                                                                  householdIdGlobal:
                                                                      _model
                                                                          .householdDropDownValue,
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            FlutterFlowTheme.of(context).primary,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final textGetCurrentMonthIncomeResponse =
                                                                      snapshot
                                                                          .data!;
                                                                  return Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      formatNumber(
                                                                        TppbGroup
                                                                            .getCurrentMonthIncomeCall
                                                                            .totalIncome(
                                                                          textGetCurrentMonthIncomeResponse
                                                                              .jsonBody,
                                                                        ),
                                                                        formatType:
                                                                            FormatType.custom,
                                                                        currency:
                                                                            '',
                                                                        format:
                                                                            '#,###,##0.00',
                                                                        locale:
                                                                            '',
                                                                      ),
                                                                      'Loading...',
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .displaySmall
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
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  AutoSizeText(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'u2j7ir17' /* Next Payday  */,
                                                                    ),
                                                                    minFontSize:
                                                                        12.0,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                              FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future: TppbGroup
                                                                    .getSafeToSpendCall
                                                                    .call(
                                                                  authenticationToken:
                                                                      currentJwtToken,
                                                                  householdIdGlobal:
                                                                      _model
                                                                          .householdDropDownValue,
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            FlutterFlowTheme.of(context).primary,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final textGetSafeToSpendResponse =
                                                                      snapshot
                                                                          .data!;
                                                                  return AutoSizeText(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      TppbGroup
                                                                          .getSafeToSpendCall
                                                                          .nextPayday(
                                                                        textGetSafeToSpendResponse
                                                                            .jsonBody,
                                                                      ),
                                                                      'No Incomes Yet',
                                                                    ).maybeHandleOverflow(
                                                                        maxChars:
                                                                            10),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .displaySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans JP',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  );
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
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
                      ),
                    ),
                  ),
                ].divide(const SizedBox(height: 4.0)).addToEnd(const SizedBox(height: 4.0)),
              ),
            ),
          ),
        ));
  }
}
