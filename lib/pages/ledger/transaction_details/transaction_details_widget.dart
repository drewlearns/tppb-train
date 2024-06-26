import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'transaction_details_model.dart';
export 'transaction_details_model.dart';

class TransactionDetailsWidget extends StatefulWidget {
  const TransactionDetailsWidget({
    super.key,
    required this.ledgerId,
    this.billId,
    this.transactionId,
    this.incomeId,
  });

  final String? ledgerId;
  final String? billId;
  final String? transactionId;
  final String? incomeId;

  @override
  State<TransactionDetailsWidget> createState() =>
      _TransactionDetailsWidgetState();
}

class _TransactionDetailsWidgetState extends State<TransactionDetailsWidget> {
  late TransactionDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionDetailsModel());

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
        title: 'Transaction Details',
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
                      'rjn9dg1u' /* Transaction Details */,
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
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 360.0,
                    decoration: const BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: FutureBuilder<ApiCallResponse>(
                            future: (_model.apiRequestCompleter ??= Completer<
                                    ApiCallResponse>()
                                  ..complete(TppbGroup.getLedgerEntryCall.call(
                                    ledgerId: widget.ledgerId,
                                    authenticationToken: currentJwtToken,
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
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final listViewGetLedgerEntryResponse =
                                  snapshot.data!;
                              return ListView(
                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                primary: false,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'nvyg6dlc' /* Amount:  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              '${valueOrDefault<String>(
                                                    TppbGroup.getLedgerEntryCall
                                                        .transactionType(
                                                      listViewGetLedgerEntryResponse
                                                          .jsonBody,
                                                    ),
                                                    'Loading...',
                                                  ) == 'Debit' ? '-' : '+'}${valueOrDefault<String>(
                                                formatNumber(
                                                  TppbGroup.getLedgerEntryCall
                                                      .amount(
                                                    listViewGetLedgerEntryResponse
                                                        .jsonBody,
                                                  ),
                                                  formatType: FormatType.custom,
                                                  currency: '',
                                                  format: '###,###.00',
                                                  locale: '',
                                                ),
                                                'Loading...',
                                              )}',
                                              '-\$99,999.99',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  color: TppbGroup
                                                              .getLedgerEntryCall
                                                              .transactionType(
                                                            listViewGetLedgerEntryResponse
                                                                .jsonBody,
                                                          ) ==
                                                          'Debit'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .error
                                                      : const Color(0xFF072D12),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ]
                                            .divide(const SizedBox(width: 8.0))
                                            .around(const SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'kdijiniz' /* Date:  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              TppbGroup.getLedgerEntryCall
                                                  .transactionDate(
                                                listViewGetLedgerEntryResponse
                                                    .jsonBody,
                                              ),
                                              'Loading...',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ]
                                            .divide(const SizedBox(width: 8.0))
                                            .around(const SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'zv2jqgi3' /* Category:  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              TppbGroup.getLedgerEntryCall
                                                  .category(
                                                listViewGetLedgerEntryResponse
                                                    .jsonBody,
                                              ),
                                              'Loading...',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ]
                                            .divide(const SizedBox(width: 8.0))
                                            .around(const SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'zx9vdqbz' /* Created At:  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              TppbGroup.getLedgerEntryCall
                                                  .createdAt(
                                                listViewGetLedgerEntryResponse
                                                    .jsonBody,
                                              ),
                                              'Loading...',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ]
                                            .divide(const SizedBox(width: 8.0))
                                            .around(const SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'dry9pbcy' /* Updated At:   */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              TppbGroup.getLedgerEntryCall
                                                  .updatedAt(
                                                listViewGetLedgerEntryResponse
                                                    .jsonBody,
                                              ),
                                              'Loading...',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ]
                                            .divide(const SizedBox(width: 8.0))
                                            .around(const SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'u0s67mcn' /* Running Total:  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                TppbGroup.getLedgerEntryCall
                                                    .runningTotal(
                                                  listViewGetLedgerEntryResponse
                                                      .jsonBody,
                                                ),
                                                formatType: FormatType.custom,
                                                currency: '',
                                                format: '###,###.00',
                                                locale: '',
                                              ),
                                              'Loading...',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ]
                                            .divide(const SizedBox(width: 8.0))
                                            .around(const SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'xcluxzwh' /* Tags:  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              TppbGroup.getLedgerEntryCall.tags(
                                                listViewGetLedgerEntryResponse
                                                    .jsonBody,
                                              ),
                                              'Loading...',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ]
                                            .divide(const SizedBox(width: 8.0))
                                            .around(const SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'aafc6vie' /* Household Name:  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              TppbGroup.getLedgerEntryCall
                                                  .householdName(
                                                listViewGetLedgerEntryResponse
                                                    .jsonBody,
                                              ),
                                              'Loading...',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ]
                                            .divide(const SizedBox(width: 8.0))
                                            .around(const SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '67r3wu2q' /* Wallet Name */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              TppbGroup.getLedgerEntryCall
                                                  .sourcename(
                                                listViewGetLedgerEntryResponse
                                                    .jsonBody,
                                              ),
                                              'Loading...',
                                            ).maybeHandleOverflow(maxChars: 20),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ]
                                            .divide(const SizedBox(width: 8.0))
                                            .around(const SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'spqxdlzo' /* Wallet Type */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              TppbGroup.getLedgerEntryCall
                                                  .sourceType(
                                                listViewGetLedgerEntryResponse
                                                    .jsonBody,
                                              ),
                                              'Loading...',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ]
                                            .divide(const SizedBox(width: 8.0))
                                            .around(const SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '3fgw941d' /* Wallet Description */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              TppbGroup.getLedgerEntryCall
                                                  .paymentdescription(
                                                listViewGetLedgerEntryResponse
                                                    .jsonBody,
                                              ),
                                              'Loading...',
                                            ).maybeHandleOverflow(maxChars: 15),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ]
                                            .divide(const SizedBox(width: 8.0))
                                            .around(const SizedBox(width: 8.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'bm1nz2z4' /* Status: */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Noto Sans JP',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Semantics(
                                                  label:
                                                      'Click to toggle status',
                                                  child: FlutterFlowIconButton(
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    icon: Icon(
                                                      Icons.check_circle,
                                                      color: TppbGroup
                                                                  .getLedgerEntryCall
                                                                  .status(
                                                                listViewGetLedgerEntryResponse
                                                                    .jsonBody,
                                                              ) ==
                                                              true
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      size: 24.0,
                                                    ),
                                                    showLoadingIndicator: true,
                                                    onPressed: () async {
                                                      _model.apiResultnnq =
                                                          await TppbGroup
                                                              .editLedgerEntryAsClearedCall
                                                              .call(
                                                        ledgerId:
                                                            widget.ledgerId,
                                                        authenticationToken:
                                                            currentJwtToken,
                                                      );

                                                      if ((_model.apiResultnnq
                                                              ?.succeeded ??
                                                          true)) {
                                                        setState(() => _model
                                                                .apiRequestCompleter =
                                                            null);
                                                        await _model
                                                            .waitForApiRequestCompleted();
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title:
                                                                  const Text('Error'),
                                                              content: Text(TppbGroup
                                                                  .editLedgerEntryAsClearedCall
                                                                  .message(
                                                                    (_model.apiResultnnq
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )
                                                                  .toString()),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: const Text(
                                                                      'Ok'),
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
                                            ],
                                          ),
                                        ]
                                            .divide(const SizedBox(width: 8.0))
                                            .around(const SizedBox(width: 8.0)),
                                      ),
                                    ]
                                        .divide(const SizedBox(height: 4.0))
                                        .addToStart(const SizedBox(height: 4.0))
                                        .addToEnd(const SizedBox(height: 4.0)),
                                  ),
                                ].divide(const SizedBox(height: 4.0)),
                              );
                            },
                          ),
                        ),
                      ]
                          .divide(const SizedBox(width: 16.0))
                          .around(const SizedBox(width: 16.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
