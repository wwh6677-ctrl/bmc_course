import '/flutter_flow/flutter_flow_util.dart';
import 'addlessons_b_s_widget.dart' show AddlessonsBSWidget;
import 'package:flutter/material.dart';

class AddlessonsBSModel extends FlutterFlowModel<AddlessonsBSWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nameL widget.
  FocusNode? nameLFocusNode;
  TextEditingController? nameLTextController;
  String? Function(BuildContext, String?)? nameLTextControllerValidator;
  // State field(s) for lessonO widget.
  FocusNode? lessonOFocusNode;
  TextEditingController? lessonOTextController;
  String? Function(BuildContext, String?)? lessonOTextControllerValidator;
  // State field(s) for codev widget.
  FocusNode? codevFocusNode;
  TextEditingController? codevTextController;
  String? Function(BuildContext, String?)? codevTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameLFocusNode?.dispose();
    nameLTextController?.dispose();

    lessonOFocusNode?.dispose();
    lessonOTextController?.dispose();

    codevFocusNode?.dispose();
    codevTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();
  }
}
