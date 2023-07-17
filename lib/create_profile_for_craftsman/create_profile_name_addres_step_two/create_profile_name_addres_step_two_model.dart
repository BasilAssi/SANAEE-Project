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
  // State field(s) for TextField_idNumber widget.
  final textFieldIdNumberKey = GlobalKey();
  TextEditingController? textFieldIdNumberController;
  String? textFieldIdNumberSelectedOption;
  String? Function(BuildContext, String?)? textFieldIdNumberControllerValidator;
  String? _textFieldIdNumberControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'j0hv1wkr' /* id number is required */,
      );
    }
    if (val != textFieldIdNumberSelectedOption) {
      return FFLocalizations.of(context).getText(
        'r75guw8g' /* Please choose an option from t... */,
      );
    }

    if (val.length > 9) {
      return FFLocalizations.of(context).getText(
        'qtpqfssd' /* The maximum ID number */,
      );
    }
    if (!RegExp('^\\d{9}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '5bdnd8dt' /* The maximum ID number 9,only n... */,
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
    textFieldIdNumberControllerValidator =
        _textFieldIdNumberControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
