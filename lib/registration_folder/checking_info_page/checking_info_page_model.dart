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
  // State field(s) for fullNameTextField widget.
  FocusNode? fullNameTextFieldFocusNode1;
  TextEditingController? fullNameTextFieldController1;
  String? Function(BuildContext, String?)?
      fullNameTextFieldController1Validator;
  String? _fullNameTextFieldController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[a-zA-Z]+(([\',. -][a-zA-Z ])?[a-zA-Z]*)*\$').hasMatch(val)) {
      return 'Please input your name';
    }
    return null;
  }

  // State field(s) for mobileNumberTextField widget.
  FocusNode? mobileNumberTextFieldFocusNode1;
  TextEditingController? mobileNumberTextFieldController1;
  String? Function(BuildContext, String?)?
      mobileNumberTextFieldController1Validator;
  String? _mobileNumberTextFieldController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(\\+\\d{1,3}[- ]?)?\\d{10}\$').hasMatch(val)) {
      return 'Please enter valid phone number';
    }
    return null;
  }

  // State field(s) for workEmailTextField widget.
  FocusNode? workEmailTextFieldFocusNode1;
  TextEditingController? workEmailTextFieldController1;
  String? Function(BuildContext, String?)?
      workEmailTextFieldController1Validator;
  String? _workEmailTextFieldController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please input valid email address';
    }
    return null;
  }

  // State field(s) for positionTitleTextField widget.
  FocusNode? positionTitleTextFieldFocusNode1;
  TextEditingController? positionTitleTextFieldController1;
  String? Function(BuildContext, String?)?
      positionTitleTextFieldController1Validator;
  String? _positionTitleTextFieldController1Validator(
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
  // State field(s) for tcCheckbox widget.
  bool? tcCheckboxValue1;
  // Stores action output result for [Backend Call - Create Document] action in signupButtonBySMS widget.
  UsersRecord? createdUserBySMS;
  // State field(s) for fullNameTextField widget.
  FocusNode? fullNameTextFieldFocusNode2;
  TextEditingController? fullNameTextFieldController2;
  String? Function(BuildContext, String?)?
      fullNameTextFieldController2Validator;
  // State field(s) for mobileNumberTextField widget.
  FocusNode? mobileNumberTextFieldFocusNode2;
  TextEditingController? mobileNumberTextFieldController2;
  String? Function(BuildContext, String?)?
      mobileNumberTextFieldController2Validator;
  // State field(s) for workEmailTextField widget.
  FocusNode? workEmailTextFieldFocusNode2;
  TextEditingController? workEmailTextFieldController2;
  String? Function(BuildContext, String?)?
      workEmailTextFieldController2Validator;
  // State field(s) for positionTitleTextField widget.
  FocusNode? positionTitleTextFieldFocusNode2;
  TextEditingController? positionTitleTextFieldController2;
  String? Function(BuildContext, String?)?
      positionTitleTextFieldController2Validator;
  // State field(s) for strategicBusinessUnitDropdown widget.
  String? strategicBusinessUnitDropdownValue;
  FormFieldController<String>? strategicBusinessUnitDropdownValueController;
  // State field(s) for businessUnitDropdown widget.
  String? businessUnitDropdownValue;
  FormFieldController<String>? businessUnitDropdownValueController;
  // State field(s) for corporateServiceUnitDropdown widget.
  String? corporateServiceUnitDropdownValue;
  FormFieldController<String>? corporateServiceUnitDropdownValueController;
  // State field(s) for levelDropdown widget.
  String? levelDropdownValue;
  FormFieldController<String>? levelDropdownValueController;
  // State field(s) for tcCheckbox widget.
  bool? tcCheckboxValue2;
  // Stores action output result for [Backend Call - Create Document] action in SignUpButtoByEmail widget.
  UsersRecord? createdUserByEmail;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    fullNameTextFieldController1Validator =
        _fullNameTextFieldController1Validator;
    mobileNumberTextFieldController1Validator =
        _mobileNumberTextFieldController1Validator;
    workEmailTextFieldController1Validator =
        _workEmailTextFieldController1Validator;
    positionTitleTextFieldController1Validator =
        _positionTitleTextFieldController1Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameTextFieldFocusNode1?.dispose();
    fullNameTextFieldController1?.dispose();

    mobileNumberTextFieldFocusNode1?.dispose();
    mobileNumberTextFieldController1?.dispose();

    workEmailTextFieldFocusNode1?.dispose();
    workEmailTextFieldController1?.dispose();

    positionTitleTextFieldFocusNode1?.dispose();
    positionTitleTextFieldController1?.dispose();

    fullNameTextFieldFocusNode2?.dispose();
    fullNameTextFieldController2?.dispose();

    mobileNumberTextFieldFocusNode2?.dispose();
    mobileNumberTextFieldController2?.dispose();

    workEmailTextFieldFocusNode2?.dispose();
    workEmailTextFieldController2?.dispose();

    positionTitleTextFieldFocusNode2?.dispose();
    positionTitleTextFieldController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
