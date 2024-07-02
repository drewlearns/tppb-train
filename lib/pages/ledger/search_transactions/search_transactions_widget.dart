import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'search_transactions_model.dart';
export 'search_transactions_model.dart';

class SearchTransactionsWidget extends StatefulWidget {
  const SearchTransactionsWidget({super.key});

  @override
  State<SearchTransactionsWidget> createState() =>
      _SearchTransactionsWidgetState();
}

class _SearchTransactionsWidgetState extends State<SearchTransactionsWidget> {
  late SearchTransactionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchTransactionsModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        title: 'Search Transactions',
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
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                actions: const [],
                flexibleSpace: FlexibleSpaceBar(
                  title: AutoSizeText(
                    FFLocalizations.of(context).getText(
                      '7tvb5lfk' /* Search Transactions */,
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
                elevation: 5.0,
              ),
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: const BoxDecoration(),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: SizedBox(
                                        width: 360.0,
                                        child: TextFormField(
                                          controller: _model.textController,
                                          focusNode: _model.textFieldFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController',
                                            const Duration(milliseconds: 2000),
                                            () async {
                                              setState(() => _model
                                                  .apiRequestCompleter = null);
                                              await _model
                                                  .waitForApiRequestCompleted();
                                            },
                                          ),
                                          autofocus: true,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'r4m80m5d' /* Search */,
                                            ),
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Noto Sans JP',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'ar603yxk' /* Search  Keywords, Amounts, Tag... */,
                                            ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Noto Sans JP',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Noto Sans JP',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FutureBuilder<ApiCallResponse>(
                                  future: (_model.apiRequestCompleter ??=
                                          Completer<ApiCallResponse>()
                                            ..complete(TppbGroup
                                                .searchTransactionsCall
                                                .call(
                                              authenticationToken:
                                                  currentJwtToken,
                                              query: _model.textController.text,
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
                                    final listViewSearchTransactionsResponse =
                                        snapshot.data!;
                                    return Builder(
                                      builder: (context) {
                                        final searchResults =
                                            TppbGroup.searchTransactionsCall
                                                    .list(
                                                      listViewSearchTransactionsResponse
                                                          .jsonBody,
                                                    )
                                                    ?.map((e) => e)
                                                    .toList()
                                                    .toList() ??
                                                [];
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: searchResults.length,
                                          itemBuilder:
                                              (context, searchResultsIndex) {
                                            final searchResultsItem =
                                                searchResults[
                                                    searchResultsIndex];
                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Semantics(
                                                        label:
                                                            'Click to view transaction Details',
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'TransactionDetails',
                                                              queryParameters: {
                                                                'ledgerId':
                                                                    serializeParam(
                                                                  TppbGroup
                                                                      .searchTransactionsCall
                                                                      .ledgerId(
                                                                    listViewSearchTransactionsResponse
                                                                        .jsonBody,
                                                                  )?[searchResultsIndex],
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'type':
                                                                    serializeParam(
                                                                  'Search Result',
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: TppbGroup
                                                                            .searchTransactionsCall
                                                                            .status(
                                                                      listViewSearchTransactionsResponse
                                                                          .jsonBody,
                                                                    )![searchResultsIndex]
                                                                        ? FlutterFlowTheme.of(context).secondary
                                                                        : FlutterFlowTheme.of(context).alternate,
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
                                                                            TppbGroup.searchTransactionsCall.description(
                                                                              listViewSearchTransactionsResponse.jsonBody,
                                                                            )?[searchResultsIndex],
                                                                            'Loading...',
                                                                          ).maybeHandleOverflow(
                                                                            maxChars:
                                                                                20,
                                                                            replacement:
                                                                                '…',
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          maxLines:
                                                                              1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: 'Noto Sans JP',
                                                                                fontSize: 23.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
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
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
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
                                                                                          color: TppbGroup.searchTransactionsCall.status(
                                                                                            listViewSearchTransactionsResponse.jsonBody,
                                                                                          )![searchResultsIndex]
                                                                                              ? FlutterFlowTheme.of(context).secondary
                                                                                              : FlutterFlowTheme.of(context).alternate,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        showLoadingIndicator: true,
                                                                                        onPressed: () async {
                                                                                          _model.editLedgerEntryAsClearedOutput = await TppbGroup.editLedgerEntryAsClearedCall.call(
                                                                                            ledgerId: TppbGroup.searchTransactionsCall.ledgerId(
                                                                                              listViewSearchTransactionsResponse.jsonBody,
                                                                                            )?[searchResultsIndex],
                                                                                            authenticationToken: currentJwtToken,
                                                                                          );

                                                                                          if ((_model.editLedgerEntryAsClearedOutput?.succeeded ?? true)) {
                                                                                            _model.soundPlayer ??= AudioPlayer();
                                                                                            if (_model.soundPlayer!.playing) {
                                                                                              await _model.soundPlayer!.stop();
                                                                                            }
                                                                                            _model.soundPlayer!.setVolume(1.0);
                                                                                            _model.soundPlayer!.setAsset('assets/audios/cash-register-kaching-sound-effect-125042.mp3').then((_) => _model.soundPlayer!.play());

                                                                                            setState(() => _model.apiRequestCompleter = null);
                                                                                            await _model.waitForApiRequestCompleted();

                                                                                            setState(() {});
                                                                                          } else {
                                                                                            await showDialog(
                                                                                              context: context,
                                                                                              builder: (alertDialogContext) {
                                                                                                return AlertDialog(
                                                                                                  title: const Text('Error'),
                                                                                                  content: Text(TppbGroup.editLedgerEntryAsClearedCall
                                                                                                      .message(
                                                                                                        (_model.editLedgerEntryAsClearedOutput?.jsonBody ?? ''),
                                                                                                      )
                                                                                                      .toString()),
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
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      AutoSizeText(
                                                                                        valueOrDefault<String>(
                                                                                          'Wallet: ${valueOrDefault<String>(
                                                                                            TppbGroup.searchTransactionsCall.paymentSourceName(
                                                                                              listViewSearchTransactionsResponse.jsonBody,
                                                                                            )?[searchResultsIndex],
                                                                                            'Loading...',
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
                                                                                            TppbGroup.searchTransactionsCall.category(
                                                                                              listViewSearchTransactionsResponse.jsonBody,
                                                                                            )?[searchResultsIndex],
                                                                                            'Loading...',
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
                                                                                            TppbGroup.searchTransactionsCall.transactionDate(
                                                                                              listViewSearchTransactionsResponse.jsonBody,
                                                                                            )?[searchResultsIndex],
                                                                                            'Loading...',
                                                                                          ).maybeHandleOverflow(maxChars: 10),
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
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
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
                                                                                                              TppbGroup.searchTransactionsCall.transactionType(
                                                                                                                listViewSearchTransactionsResponse.jsonBody,
                                                                                                              )?[searchResultsIndex],
                                                                                                              'Loading...',
                                                                                                            ) ==
                                                                                                            'Debit') ||
                                                                                                        (valueOrDefault<String>(
                                                                                                              TppbGroup.searchTransactionsCall.transactionType(
                                                                                                                listViewSearchTransactionsResponse.jsonBody,
                                                                                                              )?[searchResultsIndex],
                                                                                                              'Loading...',
                                                                                                            ) ==
                                                                                                            'debit')
                                                                                                    ? '-'
                                                                                                    : '+',
                                                                                                '-',
                                                                                              )}${valueOrDefault<String>(
                                                                                                formatNumber(
                                                                                                  TppbGroup.searchTransactionsCall.amount(
                                                                                                    listViewSearchTransactionsResponse.jsonBody,
                                                                                                  )?[searchResultsIndex],
                                                                                                  formatType: FormatType.custom,
                                                                                                  currency: '',
                                                                                                  format: '###,##0.00',
                                                                                                  locale: '',
                                                                                                ),
                                                                                                'Loading...',
                                                                                              )}',
                                                                                              'Loading...',
                                                                                            ),
                                                                                            textAlign: TextAlign.end,
                                                                                            maxLines: 1,
                                                                                            style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                  fontFamily: 'Noto Sans JP',
                                                                                                  color: (valueOrDefault<String>(
                                                                                                                TppbGroup.searchTransactionsCall.transactionType(
                                                                                                                  listViewSearchTransactionsResponse.jsonBody,
                                                                                                                )?[searchResultsIndex],
                                                                                                                'Loading...',
                                                                                                              ) ==
                                                                                                              'Debit') ||
                                                                                                          (valueOrDefault<String>(
                                                                                                                TppbGroup.searchTransactionsCall.transactionType(
                                                                                                                  listViewSearchTransactionsResponse.jsonBody,
                                                                                                                )?[searchResultsIndex],
                                                                                                                'Loading...',
                                                                                                              ) ==
                                                                                                              'debit')
                                                                                                      ? FlutterFlowTheme.of(context).error
                                                                                                      : FlutterFlowTheme.of(context).tertiary,
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
                                                                                                TppbGroup.searchTransactionsCall.runningTotal(
                                                                                                  listViewSearchTransactionsResponse.jsonBody,
                                                                                                )?[searchResultsIndex],
                                                                                                formatType: FormatType.custom,
                                                                                                currency: '',
                                                                                                format: '###,###0.00',
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
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ]
                              .divide(const SizedBox(height: 4.0))
                              .around(const SizedBox(height: 4.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
