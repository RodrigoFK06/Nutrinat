import '/backend/backend.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'main_home_page_widget.dart' show MainHomePageWidget;
import 'package:flutter/material.dart';

class MainHomePageModel extends FlutterFlowModel<MainHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for topNav component.
  late TopNavModel topNavModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  Completer<ProductsRecord>? documentRequestCompleter;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
  }

  @override
  void dispose() {
    topNavModel.dispose();
  }

  /// Additional helper methods.
  Future waitForDocumentRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = documentRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
