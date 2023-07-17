import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/chang_photo/chang_photo_widget.dart';
import '/components/nav_bar_craftsman/nav_bar_craftsman_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_profile_craftsman_model.dart';
export 'edit_profile_craftsman_model.dart';

class EditProfileCraftsmanWidget extends StatefulWidget {
  const EditProfileCraftsmanWidget({Key? key}) : super(key: key);

  @override
  _EditProfileCraftsmanWidgetState createState() =>
      _EditProfileCraftsmanWidgetState();
}

class _EditProfileCraftsmanWidgetState
    extends State<EditProfileCraftsmanWidget> {
  late EditProfileCraftsmanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProfileCraftsmanModel());

    _model.fullNameController ??= TextEditingController(
        text:
            '${FFAppState().firstName}  ${FFAppState().NameOfTheFather}  ${FFAppState().GrandFatherName}  ${FFAppState().familyName}');
    _model.textController2 ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.bio, ''));
    _model.textController3 ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.address, ''));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).tertiary,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).tertiary,
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFFF8B500),
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'en6e0w1p' /* تعديل الملف الشخصي */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFFF8B500),
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 30.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            icon: FaIcon(
                              FontAwesomeIcons.checkDouble,
                              color: FlutterFlowTheme.of(context).success,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              await currentUserReference!
                                  .update(createUsersRecordData(
                                bio: _model.textController2.text,
                                address: _model.textController3.text,
                                city: _model.dropDownCityValue,
                              ));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                      child: TextFormField(
                        controller: _model.fullNameController,
                        autofocus: true,
                        readOnly: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            'r3ql3q26' /*  */,
                          ),
                          hintStyle: FlutterFlowTheme.of(context).bodySmall,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
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
                          prefixIcon: Icon(
                            Icons.nature,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 30.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 20.0,
                            ),
                        textAlign: TextAlign.center,
                        validator: _model.fullNameControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(1.0, 1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width: 180.0,
                                    height: 180.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/915/600',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.3, 0.6),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 80.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor:
                                        FlutterFlowTheme.of(context).primary,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent1,
                                    icon: Icon(
                                      Icons.edit,
                                      color: Color(0xFFF8B500),
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () => FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode),
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: ChangPhotoWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => TextFormField(
                              controller: _model.textController2,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'xnoa3u0m' /* السيرة الذاتية */,
                                ),
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                prefixIcon: Icon(
                                  Icons.biotech_sharp,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 30.0,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 10.0, 20.0, 10.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => TextFormField(
                              controller: _model.textController3,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  '8kuhhcuu' /* العنوان */,
                                ),
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                prefixIcon: Icon(
                                  Icons.location_on,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 30.0,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController3Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 10.0, 20.0, 15.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropDownCityValueController ??=
                                FormFieldController<String>(
                              _model.dropDownCityValue ??= FFAppState().city,
                            ),
                            options: [
                              FFLocalizations.of(context).getText(
                                'kayofzwf' /* رام الله  */,
                              ),
                              FFLocalizations.of(context).getText(
                                're3rbj6p' /* بيت لحم */,
                              ),
                              FFLocalizations.of(context).getText(
                                'pd5sx7xc' /* القدس  */,
                              ),
                              FFLocalizations.of(context).getText(
                                'zxth8qg0' /* الخليل */,
                              ),
                              FFLocalizations.of(context).getText(
                                '0nyl9b2x' /* نابلس */,
                              ),
                              FFLocalizations.of(context).getText(
                                '7h40s0yu' /* سلفيت  */,
                              ),
                              FFLocalizations.of(context).getText(
                                '6jeuq42n' /* قلقيلية  */,
                              ),
                              FFLocalizations.of(context).getText(
                                'yqa07cz2' /* طولكرم */,
                              ),
                              FFLocalizations.of(context).getText(
                                '7stmat34' /* جنين  */,
                              ),
                              FFLocalizations.of(context).getText(
                                '5kb8sc4d' /* طوباس  */,
                              ),
                              FFLocalizations.of(context).getText(
                                'hk4rqzng' /* اريحا  */,
                              ),
                              FFLocalizations.of(context).getText(
                                'p4free5u' /* البيرة  */,
                              ),
                              FFLocalizations.of(context).getText(
                                '9nh524kj' /* بيت جالا */,
                              ),
                              FFLocalizations.of(context).getText(
                                '4kiy3v6i' /* بيت ساحور */,
                              ),
                              FFLocalizations.of(context).getText(
                                'klb2f1ya' /* الظاهرية */,
                              ),
                              FFLocalizations.of(context).getText(
                                'pmoy7xk0' /* دورا */,
                              )
                            ],
                            onChanged: (val) =>
                                setState(() => _model.dropDownCityValue = val),
                            width: 350.0,
                            height: 50.0,
                            searchHintTextStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  lineHeight: 3.0,
                                ),
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 20.0,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'ui1uh09m' /*  الرجاء الاختيار المدينة */,
                            ),
                            searchHintText: FFLocalizations.of(context).getText(
                              'y0w64wdj' /* Search for an item... */,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 0.0,
                            borderColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderWidth: 0.0,
                            borderRadius: 0.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                12.0, 4.0, 12.0, 4.0),
                            isSearchable: true,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 50.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 15.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Icon(
                                            Icons.soap,
                                            color: Color(0xFFF8B500),
                                            size: 30.0,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'n4j767op' /* نوع العمل: */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            valueOrDefault(
                                                currentUserDocument?.craftType,
                                                ''),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.navBarCraftsmanModel,
                      updateCallback: () => setState(() {}),
                      child: NavBarCraftsmanWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
