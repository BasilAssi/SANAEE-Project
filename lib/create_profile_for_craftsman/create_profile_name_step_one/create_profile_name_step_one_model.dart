import '/backend/firebase_storage/storage.dart';
import '/create_profile_for_craftsman/create_profile_name_addres_step_two/create_profile_name_addres_step_two_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CreateProfileNameStepOneModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField_firstname widget.
  TextEditingController? textFieldFirstnameController;
  String? Function(BuildContext, String?)?
      textFieldFirstnameControllerValidator;
  // State field(s) for TextField_fatherName widget.
  TextEditingController? textFieldFatherNameController;
  String? Function(BuildContext, String?)?
      textFieldFatherNameControllerValidator;
  // State field(s) for TextField_grandfatherName widget.
  TextEditingController? textFieldGrandfatherNameController;
  String? Function(BuildContext, String?)?
      textFieldGrandfatherNameControllerValidator;
  // State field(s) for TextFieldfamilyName widget.
  TextEditingController? textFieldfamilyNameController;
  String? Function(BuildContext, String?)?
      textFieldfamilyNameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldFirstnameController?.dispose();
    textFieldFatherNameController?.dispose();
    textFieldGrandfatherNameController?.dispose();
    textFieldfamilyNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
