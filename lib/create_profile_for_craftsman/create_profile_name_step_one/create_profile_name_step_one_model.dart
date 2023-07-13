import '/backend/firebase_storage/storage.dart';
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
        'dnd6xtun' /* مطلوب ادخال الاسم */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        '9xyu4bkh' /* يجب أن يكون الاسم الأصغر حرفين */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'hdpsa53a' /* يجب أن يحتوي الاسم الأكبر على ... */,
      );
    }
    if (!RegExp('^(?=.*[a-zA-Z0-9]).{2,15}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'kw8ffdps' /* يجبل ان يكون الاسم يتراوح بين ... */,
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
        'w19i9yxf' /* مطلوب ادخال الاسم */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        'e1apd3bf' /* يجب أن يكون الاسم الأصغر حرفين */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'uve6knjj' /* يجب أن يحتوي الاسم الأكبر على ... */,
      );
    }
    if (!RegExp('^(?=.*[a-zA-Z0-9]).{2,15}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'joadpexv' /* يجبل ان يكون الاسم يتراوح بين ... */,
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
        'mjnte8bi' /* مطلوب ادخال الاسم */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        'gyohfqda' /* يجب أن يكون الاسم الأصغر حرفين */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'l1qijlf7' /* يجب أن يحتوي الاسم الأكبر على ... */,
      );
    }
    if (!RegExp('^(?=.*[a-zA-Z0-9]).{2,15}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '1q33c8tk' /* يجبل ان يكون الاسم يتراوح بين ... */,
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
        '73tff2v3' /* مطلوب ادخال الاسم */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        'va5ylzaf' /* يجب أن يكون الاسم الأصغر حرفين */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'ath6kyry' /* يجب أن يحتوي الاسم الأكبر على ... */,
      );
    }
    if (!RegExp('^(?=.*[a-zA-Z0-9]).{2,15}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '5y1v241d' /* يجبل ان يكون الاسم يتراوح بين ... */,
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
