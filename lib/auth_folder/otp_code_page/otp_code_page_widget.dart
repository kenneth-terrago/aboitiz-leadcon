import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/otp_code_lc_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'otp_code_page_model.dart';
export 'otp_code_page_model.dart';

class OtpCodePageWidget extends StatefulWidget {
  const OtpCodePageWidget({
    super.key,
    required this.destination,
    this.uid,
    required this.accessToken,
    required this.isSMSOTP,
    required this.goToPage,
    bool? isTestUser,
  }) : isTestUser = isTestUser ?? false;

  final String? destination;
  final String? uid;
  final String? accessToken;
  final bool? isSMSOTP;
  final String? goToPage;
  final bool isTestUser;

  @override
  State<OtpCodePageWidget> createState() => _OtpCodePageWidgetState();
}

class _OtpCodePageWidgetState extends State<OtpCodePageWidget> {
  late OtpCodePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpCodePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.uid = widget.uid;
        _model.accessToken = widget.accessToken;
      });
      _model.timerController.onStartTimer();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 54.0,
              icon: Icon(
                Icons.arrow_back_outlined,
                color: FlutterFlowTheme.of(context).primary,
                size: 24.0,
              ),
              onPressed: () async {
                context.goNamed(
                  'verifyUserPage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.leftToRight,
                    ),
                  },
                );
              },
            ),
            title: Text(
              'Verify mobile number',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Inter',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 16.0,
                  ),
            ),
            actions: const [],
            centerTitle: true,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 640.0,
                  ),
                  decoration: const BoxDecoration(),
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Enter the 6-digit code sent to',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              40.0, 4.0, 40.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  widget.destination,
                                  '900 000 0000',
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.otpCodeLcModel,
                            updateCallback: () => setState(() {}),
                            child: const OtpCodeLcWidget(),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Did not receive code? ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.normal,
                                        ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                var shouldSetState = false;
                                if (_model.timerMilliseconds == 0) {
                                  if (widget.isSMSOTP!) {
                                    _model.accessTokenResponseSMS =
                                        await GettingTheAccessTokenCall.call(
                                      scope: 'api/sms',
                                    );
                                    shouldSetState = true;
                                    if ((_model.accessTokenResponseSMS
                                            ?.succeeded ??
                                        true)) {
                                      setState(() {
                                        _model.accessToken =
                                            GettingTheAccessTokenCall
                                                .accessToken(
                                          (_model.accessTokenResponseSMS
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                      });
                                      _model.smsOTPResponse =
                                          await SendSMSOTPCall.call(
                                        destination: widget.destination,
                                        accessToken: GettingTheAccessTokenCall
                                            .accessToken(
                                          (_model.accessTokenResponseSMS
                                                  ?.jsonBody ??
                                              ''),
                                        ),
                                      );
                                      shouldSetState = true;
                                      if (SendSMSOTPCall.status(
                                            (_model.smsOTPResponse?.jsonBody ??
                                                ''),
                                          ) ==
                                          200) {
                                        setState(() {
                                          _model.uid = SendSMSOTPCall.uid(
                                            (_model.smsOTPResponse?.jsonBody ??
                                                ''),
                                          );
                                        });
                                        setState(() {
                                          _model
                                              .otpCodeLcModel.pinCodeController
                                              ?.clear();
                                        });
                                        _model.timerController.onStopTimer();
                                        _model.timerController.onResetTimer();

                                        _model.timerController.onStartTimer();
                                        if (shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              SendSMSOTPCall.message(
                                                (_model.smsOTPResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        );
                                        if (shouldSetState) setState(() {});
                                        return;
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Something went wrong',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                        ),
                                      );
                                      if (shouldSetState) setState(() {});
                                      return;
                                    }
                                  } else {
                                    _model.accessTokenResponseEmail =
                                        await GettingTheAccessTokenCall.call(
                                      scope: 'api/email',
                                    );
                                    shouldSetState = true;
                                    if ((_model.accessTokenResponseEmail
                                            ?.succeeded ??
                                        true)) {
                                      setState(() {
                                        _model.accessToken =
                                            GettingTheAccessTokenCall
                                                .accessToken(
                                          (_model.accessTokenResponseEmail
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                      });
                                      _model.emailOTPResponse =
                                          await SendSMSOTPCall.call(
                                        destination: widget.destination,
                                        accessToken: GettingTheAccessTokenCall
                                            .accessToken(
                                          (_model.accessTokenResponseEmail
                                                  ?.jsonBody ??
                                              ''),
                                        ),
                                      );
                                      shouldSetState = true;
                                      if (SendSMSOTPCall.status(
                                            (_model.emailOTPResponse
                                                    ?.jsonBody ??
                                                ''),
                                          ) ==
                                          200) {
                                        setState(() {
                                          _model.uid = SendSMSOTPCall.uid(
                                            (_model.emailOTPResponse
                                                    ?.jsonBody ??
                                                ''),
                                          );
                                        });
                                        setState(() {
                                          _model
                                              .otpCodeLcModel.pinCodeController
                                              ?.clear();
                                        });
                                        _model.timerController.onStopTimer();
                                        _model.timerController.onResetTimer();

                                        _model.timerController.onStartTimer();
                                        if (shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              SendSMSOTPCall.message(
                                                (_model.emailOTPResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        );
                                        if (shouldSetState) setState(() {});
                                        return;
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Something went wrong',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                        ),
                                      );
                                      if (shouldSetState) setState(() {});
                                      return;
                                    }
                                  }
                                } else {
                                  if (shouldSetState) setState(() {});
                                  return;
                                }

                                if (shouldSetState) setState(() {});
                              },
                              child: Text(
                                'RESEND',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'in ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.normal,
                                        ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            FlutterFlowTimer(
                              initialTime: _model.timerMilliseconds,
                              getDisplayTime: (value) =>
                                  StopWatchTimer.getDisplayTime(
                                value,
                                hours: false,
                                milliSecond: false,
                              ),
                              controller: _model.timerController,
                              updateStateInterval: const Duration(milliseconds: 1000),
                              onChanged: (value, displayTime, shouldUpdate) {
                                _model.timerMilliseconds = value;
                                _model.timerValue = displayTime;
                                if (shouldUpdate) setState(() {});
                              },
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 40.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              var shouldSetState = false;
                              _model.textLength = actions.getStringLength(
                                _model.otpCodeLcModel.pinCodeController!.text,
                              );
                              shouldSetState = true;
                              if (_model.textLength! < 6) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Invalid OTP Code',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).warning,
                                  ),
                                );
                                if (shouldSetState) setState(() {});
                                return;
                              } else {
                                if (_model.timerMilliseconds == 0) {
                                  if (shouldSetState) setState(() {});
                                  return;
                                }

                                if ((widget.isTestUser == false) ||
                                    (widget.isTestUser == null)) {
                                  if (widget.isSMSOTP!) {
                                    _model.verifySMSOTPResponse =
                                        await VerifyTheSMSOTPCall.call(
                                      uid: widget.uid,
                                      code: _model.otpCodeLcModel
                                          .pinCodeController!.text,
                                      accessToken: widget.accessToken,
                                    );
                                    shouldSetState = true;
                                    if ((_model
                                            .verifySMSOTPResponse?.succeeded ??
                                        true)) {
                                      if (VerifyTheSMSOTPCall.status(
                                            (_model.verifySMSOTPResponse
                                                    ?.jsonBody ??
                                                ''),
                                          ) ==
                                          'VERIFIED') {
                                        if (widget.goToPage == 'signup') {
                                          context.goNamed(
                                            'checkingInfoPage',
                                            queryParameters: {
                                              'destination': serializeParam(
                                                widget.destination,
                                                ParamType.String,
                                              ),
                                              'isSMSOTP': serializeParam(
                                                widget.isSMSOTP,
                                                ParamType.bool,
                                              ),
                                            }.withoutNulls,
                                          );

                                          if (shouldSetState) setState(() {});
                                          return;
                                        } else {
                                          if (widget.goToPage == 'dashboard') {
                                            _model.queryResponsUserDocumentBySMS =
                                                await queryUsersRecordOnce(
                                              queryBuilder: (usersRecord) =>
                                                  usersRecord.where(
                                                'phone_number',
                                                isEqualTo: widget.destination,
                                              ),
                                              singleRecord: true,
                                            ).then((s) => s.firstOrNull);
                                            shouldSetState = true;
                                            setState(() {
                                              FFAppState().isAuthenticated =
                                                  true;
                                              FFAppState().authenticatedUser =
                                                  _model
                                                      .queryResponsUserDocumentBySMS
                                                      ?.reference;
                                            });

                                            context.goNamed('dashboardHome');

                                            if (shouldSetState) {
                                              setState(() {});
                                            }
                                            return;
                                          } else {
                                            if (shouldSetState) {
                                              setState(() {});
                                            }
                                            return;
                                          }
                                        }
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              VerifyTheSMSOTPCall.message(
                                                (_model.verifySMSOTPResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        );
                                        if (shouldSetState) setState(() {});
                                        return;
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            VerifyTheSMSOTPCall.message(
                                              (_model.verifySMSOTPResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                        ),
                                      );
                                      if (shouldSetState) setState(() {});
                                      return;
                                    }
                                  } else {
                                    _model.verifyEmailOTPResponse =
                                        await VerifyEmailOTPCall.call(
                                      accessToken: widget.accessToken,
                                      otp: _model.otpCodeLcModel
                                          .pinCodeController!.text,
                                      destination: widget.destination,
                                    );
                                    shouldSetState = true;
                                    if ((_model.verifyEmailOTPResponse
                                            ?.succeeded ??
                                        true)) {
                                      if (widget.goToPage == 'signup') {
                                        context.goNamed(
                                          'checkingInfoPage',
                                          queryParameters: {
                                            'destination': serializeParam(
                                              widget.destination,
                                              ParamType.String,
                                            ),
                                            'isSMSOTP': serializeParam(
                                              widget.isSMSOTP,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );

                                        if (shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        if (widget.goToPage == 'dashboard') {
                                          _model.queryResponseUserDocumentByEmail =
                                              await queryUsersRecordOnce(
                                            queryBuilder: (usersRecord) =>
                                                usersRecord.where(
                                              'work_email',
                                              isEqualTo: widget.destination,
                                            ),
                                            singleRecord: true,
                                          ).then((s) => s.firstOrNull);
                                          shouldSetState = true;
                                          setState(() {
                                            FFAppState().isAuthenticated = true;
                                            FFAppState().authenticatedUser = _model
                                                .queryResponseUserDocumentByEmail
                                                ?.reference;
                                          });

                                          context.goNamed('dashboardHome');

                                          if (shouldSetState) setState(() {});
                                          return;
                                        } else {
                                          if (shouldSetState) setState(() {});
                                          return;
                                        }
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            VerifyEmailOTPCall.message(
                                              (_model.verifyEmailOTPResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                        ),
                                      );
                                      if (shouldSetState) setState(() {});
                                      return;
                                    }
                                  }
                                } else {
                                  if (widget.goToPage == 'signup') {
                                    context.goNamed(
                                      'checkingInfoPage',
                                      queryParameters: {
                                        'destination': serializeParam(
                                          widget.destination,
                                          ParamType.String,
                                        ),
                                        'isSMSOTP': serializeParam(
                                          widget.isSMSOTP,
                                          ParamType.bool,
                                        ),
                                      }.withoutNulls,
                                    );

                                    if (shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    if (widget.goToPage == 'dashboard') {
                                      if (widget.isSMSOTP!) {
                                        _model.userDocumentBySMSTest =
                                            await queryUsersRecordOnce(
                                          queryBuilder: (usersRecord) =>
                                              usersRecord.where(
                                            'phone_number',
                                            isEqualTo: widget.destination,
                                          ),
                                          singleRecord: true,
                                        ).then((s) => s.firstOrNull);
                                        shouldSetState = true;
                                        setState(() {
                                          FFAppState().isAuthenticated = true;
                                          FFAppState().authenticatedUser =
                                              _model.userDocumentBySMSTest
                                                  ?.reference;
                                        });

                                        context.goNamed('dashboardHome');

                                        if (shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        _model.userDocumentByEmailTest =
                                            await queryUsersRecordOnce(
                                          queryBuilder: (usersRecord) =>
                                              usersRecord.where(
                                            'work_email',
                                            isEqualTo: widget.destination,
                                          ),
                                          singleRecord: true,
                                        ).then((s) => s.firstOrNull);
                                        shouldSetState = true;
                                        setState(() {
                                          FFAppState().isAuthenticated = true;
                                          FFAppState().authenticatedUser =
                                              _model.userDocumentByEmailTest
                                                  ?.reference;
                                        });

                                        context.goNamed('dashboardHome');

                                        if (shouldSetState) setState(() {});
                                        return;
                                      }
                                    } else {
                                      if (shouldSetState) setState(() {});
                                      return;
                                    }
                                  }
                                }
                              }

                              if (shouldSetState) setState(() {});
                            },
                            text: 'Continue',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                      ],
                    ),
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
