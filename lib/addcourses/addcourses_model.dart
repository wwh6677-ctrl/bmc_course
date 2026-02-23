import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'addcourses_widget.dart' show AddcoursesWidget;
import 'package:flutter/material.dart';

class AddcoursesModel extends FlutterFlowModel<AddcoursesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  bool isDataUploading_uploadDataNe3 = false;
  FFUploadedFile uploadedLocalFile_uploadDataNe3 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataNe3 = '';

  // State field(s) for coursecover widget.
  FocusNode? coursecoverFocusNode;
  TextEditingController? coursecoverTextController;
  String? Function(BuildContext, String?)? coursecoverTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    coursecoverFocusNode?.dispose();
    coursecoverTextController?.dispose();
  }
}
