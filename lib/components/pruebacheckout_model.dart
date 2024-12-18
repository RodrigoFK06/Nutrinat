import '/components/u_i_marker/u_i_marker_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pruebacheckout_widget.dart' show PruebacheckoutWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class PruebacheckoutModel extends FlutterFlowModel<PruebacheckoutWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for te widget.
  FocusNode? teFocusNode;
  TextEditingController? teTextController;
  String? Function(BuildContext, String?)? teTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for uuidform widget.
  FocusNode? uuidformFocusNode;
  TextEditingController? uuidformTextController;
  String? Function(BuildContext, String?)? uuidformTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode12;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // Model for UI_Marker component.
  late UIMarkerModel uIMarkerModel;

  @override
  void initState(BuildContext context) {
    uIMarkerModel = createModel(context, () => UIMarkerModel());
  }

  @override
  void dispose() {
    expandableExpandableController.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    teFocusNode?.dispose();
    teTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();

    textFieldFocusNode4?.dispose();
    textController5?.dispose();

    textFieldFocusNode5?.dispose();
    textController6?.dispose();

    textFieldFocusNode6?.dispose();
    textController7?.dispose();

    textFieldFocusNode7?.dispose();
    textController8?.dispose();

    textFieldFocusNode8?.dispose();
    textController9?.dispose();

    textFieldFocusNode9?.dispose();
    textController10?.dispose();

    textFieldFocusNode10?.dispose();
    textController11?.dispose();

    uuidformFocusNode?.dispose();
    uuidformTextController?.dispose();

    textFieldFocusNode11?.dispose();
    textController13?.dispose();

    textFieldFocusNode12?.dispose();
    textController14?.dispose();

    uIMarkerModel.dispose();
  }
}
