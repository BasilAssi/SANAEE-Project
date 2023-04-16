import '/create_profile_for_craftsman/create_profile_select_type_job_step_three/create_profile_select_type_job_step_three_widget.dart';
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

  // State field(s) for TextField_idNumber widget.
  final textFieldIdNumberKey = GlobalKey();
  TextEditingController? textFieldIdNumberController;
  String? textFieldIdNumberSelectedOption;
  String? Function(BuildContext, String?)? textFieldIdNumberControllerValidator;
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

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
