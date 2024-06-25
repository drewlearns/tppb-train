import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'export_to_q_b_o_model.dart';
export 'export_to_q_b_o_model.dart';

class ExportToQBOWidget extends StatefulWidget {
  const ExportToQBOWidget({super.key});

  @override
  State<ExportToQBOWidget> createState() => _ExportToQBOWidgetState();
}

class _ExportToQBOWidgetState extends State<ExportToQBOWidget> {
  late ExportToQBOModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExportToQBOModel());

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
        title: 'Export To QBO/QBB',
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
                  title: Text(
                    FFLocalizations.of(context).getText(
                      'vxc0c5my' /* Page Title */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Noto Sans JP',
                          letterSpacing: 0.0,
                        ),
                  ),
                  centerTitle: true,
                  expandedTitleScale: 1.0,
                ),
                elevation: 5.0,
              ),
            ),
            body: const SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
            ),
          ),
        ));
  }
}
