import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'create_job_model.dart';
export 'create_job_model.dart';

class CreateJobWidget extends StatefulWidget {
  const CreateJobWidget({Key? key}) : super(key: key);

  @override
  _CreateJobWidgetState createState() => _CreateJobWidgetState();
}

class _CreateJobWidgetState extends State<CreateJobWidget> {
  late CreateJobModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateJobModel());

    _model.textController1 ??= TextEditingController();
    _model.shortDescriptionController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
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
                          style: FlutterFlowTheme.of(context).headlineSmall,
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
                              Navigator.pop(context);
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
                        mainAxisSize: MainAxisSize.max,
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
                                )
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.jobTypeValue = val),
                              width: MediaQuery.of(context).size.width * 0.9,
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
                        EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 20.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              40.0, 8.0, 20.0, 0.0),
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
                            maxLines: 4,
                            keyboardType: TextInputType.multiline,
                            validator: _model
                                .shortDescriptionControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 4.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).lineColor,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (_model.uploadedFileUrls.length < 1)
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final selectedMedia =
                                                await selectMedia(
                                              mediaSource:
                                                  MediaSource.photoGallery,
                                              multiImage: true,
                                            );
                                            if (selectedMedia != null &&
                                                selectedMedia.every((m) =>
                                                    validateFileFormat(
                                                        m.storagePath,
                                                        context))) {
                                              setState(() => _model
                                                  .isDataUploading = true);
                                              var selectedUploadedFiles =
                                                  <FFUploadedFile>[];
                                              var downloadUrls = <String>[];
                                              try {
                                                showUploadMessage(
                                                  context,
                                                  'Uploading file...',
                                                  showLoading: true,
                                                );
                                                selectedUploadedFiles =
                                                    selectedMedia
                                                        .map((m) =>
                                                            FFUploadedFile(
                                                              name: m
                                                                  .storagePath
                                                                  .split('/')
                                                                  .last,
                                                              bytes: m.bytes,
                                                              height: m
                                                                  .dimensions
                                                                  ?.height,
                                                              width: m
                                                                  .dimensions
                                                                  ?.width,
                                                              blurHash:
                                                                  m.blurHash,
                                                            ))
                                                        .toList();

                                                downloadUrls =
                                                    (await Future.wait(
                                                  selectedMedia.map(
                                                    (m) async =>
                                                        await uploadData(
                                                            m.storagePath,
                                                            m.bytes),
                                                  ),
                                                ))
                                                        .where((u) => u != null)
                                                        .map((u) => u!)
                                                        .toList();
                                              } finally {
                                                ScaffoldMessenger.of(context)
                                                    .hideCurrentSnackBar();
                                                _model.isDataUploading = false;
                                              }
                                              if (selectedUploadedFiles
                                                          .length ==
                                                      selectedMedia.length &&
                                                  downloadUrls.length ==
                                                      selectedMedia.length) {
                                                setState(() {
                                                  _model.uploadedLocalFiles =
                                                      selectedUploadedFiles;
                                                  _model.uploadedFileUrls =
                                                      downloadUrls;
                                                });
                                                showUploadMessage(
                                                    context, 'Success!');
                                              } else {
                                                setState(() {});
                                                showUploadMessage(context,
                                                    'Failed to upload data');
                                                return;
                                              }
                                            }
                                          },
                                          child: Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary400,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 60.0,
                                                    icon: Icon(
                                                      Icons.add,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 30.0,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7tskk9a7' /* اضافة صورة */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      if (_model.uploadedFileUrls.length >= 1)
                                        Builder(
                                          builder: (context) {
                                            final photoslist = _model
                                                .uploadedFileUrls
                                                .map((e) => e)
                                                .toList()
                                                .take(10)
                                                .toList();
                                            return SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    photoslist.length,
                                                    (photoslistIndex) {
                                                  final photoslistItem =
                                                      photoslist[
                                                          photoslistIndex];
                                                  return Container(
                                                    width: 100.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await Navigator
                                                                .push(
                                                              context,
                                                              PageTransition(
                                                                type:
                                                                    PageTransitionType
                                                                        .fade,
                                                                child:
                                                                    FlutterFlowExpandedImageView(
                                                                  image: Image
                                                                      .network(
                                                                    photoslistItem,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                  allowRotation:
                                                                      false,
                                                                  tag:
                                                                      photoslistItem,
                                                                  useHeroAnimation:
                                                                      true,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          child: Hero(
                                                            tag: photoslistItem,
                                                            transitionOnUserGestures:
                                                                true,
                                                            child:
                                                                Image.network(
                                                              photoslistItem,
                                                              width: 100.0,
                                                              height: 100.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, -1.0),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            fillColor: Colors
                                                                .transparent,
                                                            icon: Icon(
                                                              Icons
                                                                  .highlight_off_rounded,
                                                              color: Color(
                                                                  0xFFC80F0F),
                                                              size: 30.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              setState(() {
                                                                _model.isDataUploading =
                                                                    false;
                                                                _model.uploadedLocalFiles =
                                                                    [];
                                                                _model.uploadedFileUrls =
                                                                    [];
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                }),
                                              ),
                                            );
                                          },
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'pdxr2c8v' /* السعر المقدر */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: AutoSizeText(
                            valueOrDefault<String>(
                              formatNumber(
                                _model.salaryRangeValue,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.periodDecimal,
                                currency: '₪',
                              ),
                              '100',
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'n60zdd0q' /* ₪00,100 */,
                          ),
                          style: FlutterFlowTheme.of(context).bodySmall,
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
                        EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.92,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                color: FlutterFlowTheme.of(context).lineColor,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: FlutterFlowPlacePicker(
                            iOSGoogleMapsApiKey: '',
                            androidGoogleMapsApiKey: '',
                            webGoogleMapsApiKey: '',
                            onSelect: (place) async {
                              setState(() => _model.placePickerValue = place);
                            },
                            defaultText: FFLocalizations.of(context).getText(
                              '1t54fz83' /* موقع */,
                            ),
                            icon: Icon(
                              Icons.place,
                              color: FlutterFlowTheme.of(context).grayIcon400,
                              size: 16.0,
                            ),
                            buttonOptions: FFButtonOptions(
                              width: 200.0,
                              height: 40.0,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .grayIcon400,
                                  ),
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
                  AuthUserStreamWidget(
                    builder: (context) => FutureBuilder<CustomersRecord>(
                      future: CustomersRecord.getDocumentOnce(
                          currentUserDocument!.customers!),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: SpinKitThreeBounce(
                                color: FlutterFlowTheme.of(context).primary,
                                size: 50.0,
                              ),
                            ),
                          );
                        }
                        final buttonCustomersRecord = snapshot.data!;
                        return FFButtonWidget(
                          onPressed: () async {
                            final postCreateData = {
                              ...createPostRecordData(
                                jobType: _model.jobTypeValue,
                                jobTitle: _model.textController1.text,
                                shortDescription:
                                    _model.shortDescriptionController.text,
                                jobLocation: _model.placePickerValue.latLng,
                                estimatedPrice: formatNumber(
                                  _model.salaryRangeValue,
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.periodDecimal,
                                  currency: '₪',
                                ),
                                timeCreated: getCurrentTimestamp,
                              ),
                              'additionalPhotos': [_model.uploadedFileUrls],
                            };
                            var postRecordReference =
                                PostRecord.collection.doc();
                            await postRecordReference.set(postCreateData);
                            _model.createdSuccessfully =
                                PostRecord.getDocumentFromData(
                                    postCreateData, postRecordReference);
                            Navigator.pop(context);

                            setState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'px1bkt5b' /* إنشاء منشور */,
                          ),
                          options: FFButtonOptions(
                            width: 350.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        );
                      },
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
