import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'walkthrough_card_model.dart';
export 'walkthrough_card_model.dart';

class WalkthroughCardWidget extends StatefulWidget {
  const WalkthroughCardWidget({
    super.key,
    required this.description,
    required this.header,
  });

  final String? description;
  final String? header;

  @override
  State<WalkthroughCardWidget> createState() => _WalkthroughCardWidgetState();
}

class _WalkthroughCardWidgetState extends State<WalkthroughCardWidget> {
  late WalkthroughCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WalkthroughCardModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 7.0,
              color: Color(0x2F1D2429),
              offset: Offset(
                0.0,
                3.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  '3bh1bz3s' /* Walkthrough */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Noto Sans JP',
                      color: FlutterFlowTheme.of(context).secondary,
                      letterSpacing: 0.0,
                    ),
              ),
              Divider(
                height: 16.0,
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              Text(
                valueOrDefault<String>(
                  widget.header,
                  'Loading...',
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Noto Sans JP',
                      letterSpacing: 0.0,
                    ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.description,
                    'Loading...',
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Noto Sans JP',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
