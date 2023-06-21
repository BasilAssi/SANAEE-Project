import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/chang_photo/chang_photo_widget.dart';
import '/components/nav_bar_craftsman/nav_bar_craftsman_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomarEditProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for fullName widget.
  TextEditingController? fullNameController;
  String? Function(BuildContext, String?)? fullNameControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDownCity widget.
  String? dropDownCityValue;
  FormFieldController<String>? dropDownCityValueController;
  // Model for NavBarCraftsman component.
  late NavBarCraftsmanModel navBarCraftsmanModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBarCraftsmanModel = createModel(context, () => NavBarCraftsmanModel());
  }

  void dispose() {
    unfocusNode.dispose();
    fullNameController?.dispose();
    textController2?.dispose();
    navBarCraftsmanModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
