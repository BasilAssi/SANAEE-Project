import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ReviewCreateProfileCraftmanModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for fullName widget.
  TextEditingController? fullNameController;
  String? Function(BuildContext, String?)? fullNameControllerValidator;
  // State field(s) for TextFieldIDNumber widget.
  TextEditingController? textFieldIDNumberController;
  String? Function(BuildContext, String?)? textFieldIDNumberControllerValidator;
  // State field(s) for TextFieldCity widget.
  TextEditingController? textFieldCityController;
  String? Function(BuildContext, String?)? textFieldCityControllerValidator;
  // State field(s) for TextFieldAddress widget.
  TextEditingController? textFieldAddressController;
  String? Function(BuildContext, String?)? textFieldAddressControllerValidator;
  // State field(s) for TextFieldCraftType widget.
  TextEditingController? textFieldCraftTypeController;
  String? Function(BuildContext, String?)?
      textFieldCraftTypeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    fullNameController?.dispose();
    textFieldIDNumberController?.dispose();
    textFieldCityController?.dispose();
    textFieldAddressController?.dispose();
    textFieldCraftTypeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
