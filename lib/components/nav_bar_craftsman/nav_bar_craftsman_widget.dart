import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bar_craftsman_model.dart';
export 'nav_bar_craftsman_model.dart';

class NavBarCraftsmanWidget extends StatefulWidget {
  const NavBarCraftsmanWidget({Key? key}) : super(key: key);

  @override
  _NavBarCraftsmanWidgetState createState() => _NavBarCraftsmanWidgetState();
}

class _NavBarCraftsmanWidgetState extends State<NavBarCraftsmanWidget> {
  late NavBarCraftsmanModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarCraftsmanModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 0.0,
              color: FlutterFlowTheme.of(context).primary,
              offset: Offset(0.0, 1.0),
            )
          ],
          borderRadius: BorderRadius.circular(40.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).secondaryText,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(4.0, 8.0, 4.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.home =
                                    FlutterFlowTheme.of(context).primary;
                                _model.profile = Color(0xFF57636C);
                                _model.chat = Color(0xFF57636C);
                                _model.myJob = Color(0xFF57636C);

                                context.pushNamed('MAINHomeCraftsman');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 0.0, 8.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.home =
                                            FlutterFlowTheme.of(context)
                                                .primary;
                                        _model.profile = Color(0xFF57636C);
                                        _model.chat = Color(0xFF57636C);
                                        _model.myJob = Color(0xFF57636C);

                                        context.pushNamed('MAINHomeCraftsman');
                                      },
                                      child: Icon(
                                        Icons.home,
                                        color: _model.home,
                                        size: 30.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.home =
                                    FlutterFlowTheme.of(context).secondaryText;
                                _model.profile =
                                    FlutterFlowTheme.of(context).secondaryText;
                                _model.chat =
                                    FlutterFlowTheme.of(context).secondaryText;
                                _model.myJob =
                                    FlutterFlowTheme.of(context).primary;

                                context.pushNamed('MAINSavedJobsCraftsman');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 8.0, 8.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.home =
                                            FlutterFlowTheme.of(context)
                                                .secondaryText;
                                        _model.profile =
                                            FlutterFlowTheme.of(context)
                                                .secondaryText;
                                        _model.chat =
                                            FlutterFlowTheme.of(context)
                                                .secondaryText;
                                        _model.myJob =
                                            FlutterFlowTheme.of(context)
                                                .primary;

                                        context.pushNamed(
                                            'MAINSavedJobsCraftsman');
                                      },
                                      child: Icon(
                                        Icons.work,
                                        color: _model.myJob,
                                        size: 27.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.updatePage(() {
                                  _model.home = Color(0xFF57636C);
                                  _model.profile = Color(0xFF57636C);
                                  _model.chat =
                                      FlutterFlowTheme.of(context).primary;
                                  _model.myJob = Color(0xFF57636C);
                                });

                                context.pushNamed('MAIN_ChatCraftsman');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 8.0, 8.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.updatePage(() {
                                          _model.home = Color(0xFF57636C);
                                          _model.profile = Color(0xFF57636C);
                                          _model.chat =
                                              FlutterFlowTheme.of(context)
                                                  .primary;
                                          _model.myJob = Color(0xFF57636C);
                                        });

                                        context.pushNamed('MAIN_ChatCraftsman');
                                      },
                                      child: Icon(
                                        Icons.chat_bubble,
                                        color: _model.chat,
                                        size: 27.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.updatePage(() {
                                  _model.home = Color(0xFF57636C);
                                  _model.profile =
                                      FlutterFlowTheme.of(context).primary;
                                  _model.chat = Color(0xFF57636C);
                                  _model.myJob = Color(0xFF57636C);
                                });

                                context.pushNamed('MAIN_ProfileCraftsman');
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 0.0, 8.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.updatePage(() {
                                          _model.home = Color(0xFF57636C);
                                          _model.profile =
                                              FlutterFlowTheme.of(context)
                                                  .primary;
                                          _model.chat = Color(0xFF57636C);
                                          _model.myJob = Color(0xFF57636C);
                                        });

                                        context
                                            .pushNamed('MAIN_ProfileCraftsman');
                                      },
                                      child: Icon(
                                        Icons.person,
                                        color: _model.profile,
                                        size: 27.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
