import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'wallets_model.dart';
export 'wallets_model.dart';

class WalletsWidget extends StatefulWidget {
  const WalletsWidget({super.key});

  @override
  State<WalletsWidget> createState() => _WalletsWidgetState();
}

class _WalletsWidgetState extends State<WalletsWidget> {
  late WalletsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WalletsModel());

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
        title: 'Wallets',
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
                automaticallyImplyLeading: false,
                actions: [
                  Visibility(
                    visible: _model.dropDownValue != null &&
                        _model.dropDownValue != '',
                    child: FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.settings_sharp,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'SetDefaultWallet',
                          queryParameters: {
                            'householdId': serializeParam(
                              _model.dropDownValue,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                    ),
                  ),
                  Visibility(
                    visible: _model.dropDownValue != null &&
                        _model.dropDownValue != '',
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.add,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            'AddWallet',
                            queryParameters: {
                              'householdId': serializeParam(
                                _model.dropDownValue,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                      ),
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'uyej0lms' /* Wallet */,
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
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 16.0, 0.0, 16.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FutureBuilder<ApiCallResponse>(
                                              future: TppbGroup.getHouseholdCall
                                                  .call(
                                                authenticationToken:
                                                    currentJwtToken,
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
                                                final dropDownGetHouseholdResponse =
                                                    snapshot.data!;
                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropDownValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropDownValue ??= '',
                                                  ),
                                                  options: List<String>.from(
                                                      TppbGroup.getHouseholdCall
                                                          .householdIds(
                                                    dropDownGetHouseholdResponse
                                                        .jsonBody,
                                                  )!),
                                                  optionLabels: TppbGroup
                                                      .getHouseholdCall
                                                      .householdNames(
                                                    dropDownGetHouseholdResponse
                                                        .jsonBody,
                                                  )!,
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                          .dropDownValue = val),
                                                  width: 300.0,
                                                  height: 56.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Noto Sans JP',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'uo4dz4vi' /* Please select... */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 5.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'retso69b' /* Budget* */,
                                                  ),
                                                  labelTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Noto Sans JP',
                                                            letterSpacing: 0.0,
                                                          ),
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
                            Container(
                              width: 380.0,
                              decoration: const BoxDecoration(),
                              child: Visibility(
                                visible: _model.dropDownValue != null &&
                                    _model.dropDownValue != '',
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      6.0, 12.0, 0.0, 0.0),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: TppbGroup.getPaymentSourceCall.call(
                                      authenticationToken: currentJwtToken,
                                      householdIdGlobal: _model.dropDownValue,
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
                                      final listViewGetPaymentSourceResponse =
                                          snapshot.data!;
                                      return Builder(
                                        builder: (context) {
                                          final walletItems =
                                              TppbGroup.getPaymentSourceCall
                                                      .paymentSourceId(
                                                        listViewGetPaymentSourceResponse
                                                            .jsonBody,
                                                      )
                                                      ?.toList() ??
                                                  [];
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: walletItems.length,
                                            itemBuilder:
                                                (context, walletItemsIndex) {
                                              final walletItemsItem =
                                                  walletItems[walletItemsIndex];
                                              return Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 8.0, 16.0, 8.0),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Container(
                                                    width: 360.0,
                                                    height: 60.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color: (TppbGroup
                                                                        .getPaymentSourceCall
                                                                        .isDefault(
                                                                  listViewGetPaymentSourceResponse
                                                                      .jsonBody,
                                                                )?[
                                                                    walletItemsIndex]) ==
                                                                true
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                      ),
                                                    ),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          child: Semantics(
                                                            label:
                                                                'View Payment Source details',
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                if (Navigator.of(
                                                                        context)
                                                                    .canPop()) {
                                                                  context.pop();
                                                                }
                                                                context
                                                                    .pushNamed(
                                                                  'WalletDetails',
                                                                  queryParameters:
                                                                      {
                                                                    'paymentSourceId':
                                                                        serializeParam(
                                                                      TppbGroup
                                                                          .getPaymentSourceCall
                                                                          .paymentSourceId(
                                                                        listViewGetPaymentSourceResponse
                                                                            .jsonBody,
                                                                      )?[walletItemsIndex],
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'type':
                                                                        serializeParam(
                                                                      TppbGroup
                                                                          .getPaymentSourceCall
                                                                          .paymentSourceId(
                                                                        listViewGetPaymentSourceResponse
                                                                            .jsonBody,
                                                                      )?[walletItemsIndex],
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'name':
                                                                        serializeParam(
                                                                      TppbGroup
                                                                          .getPaymentSourceCall
                                                                          .paymentSourceName(
                                                                        listViewGetPaymentSourceResponse
                                                                            .jsonBody,
                                                                      )?[walletItemsIndex],
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'isDefault':
                                                                        serializeParam(
                                                                      TppbGroup
                                                                          .getPaymentSourceCall
                                                                          .isDefault(
                                                                        listViewGetPaymentSourceResponse
                                                                            .jsonBody,
                                                                      )?[walletItemsIndex],
                                                                      ParamType
                                                                          .bool,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Flexible(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              TppbGroup.getPaymentSourceCall.paymentSourceName(
                                                                                listViewGetPaymentSourceResponse.jsonBody,
                                                                              )?[walletItemsIndex],
                                                                              'Loading...',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                  fontFamily: 'Noto Sans JP',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              AutoSizeText(
                                                                            valueOrDefault<String>(
                                                                              formatNumber(
                                                                                TppbGroup.getPaymentSourceCall.runningTotals(
                                                                                  listViewGetPaymentSourceResponse.jsonBody,
                                                                                )?[walletItemsIndex],
                                                                                formatType: FormatType.custom,
                                                                                currency: '',
                                                                                format: '###,###,##0.00',
                                                                                locale: '',
                                                                              ),
                                                                              'Loading...',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Noto Sans JP',
                                                                                  color: (TppbGroup.getPaymentSourceCall.runningTotals(
                                                                                            listViewGetPaymentSourceResponse.jsonBody,
                                                                                          )![walletItemsIndex]) <
                                                                                          0.0
                                                                                      ? FlutterFlowTheme.of(context).error
                                                                                      : FlutterFlowTheme.of(context).tertiary,
                                                                                  fontSize: 30.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            if (_model.dropDownValue != null &&
                                _model.dropDownValue != '')
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'li02026n' /* Default wallet is highlighted */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noto Sans JP',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
