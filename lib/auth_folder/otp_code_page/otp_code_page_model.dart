import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/otp_code_lc_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'otp_code_page_widget.dart' show OtpCodePageWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class OtpCodePageModel extends FlutterFlowModel<OtpCodePageWidget> {
  ///  Local state fields for this page.

  bool isOTPCodeExpired = false;

  String? uid;

  String? accessToken;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for otpCode_lc component.
  late OtpCodeLcModel otpCodeLcModel;
  // Stores action output result for [Backend Call - API (Getting the access token)] action in Text widget.
  ApiCallResponse? accessTokenResponseSMS;
  // Stores action output result for [Backend Call - API (Send an OTP)] action in Text widget.
  ApiCallResponse? smsOTPResponse;
  // Stores action output result for [Backend Call - API (Getting the access token)] action in Text widget.
  ApiCallResponse? accessTokenResponseEmail;
  // Stores action output result for [Backend Call - API (Send an OTP)] action in Text widget.
  ApiCallResponse? emailOTPResponse;
  // State field(s) for Timer widget.
  int timerMilliseconds = 120000;
  String timerValue = StopWatchTimer.getDisplayTime(
    120000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Custom Action - getStringLength] action in Button widget.
  int? textLength;
  // Stores action output result for [Backend Call - API (Verify the SMS OTP)] action in Button widget.
  ApiCallResponse? verifySMSOTResponse;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? queryResponsUserDocumentBySMS;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? queryResponseUserDocumentByEmail;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? userDocumentBySMSTest;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? userDocumentByEmailTest;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    otpCodeLcModel = createModel(context, () => OtpCodeLcModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    otpCodeLcModel.dispose();
    timerController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
