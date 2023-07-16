import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'r7f2rfge' /* Email is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'mmagg0f3' /* يجب أن يكون عنوان بريد إلكترون... */,
      );
    }
    return null;
  }

  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  String? _passwordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gcbmhlrp' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'bocjdwxb' /* يجب ألا يقل عدد الأحرف عن 6 أح... */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        '1n82v10c' /* يجب أن يكون أقل من 15 حرفًا */,
      );
    }
    if (!RegExp('^(?=.*[a-zA-Z0-9]).{6,15}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'imsbutcj' /* يجب أن يحتوي على رقم واحد وحرف... */,
      );
    }
    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailAddressControllerValidator = _emailAddressControllerValidator;
    passwordVisibility = false;
    passwordControllerValidator = _passwordControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
