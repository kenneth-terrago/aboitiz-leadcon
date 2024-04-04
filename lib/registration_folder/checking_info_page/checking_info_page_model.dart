import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'checking_info_page_widget.dart' show CheckingInfoPageWidget;
import 'package:flutter/material.dart';

class CheckingInfoPageModel extends FlutterFlowModel<CheckingInfoPageWidget> {
  ///  Local state fields for this page.

  List<String> strategicBusinessUnitItems = ['SBU1', 'SBU2', 'SBU3', 'SBU4'];
  void addToStrategicBusinessUnitItems(String item) =>
      strategicBusinessUnitItems.add(item);
  void removeFromStrategicBusinessUnitItems(String item) =>
      strategicBusinessUnitItems.remove(item);
  void removeAtIndexFromStrategicBusinessUnitItems(int index) =>
      strategicBusinessUnitItems.removeAt(index);
  void insertAtIndexInStrategicBusinessUnitItems(int index, String item) =>
      strategicBusinessUnitItems.insert(index, item);
  void updateStrategicBusinessUnitItemsAtIndex(
          int index, Function(String) updateFn) =>
      strategicBusinessUnitItems[index] =
          updateFn(strategicBusinessUnitItems[index]);

  List<String> businessUnitItems = ['BU1', 'BU2', 'BU3', 'BU4'];
  void addToBusinessUnitItems(String item) => businessUnitItems.add(item);
  void removeFromBusinessUnitItems(String item) =>
      businessUnitItems.remove(item);
  void removeAtIndexFromBusinessUnitItems(int index) =>
      businessUnitItems.removeAt(index);
  void insertAtIndexInBusinessUnitItems(int index, String item) =>
      businessUnitItems.insert(index, item);
  void updateBusinessUnitItemsAtIndex(int index, Function(String) updateFn) =>
      businessUnitItems[index] = updateFn(businessUnitItems[index]);

  List<String> corporateServiceUnitItems = ['CSU1', 'CSU2', 'CSU3', 'CSU4'];
  void addToCorporateServiceUnitItems(String item) =>
      corporateServiceUnitItems.add(item);
  void removeFromCorporateServiceUnitItems(String item) =>
      corporateServiceUnitItems.remove(item);
  void removeAtIndexFromCorporateServiceUnitItems(int index) =>
      corporateServiceUnitItems.removeAt(index);
  void insertAtIndexInCorporateServiceUnitItems(int index, String item) =>
      corporateServiceUnitItems.insert(index, item);
  void updateCorporateServiceUnitItemsAtIndex(
          int index, Function(String) updateFn) =>
      corporateServiceUnitItems[index] =
          updateFn(corporateServiceUnitItems[index]);

  List<String> levelItems = ['Junior', 'Senior', 'Executive', 'Director'];
  void addToLevelItems(String item) => levelItems.add(item);
  void removeFromLevelItems(String item) => levelItems.remove(item);
  void removeAtIndexFromLevelItems(int index) => levelItems.removeAt(index);
  void insertAtIndexInLevelItems(int index, String item) =>
      levelItems.insert(index, item);
  void updateLevelItemsAtIndex(int index, Function(String) updateFn) =>
      levelItems[index] = updateFn(levelItems[index]);

  bool tcCheckbox = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for fullNameTextFieldSMS widget.
  FocusNode? fullNameTextFieldSMSFocusNode;
  TextEditingController? fullNameTextFieldSMSController;
  String? Function(BuildContext, String?)?
      fullNameTextFieldSMSControllerValidator;
  String? _fullNameTextFieldSMSControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[a-zA-Z]+(([\',. -][a-zA-Z ])?[a-zA-Z]*)*\$').hasMatch(val)) {
      return 'Please input your name';
    }
    return null;
  }

  // State field(s) for mobileNumberTextFieldSMS widget.
  FocusNode? mobileNumberTextFieldSMSFocusNode;
  TextEditingController? mobileNumberTextFieldSMSController;
  String? Function(BuildContext, String?)?
      mobileNumberTextFieldSMSControllerValidator;
  String? _mobileNumberTextFieldSMSControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(\\+\\d{1,3}[- ]?)?\\d{10}\$').hasMatch(val)) {
      return 'Please enter valid phone number';
    }
    return null;
  }

  // State field(s) for workEmailTextFieldSMS widget.
  FocusNode? workEmailTextFieldSMSFocusNode;
  TextEditingController? workEmailTextFieldSMSController;
  String? Function(BuildContext, String?)?
      workEmailTextFieldSMSControllerValidator;
  String? _workEmailTextFieldSMSControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please input valid email address';
    }
    return null;
  }

  // State field(s) for positionTitleTextFieldSMS widget.
  FocusNode? positionTitleTextFieldSMSFocusNode;
  TextEditingController? positionTitleTextFieldSMSController;
  String? Function(BuildContext, String?)?
      positionTitleTextFieldSMSControllerValidator;
  String? _positionTitleTextFieldSMSControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for strategicBusinessUnitDropdownSMS widget.
  String? strategicBusinessUnitDropdownSMSValue;
  FormFieldController<String>? strategicBusinessUnitDropdownSMSValueController;
  // State field(s) for businessUnitDropdownSMS widget.
  String? businessUnitDropdownSMSValue;
  FormFieldController<String>? businessUnitDropdownSMSValueController;
  // State field(s) for corporateServiceUnitDropdownSMS widget.
  String? corporateServiceUnitDropdownSMSValue;
  FormFieldController<String>? corporateServiceUnitDropdownSMSValueController;
  // State field(s) for levelDropdownSMS widget.
  String? levelDropdownSMSValue;
  FormFieldController<String>? levelDropdownSMSValueController;
  // State field(s) for tcCheckboxSMS widget.
  bool? tcCheckboxSMSValue;
  // Stores action output result for [Backend Call - Create Document] action in signupButtonBySMS widget.
  UsersRecord? createdUserBySMS;
  // State field(s) for fullNameTextFieldEmail widget.
  FocusNode? fullNameTextFieldEmailFocusNode;
  TextEditingController? fullNameTextFieldEmailController;
  String? Function(BuildContext, String?)?
      fullNameTextFieldEmailControllerValidator;
  // State field(s) for mobileNumberTextFieldEmail widget.
  FocusNode? mobileNumberTextFieldEmailFocusNode;
  TextEditingController? mobileNumberTextFieldEmailController;
  String? Function(BuildContext, String?)?
      mobileNumberTextFieldEmailControllerValidator;
  // State field(s) for workEmailTextFieldEmail widget.
  FocusNode? workEmailTextFieldEmailFocusNode;
  TextEditingController? workEmailTextFieldEmailController;
  String? Function(BuildContext, String?)?
      workEmailTextFieldEmailControllerValidator;
  // State field(s) for positionTitleTextFieldEmail widget.
  FocusNode? positionTitleTextFieldEmailFocusNode;
  TextEditingController? positionTitleTextFieldEmailController;
  String? Function(BuildContext, String?)?
      positionTitleTextFieldEmailControllerValidator;
  // State field(s) for strategicBusinessUnitDropdownEmail widget.
  String? strategicBusinessUnitDropdownEmailValue;
  FormFieldController<String>?
      strategicBusinessUnitDropdownEmailValueController;
  // State field(s) for businessUnitDropdownEmail widget.
  String? businessUnitDropdownEmailValue;
  FormFieldController<String>? businessUnitDropdownEmailValueController;
  // State field(s) for corporateServiceUnitDropdownEmail widget.
  String? corporateServiceUnitDropdownEmailValue;
  FormFieldController<String>? corporateServiceUnitDropdownEmailValueController;
  // State field(s) for levelDropdownEmail widget.
  String? levelDropdownEmailValue;
  FormFieldController<String>? levelDropdownEmailValueController;
  // State field(s) for tcCheckboxEmail widget.
  bool? tcCheckboxEmailValue;
  // Stores action output result for [Backend Call - Create Document] action in SignUpButtoByEmail widget.
  UsersRecord? createdUserByEmail;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    fullNameTextFieldSMSControllerValidator =
        _fullNameTextFieldSMSControllerValidator;
    mobileNumberTextFieldSMSControllerValidator =
        _mobileNumberTextFieldSMSControllerValidator;
    workEmailTextFieldSMSControllerValidator =
        _workEmailTextFieldSMSControllerValidator;
    positionTitleTextFieldSMSControllerValidator =
        _positionTitleTextFieldSMSControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameTextFieldSMSFocusNode?.dispose();
    fullNameTextFieldSMSController?.dispose();

    mobileNumberTextFieldSMSFocusNode?.dispose();
    mobileNumberTextFieldSMSController?.dispose();

    workEmailTextFieldSMSFocusNode?.dispose();
    workEmailTextFieldSMSController?.dispose();

    positionTitleTextFieldSMSFocusNode?.dispose();
    positionTitleTextFieldSMSController?.dispose();

    fullNameTextFieldEmailFocusNode?.dispose();
    fullNameTextFieldEmailController?.dispose();

    mobileNumberTextFieldEmailFocusNode?.dispose();
    mobileNumberTextFieldEmailController?.dispose();

    workEmailTextFieldEmailFocusNode?.dispose();
    workEmailTextFieldEmailController?.dispose();

    positionTitleTextFieldEmailFocusNode?.dispose();
    positionTitleTextFieldEmailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
