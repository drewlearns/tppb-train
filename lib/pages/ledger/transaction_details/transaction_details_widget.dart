import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'transaction_details_model.dart';
export 'transaction_details_model.dart';

class TransactionDetailsWidget extends StatefulWidget {
  const TransactionDetailsWidget({
    super.key,
    required this.ledgerId,
    this.billId,
    this.transactionId,
    this.incomeId,
    required this.type,
  });

  final String? ledgerId;
  final String? billId;
  final String? transactionId;
  final String? incomeId;
  final String? type;

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
    return FutureBuilder<ApiCallResponse>(
      future: TppbGroup.getLedgerEntryCall.call(
        ledgerId: widget.ledgerId,
        authenticationToken: currentJwtToken,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final transactionDetailsGetLedgerEntryResponse = snapshot.data!;
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
                    actions: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.edit,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            if (Navigator.of(context).canPop()) {
                              context.pop();
                            }
                            context.pushNamed(
                              'EditTransaction',
                              queryParameters: {
                                'transactionId': serializeParam(
                                  widget.transactionId,
                                  ParamType.String,
                                ),
                                'type': serializeParam(
                                  'transaction',
                                  ParamType.String,
                                ),
                                'ledgerId': serializeParam(
                                  widget.ledgerId,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                        ),
                      ),
                    ],
                    flexibleSpace: FlexibleSpaceBar(
                      title: AutoSizeText(
                        FFLocalizations.of(context).getText(
                          'rjn9dg1u' /* Transaction */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Noto Sans JP',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
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
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: FutureBuilder<ApiCallResponse>(
                                  future: (_model.apiRequestCompleter ??=
                                          Completer<ApiCallResponse>()
                                            ..complete(
                                                TppbGroup.getIncomeCall.call(
                                              incomeId: widget.incomeId,
                                              authenticationToken:
                                                  currentJwtToken,
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
                                    final listViewGetIncomeResponse =
                                        snapshot.data!;
                                    return ListView(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 4.0),
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
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'nvyg6dlc' /* Description:  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    TppbGroup.getLedgerEntryCall
                                                        .description(
                                                      transactionDetailsGetLedgerEntryResponse
                                                          .jsonBody,
                                                    ),
                                                    'Loading...',
                                                  ),
                                                  maxLines: 2,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        color: TppbGroup
                                                                    .getLedgerEntryCall
                                                                    .transactionType(
                                                                  transactionDetailsGetLedgerEntryResponse
                                                                      .jsonBody,
                                                                ) ==
                                                                'Debit'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .error
                                                            : const Color(0xFF072D12),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'yx3y9wxn' /* Amount:  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    '${valueOrDefault<String>(
                                                          TppbGroup
                                                              .getLedgerEntryCall
                                                              .transactionType(
                                                            transactionDetailsGetLedgerEntryResponse
                                                                .jsonBody,
                                                          ),
                                                          'Loading...',
                                                        ) == 'Debit' ? '-' : '+'}${valueOrDefault<String>(
                                                      formatNumber(
                                                        TppbGroup
                                                            .getLedgerEntryCall
                                                            .amount(
                                                          transactionDetailsGetLedgerEntryResponse
                                                              .jsonBody,
                                                        ),
                                                        formatType:
                                                            FormatType.custom,
                                                        currency: '',
                                                        format: '###,###.00',
                                                        locale: '',
                                                      ),
                                                      'Loading...',
                                                    )}',
                                                    '-\$99,999.99',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        color: TppbGroup
                                                                    .getLedgerEntryCall
                                                                    .transactionType(
                                                                  transactionDetailsGetLedgerEntryResponse
                                                                      .jsonBody,
                                                                ) ==
                                                                'Debit'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .error
                                                            : const Color(0xFF072D12),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'kdijiniz' /* Date:  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    TppbGroup.getLedgerEntryCall
                                                        .transactionDate(
                                                      transactionDetailsGetLedgerEntryResponse
                                                          .jsonBody,
                                                    ),
                                                    'Loading...',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
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
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'zv2jqgi3' /* Category:  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    TppbGroup.getLedgerEntryCall
                                                        .category(
                                                      transactionDetailsGetLedgerEntryResponse
                                                          .jsonBody,
                                                    ),
                                                    'Loading...',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
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
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xcluxzwh' /* Tags:  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    TppbGroup.getLedgerEntryCall
                                                        .tags(
                                                      transactionDetailsGetLedgerEntryResponse
                                                          .jsonBody,
                                                    ),
                                                    'Loading...',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
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
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '67r3wu2q' /* Wallet Name */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    TppbGroup.getLedgerEntryCall
                                                        .sourcename(
                                                      transactionDetailsGetLedgerEntryResponse
                                                          .jsonBody,
                                                    ),
                                                    'Loading...',
                                                  ).maybeHandleOverflow(
                                                      maxChars: 20),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
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
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bm1nz2z4' /* Status: */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Semantics(
                                                        label:
                                                            'Click to toggle status',
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderRadius: 20.0,
                                                          borderWidth: 1.0,
                                                          buttonSize: 40.0,
                                                          icon: Icon(
                                                            Icons.check_circle,
                                                            color: TppbGroup
                                                                        .getLedgerEntryCall
                                                                        .status(
                                                                      transactionDetailsGetLedgerEntryResponse
                                                                          .jsonBody,
                                                                    ) ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent1,
                                                            size: 24.0,
                                                          ),
                                                          showLoadingIndicator:
                                                              true,
                                                          onPressed: () async {
                                                            _model.apiResultnnq =
                                                                await TppbGroup
                                                                    .editLedgerEntryAsClearedCall
                                                                    .call(
                                                              ledgerId: widget
                                                                  .ledgerId,
                                                              authenticationToken:
                                                                  currentJwtToken,
                                                            );

                                                            if ((_model
                                                                    .apiResultnnq
                                                                    ?.succeeded ??
                                                                true)) {
                                                              _model.soundPlayer ??=
                                                                  AudioPlayer();
                                                              if (_model
                                                                  .soundPlayer!
                                                                  .playing) {
                                                                await _model
                                                                    .soundPlayer!
                                                                    .stop();
                                                              }
                                                              _model
                                                                  .soundPlayer!
                                                                  .setVolume(
                                                                      1.0);
                                                              _model
                                                                  .soundPlayer!
                                                                  .setAsset(
                                                                      'assets/audios/cash-register-kaching-sound-effect-125042.mp3')
                                                                  .then((_) => _model
                                                                      .soundPlayer!
                                                                      .play());

                                                              setState(() =>
                                                                  _model.apiRequestCompleter =
                                                                      null);
                                                              await _model
                                                                  .waitForApiRequestCompleted();
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Error'),
                                                                    content: Text(TppbGroup
                                                                        .editLedgerEntryAsClearedCall
                                                                        .message(
                                                                          (_model.apiResultnnq?.jsonBody ??
                                                                              ''),
                                                                        )
                                                                        .toString()),
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
                                                            }

                                                            setState(() {});
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'p1bjs3as' /* Toggle me */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                      ),
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
                                        if (widget.type == 'bill')
                                          FutureBuilder<ApiCallResponse>(
                                            future: TppbGroup.getBillCall.call(
                                              billId: widget.billId,
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
                                              final billListViewGetBillResponse =
                                                  snapshot.data!;
                                              return ListView(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  if (widget.type == 'bill')
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '5yq85eeh' /* Start Date */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
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
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            TppbGroup
                                                                .getBillCall
                                                                .dayOfMonth(
                                                                  billListViewGetBillResponse
                                                                      .jsonBody,
                                                                )
                                                                ?.toString(),
                                                            'Loading...',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Sans JP',
                                                                color: TppbGroup
                                                                            .getLedgerEntryCall
                                                                            .transactionType(
                                                                          transactionDetailsGetLedgerEntryResponse
                                                                              .jsonBody,
                                                                        ) ==
                                                                        'Debit'
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .error
                                                                    : const Color(
                                                                        0xFF072D12),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ]
                                                          .divide(const SizedBox(
                                                              width: 8.0))
                                                          .around(const SizedBox(
                                                              width: 8.0)),
                                                    ),
                                                  if (widget.type == 'bill')
                                                    Semantics(
                                                      label:
                                                          'Click to open URL and copy it to the clipboard',
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
                                                          _model.copyURL = true;
                                                          setState(() {});
                                                          await Clipboard.setData(
                                                              ClipboardData(
                                                                  text: TppbGroup
                                                                      .getBillCall
                                                                      .url(
                                                            billListViewGetBillResponse
                                                                .jsonBody,
                                                          )!));
                                                          await launchURL(
                                                              TppbGroup
                                                                  .getBillCall
                                                                  .url(
                                                            billListViewGetBillResponse
                                                                .jsonBody,
                                                          )!);
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'uy72d85h' /* URL:  */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLarge
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
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                TppbGroup
                                                                    .getBillCall
                                                                    .url(
                                                                  billListViewGetBillResponse
                                                                      .jsonBody,
                                                                ),
                                                                'Loading...',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Noto Sans JP',
                                                                    color: TppbGroup.getLedgerEntryCall
                                                                                .transactionType(
                                                                              transactionDetailsGetLedgerEntryResponse.jsonBody,
                                                                            ) ==
                                                                            'Debit'
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .error
                                                                        : const Color(
                                                                            0xFF072D12),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                            ToggleIcon(
                                                              onPressed:
                                                                  () async {
                                                                setState(() => _model
                                                                        .copyURL =
                                                                    !_model
                                                                        .copyURL);
                                                                await Clipboard.setData(
                                                                    ClipboardData(
                                                                        text: TppbGroup
                                                                            .getBillCall
                                                                            .url(
                                                                  billListViewGetBillResponse
                                                                      .jsonBody,
                                                                )!));
                                                              },
                                                              value: _model
                                                                  .copyURL,
                                                              onIcon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .clipboardCheck,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 25.0,
                                                              ),
                                                              offIcon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .clipboard,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 25.0,
                                                              ),
                                                            ),
                                                          ]
                                                              .divide(const SizedBox(
                                                                  width: 8.0))
                                                              .around(const SizedBox(
                                                                  width: 8.0)),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              );
                                            },
                                          ),
                                        if (valueOrDefault<bool>(
                                          widget.type == 'bill',
                                          false,
                                        ))
                                          FutureBuilder<ApiCallResponse>(
                                            future: TppbGroup
                                                .getBillPasswordCall
                                                .call(
                                              billId: widget.billId,
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
                                              final billPasswordListViewGetBillPasswordResponse =
                                                  snapshot.data!;
                                              return ListView(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Semantics(
                                                    label:
                                                        'Click to Copy User Name',
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
                                                        await Clipboard.setData(
                                                            ClipboardData(
                                                                text: TppbGroup
                                                                    .getBillPasswordCall
                                                                    .username(
                                                          billPasswordListViewGetBillPasswordResponse
                                                              .jsonBody,
                                                        )!));
                                                      },
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'rvd246zf' /* Username:  */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelLarge
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
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              TppbGroup
                                                                  .getBillPasswordCall
                                                                  .username(
                                                                billPasswordListViewGetBillPasswordResponse
                                                                    .jsonBody,
                                                              ),
                                                              'Loading...',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  color: TppbGroup
                                                                              .getLedgerEntryCall
                                                                              .transactionType(
                                                                            transactionDetailsGetLedgerEntryResponse.jsonBody,
                                                                          ) ==
                                                                          'Debit'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .error
                                                                      : const Color(
                                                                          0xFF072D12),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                          ToggleIcon(
                                                            onPressed:
                                                                () async {
                                                              setState(() => _model
                                                                      .copyUserName =
                                                                  !_model
                                                                      .copyUserName);
                                                              await Clipboard.setData(
                                                                  ClipboardData(
                                                                      text: TppbGroup
                                                                          .getBillPasswordCall
                                                                          .username(
                                                                billPasswordListViewGetBillPasswordResponse
                                                                    .jsonBody,
                                                              )!));
                                                            },
                                                            value: _model
                                                                .copyUserName,
                                                            onIcon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .clipboardCheck,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 25.0,
                                                            ),
                                                            offIcon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .clipboard,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 25.0,
                                                            ),
                                                          ),
                                                        ]
                                                            .divide(const SizedBox(
                                                                width: 8.0))
                                                            .around(const SizedBox(
                                                                width: 8.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  if ((widget.type == 'bill') &&
                                                      (TppbGroup
                                                              .getBillPasswordCall
                                                              .password(
                                                            billPasswordListViewGetBillPasswordResponse
                                                                .jsonBody,
                                                          ) !=
                                                          'Loading...'))
                                                    Semantics(
                                                      label:
                                                          'Click to copy password',
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
                                                          _model.revealPassword =
                                                              !_model
                                                                  .revealPassword;
                                                          setState(() {});
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'w99uv5kg' /* Password:  */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLarge
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
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                        .revealPassword
                                                                    ? TppbGroup
                                                                        .getBillPasswordCall
                                                                        .password(
                                                                        billPasswordListViewGetBillPasswordResponse
                                                                            .jsonBody,
                                                                      )
                                                                    : '****************',
                                                                'Loading....',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Noto Sans JP',
                                                                    color: TppbGroup.getLedgerEntryCall
                                                                                .transactionType(
                                                                              transactionDetailsGetLedgerEntryResponse.jsonBody,
                                                                            ) ==
                                                                            'Debit'
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .error
                                                                        : const Color(
                                                                            0xFF072D12),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                            ToggleIcon(
                                                              onPressed:
                                                                  () async {
                                                                setState(() => _model
                                                                        .revealPassword =
                                                                    !_model
                                                                        .revealPassword);
                                                                await Clipboard.setData(
                                                                    ClipboardData(
                                                                        text: TppbGroup
                                                                            .getBillPasswordCall
                                                                            .password(
                                                                  billPasswordListViewGetBillPasswordResponse
                                                                      .jsonBody,
                                                                )!));
                                                              },
                                                              value: _model
                                                                  .revealPassword,
                                                              onIcon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .clipboardCheck,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 25.0,
                                                              ),
                                                              offIcon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .clipboard,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 25.0,
                                                              ),
                                                            ),
                                                          ]
                                                              .divide(const SizedBox(
                                                                  width: 8.0))
                                                              .around(const SizedBox(
                                                                  width: 8.0)),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              );
                                            },
                                          ),
                                        if (widget.type == 'income')
                                          ListView(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gix7vahj' /* Frequency:  */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      TppbGroup.getIncomeCall
                                                          .frequency(
                                                        listViewGetIncomeResponse
                                                            .jsonBody,
                                                      ),
                                                      'Loading...',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          color: TppbGroup
                                                                      .getLedgerEntryCall
                                                                      .transactionType(
                                                                    transactionDetailsGetLedgerEntryResponse
                                                                        .jsonBody,
                                                                  ) ==
                                                                  'Debit'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .error
                                                              : const Color(
                                                                  0xFF072D12),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ]
                                                    .divide(
                                                        const SizedBox(width: 8.0))
                                                    .around(
                                                        const SizedBox(width: 8.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7wg6fiyx' /* First Payday:  */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      TppbGroup.getIncomeCall
                                                          .firstPayDay(
                                                        listViewGetIncomeResponse
                                                            .jsonBody,
                                                      ),
                                                      'Loading...',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          color: TppbGroup
                                                                      .getLedgerEntryCall
                                                                      .transactionType(
                                                                    transactionDetailsGetLedgerEntryResponse
                                                                        .jsonBody,
                                                                  ) ==
                                                                  'Debit'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .error
                                                              : const Color(
                                                                  0xFF072D12),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ]
                                                    .divide(
                                                        const SizedBox(width: 8.0))
                                                    .around(
                                                        const SizedBox(width: 8.0)),
                                              ),
                                            ],
                                          ),
                                        FutureBuilder<ApiCallResponse>(
                                          future:
                                              TppbGroup.getFilePathCall.call(
                                            transactionId: widget.transactionId,
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
                                            final attachmentListViewGetFilePathResponse =
                                                snapshot.data!;
                                            return ListView(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                if (widget.type ==
                                                    'transaction')
                                                  Row(
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
                                                          'vb34m355' /* Attachment */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
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
                                                    ]
                                                        .divide(const SizedBox(
                                                            width: 8.0))
                                                        .around(const SizedBox(
                                                            width: 8.0)),
                                                  ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Semantics(
                                                      label:
                                                          'Click to copy image url',
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
                                                          await launchURL(
                                                              TppbGroup
                                                                  .getFilePathCall
                                                                  .url(
                                                            attachmentListViewGetFilePathResponse
                                                                .jsonBody,
                                                          )!);
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              TppbGroup
                                                                  .getFilePathCall
                                                                  .url(
                                                                attachmentListViewGetFilePathResponse
                                                                    .jsonBody,
                                                              ),
                                                              'https://p289.p2.n0.cdn.zight.com/items/E0uegXZx/b9f1dc60-2a4b-4374-acd3-344ed6d73294.png?source=client&v=%221d147bc28ad18d6568afe34c51535eae%22',
                                                            ),
                                                            width: 300.0,
                                                            height: 247.0,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ]
                                                      .divide(
                                                          const SizedBox(width: 8.0))
                                                      .around(
                                                          const SizedBox(width: 8.0)),
                                                ),
                                              ],
                                            );
                                          },
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
                      ),
                    ]
                        .divide(const SizedBox(width: 4.0))
                        .addToStart(const SizedBox(width: 4.0))
                        .addToEnd(const SizedBox(width: 4.0)),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
