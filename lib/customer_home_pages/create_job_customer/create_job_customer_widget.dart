import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_job_customer_model.dart';
export 'create_job_customer_model.dart';

class CreateJobCustomerWidget extends StatefulWidget {
  const CreateJobCustomerWidget({Key? key}) : super(key: key);

  @override
  _CreateJobCustomerWidgetState createState() =>
      _CreateJobCustomerWidgetState();
}

class _CreateJobCustomerWidgetState extends State<CreateJobCustomerWidget> {
  late CreateJobCustomerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateJobCustomerModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldAddressController ??= TextEditingController();
    _model.shortDescriptionController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.textFieldAddressController?.text =
              FFLocalizations.of(context).getText(
            'j2lianoh' /*  */,
          );
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'ukzz8bd8' /* إنشاء وظيفة */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Outfit',
                                fontSize: 32.0,
                              ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.of(context).lineColor,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            buttonSize: 46.0,
                            icon: Icon(
                              Icons.close_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pop();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 4.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).secondary,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.jobTypeValueController ??=
                                  FormFieldController<String>(null),
                              options: [
                                FFLocalizations.of(context).getText(
                                  'f8hlklae' /* البلاط */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ilhz9ik4' /* الكهرباء */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '4ive5b1q' /* حداد */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'i66yxmwy' /* نجار */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'bohmm3kp' /* سباك */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'dxq6o4rl' /* اعمال الالمنيوم */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '8grdgmgd' /*  */,
                                ),
                                '',
                                '',
                                '',
                                '',
                                ''
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.jobTypeValue = val),
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: 70.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'dqojfllq' /* نوع الوظيفة */,
                              ),
                              icon: FaIcon(
                                FontAwesomeIcons.chevronDown,
                                color: FlutterFlowTheme.of(context).grayIcon400,
                                size: 16.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 2.0,
                              borderRadius: 3.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 15.0, 12.0),
                              hidesUnderline: true,
                              isSearchable: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 4.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).lineColor,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController1,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: FFLocalizations.of(context).getText(
                                  'xkp861i0' /* مسمى وظيفي */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 16.0,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).success,
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 4.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).lineColor,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: TextFormField(
                              controller: _model.textFieldAddressController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: FFLocalizations.of(context).getText(
                                  'u85bc950' /* عنوان العمل  */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 16.0,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).success,
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model
                                  .textFieldAddressControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 4.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).lineColor,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: TextFormField(
                              controller: _model.shortDescriptionController,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'pap7cb69' /* وصف قصير للمنشور */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .grayIcon400,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).success,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              textAlign: TextAlign.start,
                              maxLines: 3,
                              keyboardType: TextInputType.multiline,
                              validator: _model
                                  .shortDescriptionControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 4.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).lineColor,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'pdxr2c8v' /* السعر المقدر لإتمام العمل: */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              formatNumber(
                                _model.estimatedPrice,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.commaDecimal,
                              ),
                              '₪',
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 10.0),
                    child: Slider(
                      activeColor: FlutterFlowTheme.of(context).secondary,
                      inactiveColor: Color(0xFF9E9E9E),
                      min: 100.0,
                      max: 5000.0,
                      value: _model.salaryRangeValue ??= 1000.0,
                      label: _model.salaryRangeValue.toString(),
                      divisions: 49,
                      onChanged: (newValue) {
                        setState(() => _model.salaryRangeValue = newValue);
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 40.0, 4.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'n60zdd0q' /* ₪00,100 */,
                            ),
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            '4ficbfr6' /* ₪00,5000 */,
                          ),
                          textAlign: TextAlign.end,
                          style: FlutterFlowTheme.of(context).bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 8.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'vd6abmr5' /* إضافة صور للعمل  */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 30.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        var postRecordReference = PostRecord.collection.doc();
                        await postRecordReference.set(createPostRecordData(
                          jobType: _model.jobTypeValue,
                          jobTitle: _model.textController1.text,
                          shortDescription:
                              _model.shortDescriptionController.text,
                          estimatedPrice: formatNumber(
                            _model.salaryRangeValue,
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.periodDecimal,
                            currency: '₪',
                          ),
                          timeCreated: getCurrentTimestamp,
                          createdBy: currentUserReference,
                          jobLocation: _model.textFieldAddressController.text,
                            jobId: postRecordReference.id
                        ));
                        _model.successfullycreated =
                            PostRecord.getDocumentFromData(
                                createPostRecordData(
                                  jobType: _model.jobTypeValue,
                                  jobTitle: _model.textController1.text,
                                  shortDescription:
                                      _model.shortDescriptionController.text,
                                  estimatedPrice: formatNumber(
                                    _model.salaryRangeValue,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.periodDecimal,
                                    currency: '₪',
                                  ),
                                  timeCreated: getCurrentTimestamp,
                                  createdBy: currentUserReference,
                                  jobLocation:
                                      _model.textFieldAddressController.text,
                                    jobId: postRecordReference.id
                                ),
                                postRecordReference);
                        context.pop();

                        setState(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        'px1bkt5b' /* إنشاء منشور */,
                      ),
                      icon: Icon(
                        Icons.post_add_sharp,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        width: 350.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
