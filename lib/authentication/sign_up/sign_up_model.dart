import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for ChoiceChips widget.
  List<String>? choiceChipsValues1;
  FormFieldController<List<String>>? choiceChipsValueController1;
  // State field(s) for ChoiceChips widget.
  List<String>? choiceChipsValues2;
  FormFieldController<List<String>>? choiceChipsValueController2;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '4vwjis2u' /* البريد الالكتروني مطلوب */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'j8qon7bu' /* يجب أن يكون عنوان بريد إلكترون... */,
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
        'bx7lyow2' /* كلمة المرور مطلوبة */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        '6jhd0064' /* يجب ألا يقل عدد الأحرف عن 6 أح... */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'h6x0aj3w' /* يجب أن يكون أقل من 15 حرفًا */,
      );
    }
    if (!RegExp('^(?=.*[a-zA-Z0-9]).{6,15}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '0025rc92' /* يجب أن يحتوي على رقم واحد وحرف... */,
      );
    }
    return null;
  }

  // State field(s) for passwordConfirm widget.
  TextEditingController? passwordConfirmController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)? passwordConfirmControllerValidator;
  String? _passwordConfirmControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gpyud16l' /* كلمة المرور مطلوبة */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'ahvpevy8' /* يجب ألا يقل عن 6 أحرف */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'd6n7cpja' /* يجب أن يكون أقل من 15 حرفًا */,
      );
    }
    if (!RegExp('^(?=.*[a-zA-Z0-9]).{6,15}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        's69gs540' /* يجب أن يحتوي على رقم واحد وحرف... */,
      );
    }
    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailAddressControllerValidator = _emailAddressControllerValidator;
    passwordVisibility = false;
    passwordControllerValidator = _passwordControllerValidator;
    passwordConfirmVisibility = false;
    passwordConfirmControllerValidator = _passwordConfirmControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
    passwordConfirmController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
