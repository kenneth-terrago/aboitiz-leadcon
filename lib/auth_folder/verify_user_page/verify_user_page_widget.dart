import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'verify_user_page_model.dart';
export 'verify_user_page_model.dart';

class VerifyUserPageWidget extends StatefulWidget {
  const VerifyUserPageWidget({super.key});

  @override
  State<VerifyUserPageWidget> createState() => _VerifyUserPageWidgetState();
}

class _VerifyUserPageWidgetState extends State<VerifyUserPageWidget> {
  late VerifyUserPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerifyUserPageModel());

    _model.mobileNumberTextfieldController ??= TextEditingController();
    _model.mobileNumberTextfieldFocusNode ??= FocusNode();

    _model.emailAddressTextfieldController ??= TextEditingController();
    _model.emailAddressTextfieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 640.0,
                  ),
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                          child: Image.asset(
                            'assets/images/Aboitiz_LeadCon_2024_logo_1.png',
                            width: 366.0,
                            height: 200.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Text(
                          'Welcome delegate',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                        child: Text(
                          'Please enter the mobile number you registered for as a delegate.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          if (_model.isSMSOTP) {
                            return Form(
                              key: _model.formKey1,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 5.0, 0.0),
                                            child: StreamBuilder<
                                                List<CountryCodesRecord>>(
                                              stream: queryCountryCodesRecord(
                                                queryBuilder:
                                                    (countryCodesRecord) =>
                                                        countryCodesRecord
                                                            .orderBy(
                                                                'country_code'),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CountryCodesRecord>
                                                    countryCodeDropdownCountryCodesRecordList =
                                                    snapshot.data!;
                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .countryCodeDropdownValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.countryCodeDropdownValue ??=
                                                        '+63',
                                                  ),
                                                  options:
                                                      countryCodeDropdownCountryCodesRecordList
                                                          .map((e) =>
                                                              e.countryCode)
                                                          .toList(),
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .countryCodeDropdownValue =
                                                          val),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  borderWidth: 1.0,
                                                  borderRadius: 6.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 5.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 3,
                                          child: TextFormField(
                                            controller: _model
                                                .mobileNumberTextfieldController,
                                            focusNode: _model
                                                .mobileNumberTextfieldFocusNode,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: false,
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'e.g. 9123456789',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textDark64,
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .destructive,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .destructive,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                            minLines: null,
                                            keyboardType: TextInputType.phone,
                                            validator: _model
                                                .mobileNumberTextfieldControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  _model.isSMSOTP = false;
                                                });
                                              },
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'I prefer to receive OTP via ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: 'email address',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          var shouldSetState = false;
                                          // validateMobileNumberForm
                                          if (_model.formKey1.currentState ==
                                                  null ||
                                              !_model.formKey1.currentState!
                                                  .validate()) {
                                            return;
                                          }
                                          _model.userDocumentBySMS =
                                              await queryUsersRecordOnce(
                                            queryBuilder: (usersRecord) =>
                                                usersRecord.where(
                                              'phone_number',
                                              isEqualTo:
                                                  '${_model.countryCodeDropdownValue}${_model.mobileNumberTextfieldController.text}',
                                            ),
                                            singleRecord: true,
                                          ).then((s) => s.firstOrNull);
                                          shouldSetState = true;
                                          if (_model.userDocumentBySMS !=
                                              null) {
                                            _model.accessTokenResponseBySMS =
                                                await GettingTheAccessTokenCall
                                                    .call(
                                              scope: 'api/sms',
                                            );
                                            shouldSetState = true;
                                            _model.otpResponseBySMS =
                                                await SendSMSOTPCall.call(
                                              destination:
                                                  '${_model.countryCodeDropdownValue}${_model.mobileNumberTextfieldController.text}',
                                              accessToken:
                                                  GettingTheAccessTokenCall
                                                      .accessToken(
                                                (_model.accessTokenResponseBySMS
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                            );
                                            shouldSetState = true;
                                            if (SendSMSOTPCall.status(
                                                  (_model.otpResponseBySMS
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                200) {
                                              context.pushNamed(
                                                'otpCodePage',
                                                queryParameters: {
                                                  'destination': serializeParam(
                                                    '${_model.countryCodeDropdownValue}${_model.mobileNumberTextfieldController.text}',
                                                    ParamType.String,
                                                  ),
                                                  'uid': serializeParam(
                                                    SendSMSOTPCall.uid(
                                                      (_model.otpResponseBySMS
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    ParamType.String,
                                                  ),
                                                  'accessToken': serializeParam(
                                                    GettingTheAccessTokenCall
                                                        .accessToken(
                                                      (_model.accessTokenResponseBySMS
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    ParamType.String,
                                                  ),
                                                  'isSMSOTP': serializeParam(
                                                    _model.isSMSOTP,
                                                    ParamType.bool,
                                                  ),
                                                  'goToPage': serializeParam(
                                                    'dashboard',
                                                    ParamType.String,
                                                  ),
                                                  'isTestUser': serializeParam(
                                                    _model.userDocumentBySMS
                                                        ?.testUser,
                                                    ParamType.bool,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    SendSMSOTPCall.message(
                                                      (_model.otpResponseBySMS
                                                              ?.jsonBody ??
                                                          ''),
                                                    )!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLargeFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .error,
                                                ),
                                              );
                                            }

                                            if (shouldSetState) {
                                              setState(() {});
                                            }
                                            return;
                                          } else {
                                            _model.preregisteredUserDocumentBySMS =
                                                await queryPreregisteredUsersRecordOnce(
                                              queryBuilder:
                                                  (preregisteredUsersRecord) =>
                                                      preregisteredUsersRecord
                                                          .where(
                                                'phone_number',
                                                isEqualTo:
                                                    '${_model.countryCodeDropdownValue}${_model.mobileNumberTextfieldController.text}',
                                              ),
                                              singleRecord: true,
                                            ).then((s) => s.firstOrNull);
                                            shouldSetState = true;
                                            if (_model
                                                    .preregisteredUserDocumentBySMS !=
                                                null) {
                                              _model.accessTokenResponseByPreReg =
                                                  await GettingTheAccessTokenCall
                                                      .call(
                                                scope: 'api/sms',
                                              );
                                              shouldSetState = true;
                                              _model.otpResponseByPreReg =
                                                  await SendSMSOTPCall.call(
                                                destination:
                                                    '${_model.countryCodeDropdownValue}${_model.mobileNumberTextfieldController.text}',
                                                accessToken:
                                                    GettingTheAccessTokenCall
                                                        .accessToken(
                                                  (_model.accessTokenResponseByPreReg
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                              );
                                              shouldSetState = true;
                                              if (SendSMSOTPCall.status(
                                                    (_model.otpResponseByPreReg
                                                            ?.jsonBody ??
                                                        ''),
                                                  ) ==
                                                  200) {
                                                context.pushNamed(
                                                  'otpCodePage',
                                                  queryParameters: {
                                                    'destination':
                                                        serializeParam(
                                                      '${_model.countryCodeDropdownValue}${_model.mobileNumberTextfieldController.text}',
                                                      ParamType.String,
                                                    ),
                                                    'uid': serializeParam(
                                                      SendSMSOTPCall.uid(
                                                        (_model.otpResponseByPreReg
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      ParamType.String,
                                                    ),
                                                    'accessToken':
                                                        serializeParam(
                                                      GettingTheAccessTokenCall
                                                          .accessToken(
                                                        (_model.accessTokenResponseByPreReg
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      ParamType.String,
                                                    ),
                                                    'isSMSOTP': serializeParam(
                                                      _model.isSMSOTP,
                                                      ParamType.bool,
                                                    ),
                                                    'goToPage': serializeParam(
                                                      'signup',
                                                      ParamType.String,
                                                    ),
                                                    'isTestUser':
                                                        serializeParam(
                                                      _model
                                                          .preregisteredUserDocumentBySMS
                                                          ?.testUser,
                                                      ParamType.bool,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      SendSMSOTPCall.message(
                                                        (_model.otpResponseBySMS
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                    duration: const Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .error,
                                                  ),
                                                );
                                              }

                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                              return;
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'The phone number entered is not yet registered. Please contact your admin.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLargeFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .error,
                                                ),
                                              );
                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                              return;
                                            }
                                          }

                                          if (shouldSetState) setState(() {});
                                        },
                                        text: 'Verify mobile number',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          } else {
                            return Visibility(
                              visible: !_model.isSMSOTP,
                              child: Form(
                                key: _model.formKey2,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 0.0),
                                        child: TextFormField(
                                          controller: _model
                                              .emailAddressTextfieldController,
                                          focusNode: _model
                                              .emailAddressTextfieldFocusNode,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Delegate email address',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .textDark64,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .destructive,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .destructive,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                          minLines: null,
                                          validator: _model
                                              .emailAddressTextfieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  _model.isSMSOTP = true;
                                                });
                                              },
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'I prefer to receive OTP via ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: 'phone number',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          var shouldSetState = false;
                                          // validateMobileNumberForm
                                          if (_model.formKey2.currentState ==
                                                  null ||
                                              !_model.formKey2.currentState!
                                                  .validate()) {
                                            return;
                                          }
                                          _model.userDocumentByEmail =
                                              await queryUsersRecordOnce(
                                            queryBuilder: (usersRecord) =>
                                                usersRecord.where(
                                              'work_email',
                                              isEqualTo: _model
                                                  .emailAddressTextfieldController
                                                  .text,
                                            ),
                                            singleRecord: true,
                                          ).then((s) => s.firstOrNull);
                                          shouldSetState = true;
                                          if (_model.userDocumentByEmail !=
                                              null) {
                                            _model.accessTokenResponseByEmail =
                                                await GettingTheAccessTokenCall
                                                    .call(
                                              scope: 'api/email',
                                            );
                                            shouldSetState = true;
                                            _model.emailOtpResponse =
                                                await SendEmailOTPCall.call(
                                              accessToken:
                                                  GettingTheAccessTokenCall
                                                      .accessToken(
                                                (_model.accessTokenResponseByEmail
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              destination: _model
                                                  .emailAddressTextfieldController
                                                  .text,
                                            );
                                            shouldSetState = true;
                                            if (SendEmailOTPCall.status(
                                                  (_model.emailOtpResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                200) {
                                              context.pushNamed(
                                                'otpCodePage',
                                                queryParameters: {
                                                  'destination': serializeParam(
                                                    _model
                                                        .emailAddressTextfieldController
                                                        .text,
                                                    ParamType.String,
                                                  ),
                                                  'accessToken': serializeParam(
                                                    GettingTheAccessTokenCall
                                                        .accessToken(
                                                      (_model.accessTokenResponseByEmail
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    ParamType.String,
                                                  ),
                                                  'isSMSOTP': serializeParam(
                                                    _model.isSMSOTP,
                                                    ParamType.bool,
                                                  ),
                                                  'goToPage': serializeParam(
                                                    'dashboard',
                                                    ParamType.String,
                                                  ),
                                                  'isTestUser': serializeParam(
                                                    _model.userDocumentByEmail
                                                        ?.testUser,
                                                    ParamType.bool,
                                                  ),
                                                  'uid': serializeParam(
                                                    null,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    SendEmailOTPCall.message(
                                                      (_model.emailOtpResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    )!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLargeFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .error,
                                                ),
                                              );
                                            }

                                            if (shouldSetState) {
                                              setState(() {});
                                            }
                                            return;
                                          } else {
                                            _model.preUserDocumentByEmail =
                                                await queryPreregisteredUsersRecordOnce(
                                              queryBuilder:
                                                  (preregisteredUsersRecord) =>
                                                      preregisteredUsersRecord
                                                          .where(
                                                'work_email',
                                                isEqualTo: _model
                                                    .emailAddressTextfieldController
                                                    .text,
                                              ),
                                              singleRecord: true,
                                            ).then((s) => s.firstOrNull);
                                            shouldSetState = true;
                                            if (_model.preUserDocumentByEmail !=
                                                null) {
                                              _model.accessTokenResponseByEmail1 =
                                                  await GettingTheAccessTokenCall
                                                      .call(
                                                scope: 'api/email',
                                              );
                                              shouldSetState = true;
                                              _model.emailOtpResponse1 =
                                                  await SendEmailOTPCall.call(
                                                accessToken:
                                                    GettingTheAccessTokenCall
                                                        .accessToken(
                                                  (_model.accessTokenResponseByEmail1
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                destination: _model
                                                    .emailAddressTextfieldController
                                                    .text,
                                              );
                                              shouldSetState = true;
                                              if (SendEmailOTPCall.status(
                                                    (_model.emailOtpResponse1
                                                            ?.jsonBody ??
                                                        ''),
                                                  ) ==
                                                  200) {
                                                context.pushNamed(
                                                  'otpCodePage',
                                                  queryParameters: {
                                                    'destination':
                                                        serializeParam(
                                                      _model
                                                          .emailAddressTextfieldController
                                                          .text,
                                                      ParamType.String,
                                                    ),
                                                    'accessToken':
                                                        serializeParam(
                                                      GettingTheAccessTokenCall
                                                          .accessToken(
                                                        (_model.accessTokenResponseByEmail1
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      ParamType.String,
                                                    ),
                                                    'isSMSOTP': serializeParam(
                                                      _model.isSMSOTP,
                                                      ParamType.bool,
                                                    ),
                                                    'goToPage': serializeParam(
                                                      'signup',
                                                      ParamType.String,
                                                    ),
                                                    'isTestUser':
                                                        serializeParam(
                                                      _model
                                                          .preUserDocumentByEmail
                                                          ?.testUser,
                                                      ParamType.bool,
                                                    ),
                                                    'uid': serializeParam(
                                                      null,
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      SendEmailOTPCall.message(
                                                        (_model.emailOtpResponse1
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                    duration: const Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .error,
                                                  ),
                                                );
                                              }

                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                              return;
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'The email address entered is not yet registered. Please contact your admin.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLargeFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  duration: const Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .error,
                                                ),
                                              );
                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                              return;
                                            }
                                          }

                                          if (shouldSetState) setState(() {});
                                        },
                                        text: 'Verify email address',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    ].addToEnd(const SizedBox(height: 80.0)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
