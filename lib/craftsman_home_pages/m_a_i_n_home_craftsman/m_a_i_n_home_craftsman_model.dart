import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/nav_bar_craftsman/nav_bar_craftsman_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MAINHomeCraftsmanModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for NavBarCraftsman component.
  late NavBarCraftsmanModel navBarCraftsmanModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBarCraftsmanModel = createModel(context, () => NavBarCraftsmanModel());
  }

  void dispose() {
    navBarCraftsmanModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
