import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nutrinat_model.dart';
export 'nutrinat_model.dart';

class NutrinatWidget extends StatefulWidget {
  const NutrinatWidget({super.key});

  @override
  State<NutrinatWidget> createState() => _NutrinatWidgetState();
}

class _NutrinatWidgetState extends State<NutrinatWidget> {
  late NutrinatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NutrinatModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, -0.5),
      child: Text(
        'NUTRINAT',
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Plus Jakarta Sans',
              fontSize: 28.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w800,
            ),
      ),
    );
  }
}
