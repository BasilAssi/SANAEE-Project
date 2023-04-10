import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'creat_profile_info_step_two_model.dart';
export 'creat_profile_info_step_two_model.dart';

class CreatProfileInfoStepTwoWidget extends StatefulWidget {
  const CreatProfileInfoStepTwoWidget({Key? key}) : super(key: key);

  @override
  _CreatProfileInfoStepTwoWidgetState createState() =>
      _CreatProfileInfoStepTwoWidgetState();
}

class _CreatProfileInfoStepTwoWidgetState
    extends State<CreatProfileInfoStepTwoWidget> {
  late CreatProfileInfoStepTwoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreatProfileInfoStepTwoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'nf9d2c06' /* حرفي المعلومات */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primary,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic,
                              ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'dnscmagr' /* المرحلة الثانية :ادخال المعلوم... */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).primary,
                                fontSize: 20.0,
                              ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
