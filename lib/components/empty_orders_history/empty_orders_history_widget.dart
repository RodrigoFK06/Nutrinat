import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'empty_orders_history_model.dart';
export 'empty_orders_history_model.dart';

class EmptyOrdersHistoryWidget extends StatefulWidget {
  const EmptyOrdersHistoryWidget({
    super.key,
    this.title,
    this.bodyText,
  });

  final String? title;
  final String? bodyText;

  @override
  State<EmptyOrdersHistoryWidget> createState() =>
      _EmptyOrdersHistoryWidgetState();
}

class _EmptyOrdersHistoryWidgetState extends State<EmptyOrdersHistoryWidget> {
  late EmptyOrdersHistoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyOrdersHistoryModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Lottie.asset(
            'assets/jsons/orderNone.json',
            width: 150.0,
            height: 130.0,
            fit: BoxFit.cover,
            frameRate: FrameRate(30.0),
            animate: true,
          ),
        ),
        Text(
          valueOrDefault<String>(
            widget.title,
            'Productos no encontrados',
          ),
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Outfit',
                letterSpacing: 0.0,
              ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              widget.bodyText,
              'Los productos pudieron cambiar o ser eliminados...',
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Outfit',
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ],
    );
  }
}
