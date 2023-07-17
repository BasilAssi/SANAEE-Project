import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CreateProfileNameAddresStepTwoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'lf70u77t' /* رقم الهوية مطلوب */,
      );
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 9) {
      return FFLocalizations.of(context).getText(
        'zooiy5db' /*  الحد الأقصى لرقم الهوية 9 */,
      );
    }
    if (!RegExp('^(?=.*[a-zA-Z0-9]).{8,9}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '2yy1gee6' /* الرقم التعريفي الأقصى 9 ، الرق... */,
      );
    }
    return null;
  }

  // State field(s) for DropDownCity widget.
  String? dropDownCityValue;
  FormFieldController<String>? dropDownCityValueController;
  // State field(s) for TextField_addrese widget.
  final textFieldAddreseKey = GlobalKey();
  TextEditingController? textFieldAddreseController;
  String? textFieldAddreseSelectedOption;
  String? Function(BuildContext, String?)? textFieldAddreseControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
  }

  void dispose() {
    unfocusNode.dispose();
    textController1?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
