import '/auth/firebase_auth/auth_util.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CreateProfileNameStepOneCustomarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField_firstname widget.
  TextEditingController? textFieldFirstnameController;
  String? Function(BuildContext, String?)?
      textFieldFirstnameControllerValidator;
  String? _textFieldFirstnameControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9mduiyjx' /* مطلوب ادخال الاسم */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        'p5g588iu' /* يجب أن يكون الاسم الأصغر حرفين */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'xasig2f2' /* يجب أن يحتوي الاسم الأكبر على ... */,
      );
    }
    if (!RegExp('^(?=.*[a-zA-Z0-9]).{2,15}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'fegllspw' /* يجبل ان يكون الاسم يتراوح بين ... */,
      );
    }
    return null;
  }

  // State field(s) for TextField_fatherName widget.
  TextEditingController? textFieldFatherNameController;
  String? Function(BuildContext, String?)?
      textFieldFatherNameControllerValidator;
  String? _textFieldFatherNameControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'vrd7epmz' /* مطلوب ادخال الاسم */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        'tuxl4mc4' /* يجب أن يكون الاسم الأصغر حرفين */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'cw0u0fuf' /* يجب أن يحتوي الاسم الأكبر على ... */,
      );
    }
    if (!RegExp('^(?=.*[a-zA-Z0-9]).{2,15}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'a5wdx2zo' /* يجبل ان يكون الاسم يتراوح بين ... */,
      );
    }
    return null;
  }

  // State field(s) for TextField_grandfatherName widget.
  TextEditingController? textFieldGrandfatherNameController;
  String? Function(BuildContext, String?)?
      textFieldGrandfatherNameControllerValidator;
  String? _textFieldGrandfatherNameControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'kg687u74' /* مطلوب ادخال الاسم */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        'zk0eki9x' /* يجب أن يكون الاسم الأصغر حرفين */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'r22ttmhs' /* يجب أن يحتوي الاسم الأكبر على ... */,
      );
    }
    if (!RegExp('^(?=.*[a-zA-Z0-9]).{2,15}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '8vb5mli0' /* يجبل ان يكون الاسم يتراوح بين ... */,
      );
    }
    return null;
  }

  // State field(s) for TextFieldfamilyName widget.
  TextEditingController? textFieldfamilyNameController;
  String? Function(BuildContext, String?)?
      textFieldfamilyNameControllerValidator;
  String? _textFieldfamilyNameControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'q2hru9a6' /* مطلوب ادخال الاسم */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        'g8jxq8dv' /* يجب أن يكون الاسم الأصغر حرفين */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'y4folasj' /* يجب أن يحتوي الاسم الأكبر على ... */,
      );
    }
    if (!RegExp('^(?=.*[a-zA-Z0-9]).{2,15}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'j032ar1c' /* يجبل ان يكون الاسم يتراوح بين ... */,
      );
    }
    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldFirstnameControllerValidator =
        _textFieldFirstnameControllerValidator;
    textFieldFatherNameControllerValidator =
        _textFieldFatherNameControllerValidator;
    textFieldGrandfatherNameControllerValidator =
        _textFieldGrandfatherNameControllerValidator;
    textFieldfamilyNameControllerValidator =
        _textFieldfamilyNameControllerValidator;
  }

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
