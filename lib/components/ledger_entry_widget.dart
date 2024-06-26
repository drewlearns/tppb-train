import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'ledger_entry_model.dart';
export 'ledger_entry_model.dart';

class LedgerEntryWidget extends StatefulWidget {
  const LedgerEntryWidget({
    super.key,
    this.description,
    this.status,
    this.ledgerId,
    this.paymentSourceName,
    this.category,
    this.transactionType,
    this.amount,
    this.runningTotal,
    this.billId,
    this.transactionId,
    this.incomeId,
    this.transactionDate,
  });

  final String? description;
  final bool? status;
  final String? ledgerId;
  final String? paymentSourceName;
  final String? category;
  final String? transactionType;
  final double? amount;
  final double? runningTotal;
  final String? billId;
  final String? transactionId;
  final String? incomeId;
  final String? transactionDate;

  @override
  State<LedgerEntryWidget> createState() => _LedgerEntryWidgetState();
}

class _LedgerEntryWidgetState extends State<LedgerEntryWidget> {
  late LedgerEntryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LedgerEntryModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
      child: Semantics(
        label: 'Click to view transaction Details',
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed(
              'TransactionDetails',
              queryParameters: {
                'ledgerId': serializeParam(
                  widget.ledgerId,
                  ParamType.String,
                ),
                'billId': serializeParam(
                  widget.billId,
                  ParamType.String,
                ),
                'transactionId': serializeParam(
                  widget.transactionId,
                  ParamType.String,
                ),
                'incomeId': serializeParam(
                  widget.incomeId,
                  ParamType.String,
                ),
              }.withoutNulls,
            );
          },
          child: Material(
            color: Colors.transparent,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: SafeArea(
              child: Container(
                width: 368.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: widget.status!
                        ? FlutterFlowTheme.of(context).secondary
                        : FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          widget.description!.maybeHandleOverflow(
                            maxChars: 20,
                            replacement: '…',
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Noto Sans JP',
                                    fontSize: 23.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 24.0),
                                    child: Semantics(
                                      label: 'Click to toggle Status',
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 20.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        icon: Icon(
                                          Icons.check_circle,
                                          color: widget.status!
                                              ? FlutterFlowTheme.of(context)
                                                  .secondary
                                              : FlutterFlowTheme.of(context)
                                                  .alternate,
                                          size: 24.0,
                                        ),
                                        showLoadingIndicator: true,
                                        onPressed: () async {
                                          _model.editLedgerEntryAsClearedOutput =
                                              await TppbGroup
                                                  .editLedgerEntryAsClearedCall
                                                  .call(
                                            ledgerId: widget.ledgerId,
                                            authenticationToken:
                                                currentJwtToken,
                                          );

                                          if (!(_model
                                                  .editLedgerEntryAsClearedOutput
                                                  ?.succeeded ??
                                              true)) {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: const Text('Error'),
                                                  content: Text(TppbGroup
                                                      .editLedgerEntryAsClearedCall
                                                      .message(
                                                        (_model.editLedgerEntryAsClearedOutput
                                                                ?.jsonBody ??
                                                            ''),
                                                      )
                                                      .toString()),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
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
                                          'Wallet: ${widget.paymentSourceName}',
                                          'Wallet: Loading...',
                                        ).maybeHandleOverflow(
                                          maxChars: 20,
                                          replacement: '…',
                                        ),
                                        maxLines: 1,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
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
                                          'Category: ${widget.category}',
                                          'Loading...',
                                        ).maybeHandleOverflow(
                                          maxChars: 20,
                                          replacement: '…',
                                        ),
                                        maxLines: 1,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Noto Sans JP',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        AutoSizeText(
                                          valueOrDefault<String>(
                                            widget.transactionDate,
                                            '2024-01-01',
                                          ),
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
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
                                        child: AutoSizeText(
                                          valueOrDefault<String>(
                                            '${valueOrDefault<String>(
                                              (widget.transactionType ==
                                                          'Debit') ||
                                                      (widget.transactionType ==
                                                          'debit')
                                                  ? '-'
                                                  : '+',
                                              '-',
                                            )}${formatNumber(
                                              widget.amount,
                                              formatType: FormatType.custom,
                                              currency: '',
                                              format: '###,###.00',
                                              locale: '',
                                            )}',
                                            'Loading...',
                                          ),
                                          textAlign: TextAlign.end,
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Noto Sans JP',
                                                color: (widget.transactionType ==
                                                            'Debit') ||
                                                        (widget.transactionType ==
                                                            'debit')
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .error
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                fontSize: 38.73,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ]
                                        .divide(const SizedBox(width: 0.0))
                                        .around(const SizedBox(width: 0.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 8.0, 8.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            formatNumber(
                                              widget.runningTotal,
                                              formatType: FormatType.custom,
                                              currency: '',
                                              format: '###,###.00',
                                              locale: '',
                                            ),
                                            'Loading...',
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
    );
  }
}
