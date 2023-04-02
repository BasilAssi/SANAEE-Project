import '/auth/auth_util.dart';
import '/backend/push_notifications/push_notifications_handler.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'verify_mobile_model.dart';
export 'verify_mobile_model.dart';

class VerifyMobileWidget extends StatefulWidget {
  const VerifyMobileWidget({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  final String? phoneNumber;

  @override
  _VerifyMobileWidgetState createState() => _VerifyMobileWidgetState();
}

class _VerifyMobileWidgetState extends State<VerifyMobileWidget> {
  late VerifyMobileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerifyMobileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF262D34),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 1.0,
            decoration: BoxDecoration(
              color: Color(0xFF262D34),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/alexandru-acea--WBYxmW4yuw-unsplash.jpg',
                ).image,
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 70.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/uiLogo_robinColored.png',
                          width: 170.0,
                          height: 70.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: 500.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8.0,
                            color: Color(0x66000000),
                            offset: Offset(0.0, -4.0),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'khq0cada' /* صفحة التاكيد */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .displayMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontStyle: FontStyle.italic,
                                        ),
                                  ),
                                  Text(
                                    'Enter OTP sent to ${widget.phoneNumber}',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: 350.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 20.0, 12.0, 0.0),
                                  child: PinCodeTextField(
                                    appContext: context,
                                    length: 6,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    enableActiveFill: false,
                                    autoFocus: true,
                                    showCursor: true,
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    obscureText: false,
                                    hintCharacter: '-',
                                    pinTheme: PinTheme(
                                      fieldHeight: 36.0,
                                      fieldWidth: 36.0,
                                      borderWidth: 2.0,
                                      borderRadius: BorderRadius.circular(12.0),
                                      shape: PinCodeFieldShape.box,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      inactiveColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      selectedColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      activeFillColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                      inactiveFillColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      selectedFillColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                    ),
                                    controller: _model.pinCodeController,
                                    onChanged: (_) => {},
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.solidClock,
                                      color: Color(0xFFF8B500),
                                      size: 40.0,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 0.0, 0.0),
                                        child: FlutterFlowTimer(
                                          initialTime: _model.timerMilliseconds,
                                          getDisplayTime: (value) =>
                                              StopWatchTimer.getDisplayTime(
                                            value,
                                            hours: false,
                                            milliSecond: false,
                                          ),
                                          timer: _model.timerController,
                                          updateStateInterval:
                                              Duration(milliseconds: 1000),
                                          onChanged: (value, displayTime,
                                              shouldUpdate) {
                                            _model.timerMilliseconds = value;
                                            _model.timerValue = displayTime;
                                            if (shouldUpdate) setState(() {});
                                          },
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFFF8B500),
                                              ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '7e3eh0cm' /* رقم غير صحيح ؟ */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFFF41A32),
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              final smsCodeVal = '+970${widget.phoneNumber}';
                              if (smsCodeVal == null || smsCodeVal.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Enter SMS verification code.'),
                                  ),
                                );
                                return;
                              }
                              final phoneVerifiedUser = await verifySmsCode(
                                context: context,
                                smsCode: smsCodeVal,
                              );
                              if (phoneVerifiedUser == null) {
                                return;
                              }

                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PushNotificationsHandler(
                                    child: NavBarPage(initialPage: 'MAINHome'),
                                  ),
                                ),
                                (r) => false,
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              'dmnfvu22' /* الاستمرار */,
                            ),
                            options: FFButtonOptions(
                              width: 350.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFF8B500),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
