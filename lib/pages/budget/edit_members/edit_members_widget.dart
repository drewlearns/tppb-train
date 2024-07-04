import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'edit_members_model.dart';
export 'edit_members_model.dart';

class EditMembersWidget extends StatefulWidget {
  const EditMembersWidget({super.key});

  @override
  State<EditMembersWidget> createState() => _EditMembersWidgetState();
}

class _EditMembersWidgetState extends State<EditMembersWidget> {
  late EditMembersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditMembersModel());

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
        title: 'Edit Members',
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
                        Icons.add,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        _model.subscriptionCheckerOutput2 =
                            await TppbGroup.subscriptionCheckerCall.call(
                          userUuid: currentUserUid,
                          authenticationToken: currentJwtToken,
                        );

                        if (TppbGroup.subscriptionCheckerCall.isTrial(
                              (_model.subscriptionCheckerOutput2?.jsonBody ??
                                  ''),
                            ) ==
                            true) {
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title:
                                        const Text('Your account is In Trial Mode'),
                                    content: const Text(
                                        'To invite, you must purchase a subscription'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: const Text('Buy Now'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: const Text('Go Home'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            context.pushNamed('Home');
                          } else {
                            context.pushNamed('SalesPage');
                          }
                        } else {
                          context.pushNamed('AddInvite');
                        }

                        setState(() {});
                      },
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  title: AutoSizeText(
                    FFLocalizations.of(context).getText(
                      '1irovwwp' /* Edit Members */,
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 380.0,
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
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
                                              child: CircularProgressIndicator(
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
                                        final dropDownGetHouseholdResponse =
                                            snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller:
                                              _model.dropDownValueController ??=
                                                  FormFieldController<String>(
                                            _model.dropDownValue ??= '',
                                          ),
                                          options: List<String>.from(TppbGroup
                                              .getHouseholdCall
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
                                              () => _model.dropDownValue = val),
                                          width: 300.0,
                                          height: 56.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Noto Sans JP',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'oehhrdwn' /* Please Select... */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
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
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'aapiu2i1' /* Budget* */,
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
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 380.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (_model.dropDownValue != null &&
                                _model.dropDownValue != '')
                              Expanded(
                                child: FutureBuilder<ApiCallResponse>(
                                  future: (_model.apiRequestCompleter ??=
                                          Completer<ApiCallResponse>()
                                            ..complete(TppbGroup
                                                .getHouseholdMembersCall
                                                .call(
                                              authenticationToken:
                                                  currentJwtToken,
                                              householdIdGlobal:
                                                  _model.dropDownValue,
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
                                    final listViewGetHouseholdMembersResponse =
                                        snapshot.data!;
                                    return Builder(
                                      builder: (context) {
                                        final users =
                                            TppbGroup.getHouseholdMembersCall
                                                    .uuid(
                                                      listViewGetHouseholdMembersResponse
                                                          .jsonBody,
                                                    )
                                                    ?.toList() ??
                                                [];
                                        return ListView.separated(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4.0),
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: users.length,
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(height: 4.0),
                                          itemBuilder: (context, usersIndex) {
                                            final usersItem = users[usersIndex];
                                            return Container(
                                              width: 380.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          '${TppbGroup.getHouseholdMembersCall.firstName(
                                                            listViewGetHouseholdMembersResponse
                                                                .jsonBody,
                                                          )?[usersIndex]} ${TppbGroup.getHouseholdMembersCall.lastName(
                                                            listViewGetHouseholdMembersResponse
                                                                .jsonBody,
                                                          )?[usersIndex]}',
                                                          'Loading...',
                                                        ).maybeHandleOverflow(
                                                          maxChars: 11,
                                                          replacement: '…',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          TppbGroup
                                                              .getHouseholdMembersCall
                                                              .email(
                                                            listViewGetHouseholdMembersResponse
                                                                .jsonBody,
                                                          )?[usersIndex],
                                                          'Loading...',
                                                        ).maybeHandleOverflow(
                                                          maxChars: 18,
                                                          replacement: '…',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                      Text(
                                                        valueOrDefault<String>(
                                                          TppbGroup
                                                              .getHouseholdMembersCall
                                                              .role(
                                                            listViewGetHouseholdMembersResponse
                                                                .jsonBody,
                                                          )?[usersIndex],
                                                          'Loading...',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans JP',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderRadius: 20.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 40.0,
                                                        icon: Icon(
                                                          Icons.delete_forever,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          _model.apiResultfko =
                                                              await TppbGroup
                                                                  .deleteMemberFromHouseholdCall
                                                                  .call(
                                                            memberUuid: TppbGroup
                                                                .getHouseholdMembersCall
                                                                .uuid(
                                                              listViewGetHouseholdMembersResponse
                                                                  .jsonBody,
                                                            )?[usersIndex],
                                                            authenticationToken:
                                                                currentJwtToken,
                                                            householdIdGlobal:
                                                                _model
                                                                    .dropDownValue,
                                                          );

                                                          if ((_model
                                                                  .apiResultfko
                                                                  ?.succeeded ??
                                                              true)) {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: const Text(
                                                                      'Success'),
                                                                  content: Text(
                                                                      TppbGroup
                                                                          .deleteMemberFromHouseholdCall
                                                                          .message(
                                                                    (_model.apiResultfko
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!),
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
                                                                  title: const Text(
                                                                      'Error'),
                                                                  content: Text(
                                                                      TppbGroup
                                                                          .deleteMemberFromHouseholdCall
                                                                          .message(
                                                                    (_model.apiResultfko
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!),
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
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                          ],
                        ),
                      ]
                          .divide(const SizedBox(height: 4.0))
                          .around(const SizedBox(height: 4.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
