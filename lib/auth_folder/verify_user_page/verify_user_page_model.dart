import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'verify_user_page_widget.dart' show VerifyUserPageWidget;
import 'package:flutter/material.dart';

class VerifyUserPageModel extends FlutterFlowModel<VerifyUserPageWidget> {
  ///  Local state fields for this page.

  bool isSMSOTP = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for countryCodeDropdown widget.
  String? countryCodeDropdownValue;
  FormFieldController<String>? countryCodeDropdownValueController;
  // State field(s) for mobileNumberTextfield widget.
  FocusNode? mobileNumberTextfieldFocusNode;
  TextEditingController? mobileNumberTextfieldController;
  String? Function(BuildContext, String?)?
      mobileNumberTextfieldControllerValidator;
  String? _mobileNumberTextfieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required';
    }

    if (val.length < 10) {
      return ' Please enter valid phone number';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in verifyMobileNumberButton widget.
  UsersRecord? userDocumentBySMS;
  // Stores action output result for [Backend Call - API (Getting the access token)] action in verifyMobileNumberButton widget.
  ApiCallResponse? accessTokenResponseBySMS;
  // Stores action output result for [Backend Call - API (Send an OTP)] action in verifyMobileNumberButton widget.
  ApiCallResponse? otpResponseBySMS;
  // Stores action output result for [Firestore Query - Query a collection] action in verifyMobileNumberButton widget.
  PreregisteredUsersRecord? preregisteredUserDocumentBySMS;
  // Stores action output result for [Backend Call - API (Getting the access token)] action in verifyMobileNumberButton widget.
  ApiCallResponse? accessTokenResponseByPreReg;
  // Stores action output result for [Backend Call - API (Send an OTP)] action in verifyMobileNumberButton widget.
  ApiCallResponse? otpResponseByPreReg;
  // State field(s) for emailAddressTextfield widget.
  FocusNode? emailAddressTextfieldFocusNode;
  TextEditingController? emailAddressTextfieldController;
  String? Function(BuildContext, String?)?
      emailAddressTextfieldControllerValidator;
  String? _emailAddressTextfieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required';
    }

    if (val.length < 10) {
      return ' Please enter valid phone number';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in verifyEmailAddressButton widget.
  UsersRecord? userDocumentByEmail;
  // Stores action output result for [Backend Call - API (Getting the access token)] action in verifyEmailAddressButton widget.
  ApiCallResponse? accessTokenResponseByEmail;
  // Stores action output result for [Backend Call - API (Send an OTP)] action in verifyEmailAddressButton widget.
  ApiCallResponse? emailOtpResponse;
  // Stores action output result for [Firestore Query - Query a collection] action in verifyEmailAddressButton widget.
  PreregisteredUsersRecord? preUserDocumentByEmail;
  // Stores action output result for [Backend Call - API (Getting the access token)] action in verifyEmailAddressButton widget.
  ApiCallResponse? accessTokenResponseByEmail1;
  // Stores action output result for [Backend Call - API (Send an OTP)] action in verifyEmailAddressButton widget.
  ApiCallResponse? emailOtpResponse1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mobileNumberTextfieldControllerValidator =
        _mobileNumberTextfieldControllerValidator;
    emailAddressTextfieldControllerValidator =
        _emailAddressTextfieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileNumberTextfieldFocusNode?.dispose();
    mobileNumberTextfieldController?.dispose();

    emailAddressTextfieldFocusNode?.dispose();
    emailAddressTextfieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
