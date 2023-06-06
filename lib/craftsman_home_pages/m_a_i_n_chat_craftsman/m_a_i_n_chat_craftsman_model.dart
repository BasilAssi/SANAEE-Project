import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_messages/empty_messages_widget.dart';
import '/components/nav_bar_craftsman/nav_bar_craftsman_widget.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/d_e_t_a_i_l_s_chat/d_e_t_a_i_l_s_chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MAINChatCraftsmanModel extends FlutterFlowModel {
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

  /// Additional helper methods are added here.

}
