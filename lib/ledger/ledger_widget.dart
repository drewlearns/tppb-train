import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'ledger_model.dart';
export 'ledger_model.dart';

class LedgerWidget extends StatefulWidget {
  const LedgerWidget({super.key});

  @override
  State<LedgerWidget> createState() => _LedgerWidgetState();
}

class _LedgerWidgetState extends State<LedgerWidget> {
  late LedgerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LedgerModel());

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
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                actions: [
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.filter_alt,
                      color: !_model.thisMonthUpToTodayValue! ||
                              _model.thisMonthFullValue! ||
                              _model.clearedTransactionsOnlyValue! ||
                              (_model.monthDropDownValue != null) ||
                              (_model.yearDropDownValue != null)
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).secondaryBackground,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      _model.filterClicked = !_model.filterClicked;
                      setState(() {});
                    },
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.search,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.add,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
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
                  SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
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
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: TppbGroup.getHouseholdCall.call(
                                          authenticationToken: currentJwtToken,
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
                                                FormFieldController<String>(
                                              _model.householdDropDownValue ??=
                                                  'Option 1',
                                            ),
                                            options: List<String>.from(TppbGroup
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
                                            onChanged: (val) => setState(() =>
                                                _model.householdDropDownValue =
                                                    val),
                                            width: 300.0,
                                            height: 56.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Noto Sans JP',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'kwu6gt2s' /* Please select... */,
                                            ),
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            borderWidth: 2.0,
                                            borderRadius: 8.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              '3mcqp8wj' /* Budget */,
                                            ),
                                            labelTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Noto Sans JP',
                                                      letterSpacing: 0.0,
                                                    ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: Container(
                                        width: 370.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'lth6wd3c' /* Turn off All filters to view E... */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            'Noto Sans JP',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            SwitchListTile.adaptive(
                                              value: _model
                                                      .thisMonthUpToTodayValue ??=
                                                  true,
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .thisMonthUpToTodayValue =
                                                    newValue);
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'sw0hrq80' /* This Month Up to Today */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          fontSize: 21.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              subtitle: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'vxm7kc8x' /* Default View */,
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
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              activeTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .trailing,
                                            ),
                                            SwitchListTile.adaptive(
                                              value: _model
                                                  .thisMonthFullValue ??= false,
                                              onChanged: (newValue) async {
                                                setState(() =>
                                                    _model.thisMonthFullValue =
                                                        newValue);
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'cpgmc9yd' /* View This Full Month */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              subtitle: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'hqrbxfu2' /* All Transactions for the curre... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              activeTrackColor:
                                                  FlutterFlowTheme.of(context)
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
                                              onChanged: (newValue) async {
                                                setState(() => _model
                                                        .clearedTransactionsOnlyValue =
                                                    newValue);
                                              },
                                              title: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'tcp4tsd5' /* Cleared Transactions */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              subtitle: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '1khse9rk' /* All Cleared Transactions regar... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Noto Sans JP',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              activeTrackColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              dense: false,
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .trailing,
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    child: FlutterFlowDropDown<
                                                        int>(
                                                      controller: _model
                                                              .monthDropDownValueController ??=
                                                          FormFieldController<
                                                              int>(
                                                        _model.monthDropDownValue ??=
                                                            valueOrDefault<int>(
                                                          functions
                                                              .currentMonthNumber(),
                                                          6,
                                                        ),
                                                      ),
                                                      options: List<int>.from([
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
                                                          '7tcx96f9' /* 1 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g1ra72fa' /* 2 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '61hz6mlm' /* 3 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '07uchjzg' /* 4 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1awz00ls' /* 5 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1pon7h5z' /* 6 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '20et3njk' /* 7 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          's160s72j' /* 8 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tthoj6x7' /* 9 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          't4uzffkt' /* 10 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rmkfqfwx' /* 11 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'j1d8liha' /* 12 */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .monthDropDownValue =
                                                              val),
                                                      width: 300.0,
                                                      height: 56.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
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
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                      labelText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '2fbo2bgb' /* Month */,
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
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 0.0),
                                                    child: FlutterFlowDropDown<
                                                        int>(
                                                      controller: _model
                                                              .yearDropDownValueController ??=
                                                          FormFieldController<
                                                              int>(
                                                        _model.yearDropDownValue ??=
                                                            valueOrDefault<int>(
                                                          functions
                                                              .currentYearNumber(),
                                                          2024,
                                                        ),
                                                      ),
                                                      options: List<int>.from([
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
                                                          'pvrdu4bg' /* 2024 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f5qf22yv' /* 2025 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xxfyd4k4' /* 2026 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f4eo62yc' /* 2027 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9b32mc5c' /* 2028 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sl4saqx6' /* 2029 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '28drxdne' /* 2030 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'eh9emphr' /* 2031 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tsimsrpz' /* 2032 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n2nl3310' /* 2033 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f2uymyag' /* 2034 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x6rvujsx' /* 2035 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9pu0bjgt' /* 2036 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'keye5ikb' /* 2037 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0lkl7hax' /* 2038 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6p54be9h' /* 2039 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8dygmx0d' /* 2040 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qst5okfd' /* 2041 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7pdb9v13' /* 2042 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'i0kplr7l' /* 2043 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lsdqbi81' /* 2044 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'oe4uhttc' /* 2045 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lh75woou' /* 2046 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'o29wu7l9' /* 2047 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4qttpe8l' /* 2048 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'p9adlcam' /* 2049 */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rrj3vbj7' /* 2050 */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .yearDropDownValue =
                                                              val),
                                                      width: 300.0,
                                                      height: 56.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
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
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: true,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                      labelText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'f015pt8h' /* Year */,
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
                                          ]
                                              .divide(const SizedBox(height: 4.0))
                                              .addToStart(const SizedBox(height: 4.0))
                                              .addToEnd(const SizedBox(height: 4.0)),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          valueOrDefault<String>(
                                            'Total Spent This Month: LOADING...',
                                            'Loading...',
                                          ),
                                          textAlign: TextAlign.center,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          valueOrDefault<String>(
                                            'Safe To Spend: LOADING...',
                                            'Loading...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Noto Sans JP',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ]
                                      .divide(const SizedBox(height: 4.0))
                                      .addToStart(const SizedBox(height: 4.0))
                                      .addToEnd(const SizedBox(height: 4.0)),
                                ),
                              ),
                              FutureBuilder<ApiCallResponse>(
                                future: (_model.apiRequestCompleter ??=
                                        Completer<ApiCallResponse>()
                                          ..complete(
                                              TppbGroup.getLedgerCall.call(
                                            householdId:
                                                _model.householdDropDownValue,
                                            showCurrentMonthOnly:
                                                _model.thisMonthFullValue,
                                            showClearedOnly: _model
                                                .clearedTransactionsOnlyValue,
                                            showCurrentMonthUpToToday:
                                                _model.thisMonthUpToTodayValue,
                                            authenticationToken:
                                                currentJwtToken,
                                            month: _model.monthDropDownValue,
                                            year: _model.yearDropDownValue,
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
                                                  .data(
                                                    listViewGetLedgerResponse
                                                        .jsonBody,
                                                  )
                                                  ?.toList() ??
                                              [];
                                      return RefreshIndicator(
                                        onRefresh: () async {
                                          setState(() => _model
                                              .apiRequestCompleter = null);
                                          await _model
                                              .waitForApiRequestCompleted();
                                        },
                                        child: ListView.separated(
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
                                                          16.0, 8.0, 16.0, 0.0),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 5.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: SafeArea(
                                                      child: AnimatedContainer(
                                                        duration: const Duration(
                                                            milliseconds: 100),
                                                        curve: Curves.easeIn,
                                                        width: 368.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                          border: Border.all(
                                                            color: TppbGroup
                                                                        .getLedgerCall
                                                                        .status(
                                                              listViewGetLedgerResponse
                                                                  .jsonBody,
                                                            )![
                                                                    ledgerEntriesIndex]
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
                                                              MainAxisSize.max,
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
                                                                    'Loading...',
                                                                  ).maybeHandleOverflow(
                                                                    maxChars:
                                                                        20,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Noto Sans JP',
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
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              -1.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                24.0),
                                                                            child:
                                                                                FlutterFlowIconButton(
                                                                              borderColor: Colors.transparent,
                                                                              borderRadius: 20.0,
                                                                              borderWidth: 1.0,
                                                                              buttonSize: 40.0,
                                                                              icon: Icon(
                                                                                Icons.check_circle,
                                                                                color: TppbGroup.getLedgerCall.status(
                                                                                  listViewGetLedgerResponse.jsonBody,
                                                                                )![ledgerEntriesIndex]
                                                                                    ? FlutterFlowTheme.of(context).alternate
                                                                                    : FlutterFlowTheme.of(context).secondary,
                                                                                size: 24.0,
                                                                              ),
                                                                              showLoadingIndicator: true,
                                                                              onPressed: () async {
                                                                                _model.editLedgerEntryAsClearedOutput = await TppbGroup.editLedgerEntryAsClearedCall.call(
                                                                                  ledgerId: TppbGroup.getLedgerCall.ledgerId(
                                                                                    listViewGetLedgerResponse.jsonBody,
                                                                                  )?[ledgerEntriesIndex],
                                                                                  authenticationToken: currentJwtToken,
                                                                                );

                                                                                if ((_model.editLedgerEntryAsClearedOutput?.succeeded ?? true)) {
                                                                                  setState(() => _model.apiRequestCompleter = null);
                                                                                  await _model.waitForApiRequestCompleted();
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
                                                                      ],
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  'Wallet: ${valueOrDefault<String>(
                                                                                    TppbGroup.getLedgerCall.paymentSourceName(
                                                                                      listViewGetLedgerResponse.jsonBody,
                                                                                    )?[ledgerEntriesIndex],
                                                                                    'Loading...',
                                                                                  )}',
                                                                                  'Wallet: Loading...',
                                                                                ).maybeHandleOverflow(
                                                                                  maxChars: 20,
                                                                                  replacement: '…',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Noto Sans JP',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  'Category: ${valueOrDefault<String>(
                                                                                    TppbGroup.getLedgerCall.category(
                                                                                      listViewGetLedgerResponse.jsonBody,
                                                                                    )?[ledgerEntriesIndex],
                                                                                    'Loading...',
                                                                                  )}',
                                                                                  'Loading...',
                                                                                ).maybeHandleOverflow(
                                                                                  maxChars: 20,
                                                                                  replacement: '…',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Noto Sans JP',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    '${valueOrDefault<String>(
                                                                                      (TppbGroup.getLedgerCall.month(
                                                                                        listViewGetLedgerResponse.jsonBody,
                                                                                      )?[ledgerEntriesIndex])
                                                                                          ?.toString(),
                                                                                      'Loading...',
                                                                                    )}-${valueOrDefault<String>(
                                                                                      (TppbGroup.getLedgerCall.dayOfMonth(
                                                                                        listViewGetLedgerResponse.jsonBody,
                                                                                      )?[ledgerEntriesIndex])
                                                                                          ?.toString(),
                                                                                      'Loading...',
                                                                                    )}-${valueOrDefault<String>(
                                                                                      (TppbGroup.getLedgerCall.year(
                                                                                        listViewGetLedgerResponse.jsonBody,
                                                                                      )?[ledgerEntriesIndex])
                                                                                          ?.toString(),
                                                                                      'Loading...',
                                                                                    )}',
                                                                                    'Loading...',
                                                                                  ),
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
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            children: [
                                                                              AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  (valueOrDefault<String>(
                                                                                                TppbGroup.getLedgerCall.transactionType(
                                                                                                  listViewGetLedgerResponse.jsonBody,
                                                                                                )?[ledgerEntriesIndex],
                                                                                                'Loading...',
                                                                                              ) ==
                                                                                              'Debit') ||
                                                                                          (valueOrDefault<String>(
                                                                                                TppbGroup.getLedgerCall.transactionType(
                                                                                                  listViewGetLedgerResponse.jsonBody,
                                                                                                )?[ledgerEntriesIndex],
                                                                                                'Loading...',
                                                                                              ) ==
                                                                                              'debit')
                                                                                      ? '-'
                                                                                      : '+',
                                                                                  '-',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: 'Noto Sans JP',
                                                                                      color: (valueOrDefault<String>(
                                                                                                    TppbGroup.getLedgerCall.transactionType(
                                                                                                      listViewGetLedgerResponse.jsonBody,
                                                                                                    )?[ledgerEntriesIndex],
                                                                                                    'Loading...',
                                                                                                  ) ==
                                                                                                  'Debit') ||
                                                                                              (valueOrDefault<String>(
                                                                                                    TppbGroup.getLedgerCall.transactionType(
                                                                                                      listViewGetLedgerResponse.jsonBody,
                                                                                                    )?[ledgerEntriesIndex],
                                                                                                    'Loading...',
                                                                                                  ) ==
                                                                                                  'debit')
                                                                                          ? FlutterFlowTheme.of(context).error
                                                                                          : FlutterFlowTheme.of(context).tertiary,
                                                                                      fontSize: 28.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                              AutoSizeText(
                                                                                valueOrDefault<String>(
                                                                                  formatNumber(
                                                                                    TppbGroup.getLedgerCall.amount(
                                                                                      listViewGetLedgerResponse.jsonBody,
                                                                                    )?[ledgerEntriesIndex],
                                                                                    formatType: FormatType.custom,
                                                                                    currency: '',
                                                                                    format: '##,###.00',
                                                                                    locale: '',
                                                                                  ),
                                                                                  'Loading...',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                      fontFamily: 'Noto Sans JP',
                                                                                      color: (valueOrDefault<String>(
                                                                                                    TppbGroup.getLedgerCall.transactionType(
                                                                                                      listViewGetLedgerResponse.jsonBody,
                                                                                                    )?[ledgerEntriesIndex],
                                                                                                    'Loading...',
                                                                                                  ) ==
                                                                                                  'Debit') ||
                                                                                              (valueOrDefault<String>(
                                                                                                    TppbGroup.getLedgerCall.transactionType(
                                                                                                      listViewGetLedgerResponse.jsonBody,
                                                                                                    )?[ledgerEntriesIndex],
                                                                                                    'Loading...',
                                                                                                  ) ==
                                                                                                  'debit')
                                                                                          ? FlutterFlowTheme.of(context).error
                                                                                          : FlutterFlowTheme.of(context).tertiary,
                                                                                      fontSize: 28.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 8.0),
                                                                                child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    (TppbGroup.getLedgerCall.runningTotal(
                                                                                      listViewGetLedgerResponse.jsonBody,
                                                                                    )?[ledgerEntriesIndex])
                                                                                        ?.toString(),
                                                                                    'Loading...',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
