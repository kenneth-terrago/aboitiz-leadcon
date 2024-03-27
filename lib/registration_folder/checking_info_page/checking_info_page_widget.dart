import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'checking_info_page_model.dart';
export 'checking_info_page_model.dart';

class CheckingInfoPageWidget extends StatefulWidget {
  const CheckingInfoPageWidget({
    super.key,
    required this.destination,
    required this.isSMSOTP,
  });

  final String? destination;
  final bool? isSMSOTP;

  @override
  State<CheckingInfoPageWidget> createState() => _CheckingInfoPageWidgetState();
}

class _CheckingInfoPageWidgetState extends State<CheckingInfoPageWidget> {
  late CheckingInfoPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckingInfoPageModel());

    _model.fullNameTextFieldFocusNode1 ??= FocusNode();

    _model.mobileNumberTextFieldFocusNode1 ??= FocusNode();

    _model.workEmailTextFieldFocusNode1 ??= FocusNode();

    _model.positionTitleTextFieldFocusNode1 ??= FocusNode();

    _model.fullNameTextFieldFocusNode2 ??= FocusNode();

    _model.mobileNumberTextFieldFocusNode2 ??= FocusNode();

    _model.workEmailTextFieldFocusNode2 ??= FocusNode();

    _model.positionTitleTextFieldFocusNode2 ??= FocusNode();
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
                context.goNamed('verifyUserPage');
              },
            ),
            title: Text(
              'Confirm delegate account',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Inter',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            actions: const [],
            centerTitle: true,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      constraints: const BoxConstraints(
                        maxWidth: 640.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Builder(
                              builder: (context) {
                                if (widget.isSMSOTP ?? false) {
                                  return StreamBuilder<
                                      List<PreregisteredUsersRecord>>(
                                    stream: queryPreregisteredUsersRecord(
                                      queryBuilder:
                                          (preregisteredUsersRecord) =>
                                              preregisteredUsersRecord.where(
                                        'phone_number',
                                        isEqualTo: widget.destination,
                                      ),
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<PreregisteredUsersRecord>
                                          userBySMSContainerPreregisteredUsersRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final userBySMSContainerPreregisteredUsersRecord =
                                          userBySMSContainerPreregisteredUsersRecordList
                                                  .isNotEmpty
                                              ? userBySMSContainerPreregisteredUsersRecordList
                                                  .first
                                              : null;
                                      return Container(
                                        decoration: const BoxDecoration(),
                                        child: Form(
                                          key: _model.formKey1,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .fullNameTextFieldController1 ??=
                                                      TextEditingController(
                                                    text:
                                                        userBySMSContainerPreregisteredUsersRecord
                                                            ?.displayName,
                                                  ),
                                                  focusNode: _model
                                                      .fullNameTextFieldFocusNode1,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Full name',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .gray200,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .fullNameTextFieldController1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .mobileNumberTextFieldController1 ??=
                                                      TextEditingController(
                                                    text:
                                                        userBySMSContainerPreregisteredUsersRecord
                                                            ?.phoneNumber,
                                                  ),
                                                  focusNode: _model
                                                      .mobileNumberTextFieldFocusNode1,
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Mobile number',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        '+63 900 000 0000',
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .gray200,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  keyboardType:
                                                      TextInputType.phone,
                                                  validator: _model
                                                      .mobileNumberTextFieldController1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .workEmailTextFieldController1 ??=
                                                      TextEditingController(
                                                    text:
                                                        userBySMSContainerPreregisteredUsersRecord
                                                            ?.workEmail,
                                                  ),
                                                  focusNode: _model
                                                      .workEmailTextFieldFocusNode1,
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Work email',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        'someone@example.com',
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .gray200,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  validator: _model
                                                      .workEmailTextFieldController1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .positionTitleTextFieldController1 ??=
                                                      TextEditingController(
                                                    text:
                                                        userBySMSContainerPreregisteredUsersRecord
                                                            ?.positionTitle,
                                                  ),
                                                  focusNode: _model
                                                      .positionTitleTextFieldFocusNode1,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Position title',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .gray200,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .positionTitleTextFieldController1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: StreamBuilder<
                                                    List<SbusRecord>>(
                                                  stream: querySbusRecord(
                                                    queryBuilder:
                                                        (sbusRecord) =>
                                                            sbusRecord
                                                                .orderBy('id'),
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
                                                    List<SbusRecord>
                                                        strategicBusinessUnitDropdownSMSSbusRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .strategicBusinessUnitDropdownSMSValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.strategicBusinessUnitDropdownSMSValue ??=
                                                            userBySMSContainerPreregisteredUsersRecord
                                                                ?.strategicBusinessUnit,
                                                      ),
                                                      options:
                                                          strategicBusinessUnitDropdownSMSSbusRecordList
                                                              .map((e) =>
                                                                  e.sbuName)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .strategicBusinessUnitDropdownSMSValue =
                                                              val),
                                                      width: 300.0,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      hintText:
                                                          'Select your Strategic Business Unit',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .gray200,
                                                      borderWidth: 1.0,
                                                      borderRadius: 6.0,
                                                      margin:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: StreamBuilder<
                                                    List<BusRecord>>(
                                                  stream: queryBusRecord(
                                                    queryBuilder: (busRecord) =>
                                                        busRecord.orderBy('id'),
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
                                                    List<BusRecord>
                                                        businessUnitDropdownSMSBusRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .businessUnitDropdownSMSValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.businessUnitDropdownSMSValue ??=
                                                            userBySMSContainerPreregisteredUsersRecord
                                                                ?.businessUnit,
                                                      ),
                                                      options:
                                                          businessUnitDropdownSMSBusRecordList
                                                              .map((e) => e.bu)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .businessUnitDropdownSMSValue =
                                                              val),
                                                      width: 300.0,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      hintText:
                                                          'Select your Business Unit',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .gray200,
                                                      borderWidth: 1.0,
                                                      borderRadius: 6.0,
                                                      margin:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: StreamBuilder<
                                                    List<CsusRecord>>(
                                                  stream: queryCsusRecord(
                                                    queryBuilder:
                                                        (csusRecord) =>
                                                            csusRecord
                                                                .orderBy('id'),
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
                                                    List<CsusRecord>
                                                        corporateServiceUnitDropdownSMSCsusRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .corporateServiceUnitDropdownSMSValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.corporateServiceUnitDropdownSMSValue ??=
                                                            userBySMSContainerPreregisteredUsersRecord
                                                                ?.corporateServiceUnit,
                                                      ),
                                                      options:
                                                          corporateServiceUnitDropdownSMSCsusRecordList
                                                              .map((e) => e.csu)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .corporateServiceUnitDropdownSMSValue =
                                                              val),
                                                      width: 300.0,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      hintText:
                                                          'Select your Corporate Service Unit',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .gray200,
                                                      borderWidth: 1.0,
                                                      borderRadius: 6.0,
                                                      margin:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: StreamBuilder<
                                                    List<LevelsRecord>>(
                                                  stream: queryLevelsRecord(
                                                    queryBuilder:
                                                        (levelsRecord) =>
                                                            levelsRecord
                                                                .orderBy('id'),
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
                                                    List<LevelsRecord>
                                                        levelDropdownSMSLevelsRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .levelDropdownSMSValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.levelDropdownSMSValue ??=
                                                            userBySMSContainerPreregisteredUsersRecord
                                                                ?.level,
                                                      ),
                                                      options:
                                                          levelDropdownSMSLevelsRecordList
                                                              .map((e) =>
                                                                  e.level)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .levelDropdownSMSValue =
                                                              val),
                                                      width: 300.0,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      hintText:
                                                          'Select your Level',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .gray200,
                                                      borderWidth: 1.0,
                                                      borderRadius: 6.0,
                                                      margin:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                              ),
                                              Container(
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child: Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                        .tcCheckboxValue1 ??=
                                                                    false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.tcCheckboxValue1 =
                                                                          newValue!);
                                                                  if (newValue!) {
                                                                    // tcToggleOn
                                                                    setState(
                                                                        () {
                                                                      _model.tcCheckbox =
                                                                          !_model
                                                                              .tcCheckbox;
                                                                    });
                                                                  } else {
                                                                    // tcToggleOff
                                                                    setState(
                                                                        () {
                                                                      _model.tcCheckbox =
                                                                          !_model
                                                                              .tcCheckbox;
                                                                    });
                                                                  }
                                                                },
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                checkColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: RichText(
                                                              textScaler:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        'I agree to the ',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'Terms and Conditions',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                    mouseCursor:
                                                                        SystemMouseCursors
                                                                            .click,
                                                                    recognizer:
                                                                        TapGestureRecognizer()
                                                                          ..onTap =
                                                                              () async {
                                                                            context.pushNamed('termsPage');
                                                                          },
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        ' of the Aboitiz LeadCon Navigator App',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  24.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          var shouldSetState =
                                                              false;
                                                          // onTapSignUp
                                                          if (_model.formKey1
                                                                      .currentState ==
                                                                  null ||
                                                              !_model.formKey1
                                                                  .currentState!
                                                                  .validate()) {
                                                            return;
                                                          }
                                                          if (_model
                                                                  .strategicBusinessUnitDropdownSMSValue ==
                                                              null) {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Please select strategic business unit',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                ),
                                                                duration: const Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                              ),
                                                            );
                                                            return;
                                                          }
                                                          if (_model
                                                                  .businessUnitDropdownSMSValue ==
                                                              null) {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Please select business unit',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                ),
                                                                duration: const Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                              ),
                                                            );
                                                            return;
                                                          }
                                                          if (_model
                                                                  .corporateServiceUnitDropdownSMSValue ==
                                                              null) {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Please select corporate service unit',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                ),
                                                                duration: const Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                              ),
                                                            );
                                                            return;
                                                          }
                                                          if (_model
                                                                  .levelDropdownSMSValue ==
                                                              null) {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Please select your level',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                ),
                                                                duration: const Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                              ),
                                                            );
                                                            return;
                                                          }
                                                          if (_model
                                                              .tcCheckboxValue1!) {
                                                            var usersRecordReference =
                                                                UsersRecord
                                                                    .collection
                                                                    .doc(random_data
                                                                        .randomString(
                                                              20,
                                                              20,
                                                              true,
                                                              true,
                                                              true,
                                                            ));
                                                            await usersRecordReference
                                                                .set(
                                                                    createUsersRecordData(
                                                              displayName: _model
                                                                  .fullNameTextFieldController1
                                                                  .text,
                                                              phoneNumber: _model
                                                                  .mobileNumberTextFieldController1
                                                                  .text,
                                                              workEmail: _model
                                                                  .workEmailTextFieldController1
                                                                  .text,
                                                              positionTitle: _model
                                                                  .positionTitleTextFieldController1
                                                                  .text,
                                                              uid: random_data
                                                                  .randomString(
                                                                20,
                                                                20,
                                                                true,
                                                                true,
                                                                true,
                                                              ),
                                                              createdTime:
                                                                  getCurrentTimestamp,
                                                              businessUnit: _model
                                                                  .businessUnitDropdownSMSValue,
                                                              strategicBusinessUnit:
                                                                  _model
                                                                      .strategicBusinessUnitDropdownValue,
                                                              corporateServiceUnit:
                                                                  _model
                                                                      .corporateServiceUnitDropdownSMSValue,
                                                            ));
                                                            _model.createdUserBySMS =
                                                                UsersRecord.getDocumentFromData(
                                                                    createUsersRecordData(
                                                                      displayName: _model
                                                                          .fullNameTextFieldController1
                                                                          .text,
                                                                      phoneNumber: _model
                                                                          .mobileNumberTextFieldController1
                                                                          .text,
                                                                      workEmail: _model
                                                                          .workEmailTextFieldController1
                                                                          .text,
                                                                      positionTitle: _model
                                                                          .positionTitleTextFieldController1
                                                                          .text,
                                                                      uid: random_data
                                                                          .randomString(
                                                                        20,
                                                                        20,
                                                                        true,
                                                                        true,
                                                                        true,
                                                                      ),
                                                                      createdTime:
                                                                          getCurrentTimestamp,
                                                                      businessUnit:
                                                                          _model
                                                                              .businessUnitDropdownSMSValue,
                                                                      strategicBusinessUnit:
                                                                          _model
                                                                              .strategicBusinessUnitDropdownValue,
                                                                      corporateServiceUnit:
                                                                          _model
                                                                              .corporateServiceUnitDropdownSMSValue,
                                                                    ),
                                                                    usersRecordReference);
                                                            shouldSetState =
                                                                true;
                                                            setState(() {
                                                              FFAppState()
                                                                      .isAuthenticated =
                                                                  true;
                                                              FFAppState()
                                                                      .authenticatedUser =
                                                                  _model
                                                                      .createdUserBySMS
                                                                      ?.reference;
                                                            });

                                                            context.pushNamed(
                                                                'dashboardHome');

                                                            if (shouldSetState) {
                                                              setState(() {});
                                                            }
                                                            return;
                                                          } else {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'do you agree with the said terms and conditions?',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                ),
                                                                duration: const Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                              ),
                                                            );
                                                            if (shouldSetState) {
                                                              setState(() {});
                                                            }
                                                            return;
                                                          }

                                                          if (shouldSetState) {
                                                            setState(() {});
                                                          }
                                                        },
                                                        text: 'Sign up',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
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
                                    },
                                  );
                                } else {
                                  return StreamBuilder<
                                      List<PreregisteredUsersRecord>>(
                                    stream: queryPreregisteredUsersRecord(
                                      queryBuilder:
                                          (preregisteredUsersRecord) =>
                                              preregisteredUsersRecord.where(
                                        'work_email',
                                        isEqualTo: widget.destination,
                                      ),
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<PreregisteredUsersRecord>
                                          userByEmailContainerPreregisteredUsersRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final userByEmailContainerPreregisteredUsersRecord =
                                          userByEmailContainerPreregisteredUsersRecordList
                                                  .isNotEmpty
                                              ? userByEmailContainerPreregisteredUsersRecordList
                                                  .first
                                              : null;
                                      return Container(
                                        decoration: const BoxDecoration(),
                                        child: Form(
                                          key: _model.formKey2,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .fullNameTextFieldController2 ??=
                                                      TextEditingController(
                                                    text:
                                                        userByEmailContainerPreregisteredUsersRecord
                                                            ?.displayName,
                                                  ),
                                                  focusNode: _model
                                                      .fullNameTextFieldFocusNode2,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Full name',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .gray200,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .fullNameTextFieldController2Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .mobileNumberTextFieldController2 ??=
                                                      TextEditingController(
                                                    text:
                                                        userByEmailContainerPreregisteredUsersRecord
                                                            ?.phoneNumber,
                                                  ),
                                                  focusNode: _model
                                                      .mobileNumberTextFieldFocusNode2,
                                                  autofocus: true,
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Mobile number',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        '+63 900 000 0000',
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .gray200,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  keyboardType:
                                                      TextInputType.phone,
                                                  validator: _model
                                                      .mobileNumberTextFieldController2Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .workEmailTextFieldController2 ??=
                                                      TextEditingController(
                                                    text:
                                                        userByEmailContainerPreregisteredUsersRecord
                                                            ?.workEmail,
                                                  ),
                                                  focusNode: _model
                                                      .workEmailTextFieldFocusNode2,
                                                  autofocus: true,
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Work email',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        'someone@example.com',
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .gray200,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  validator: _model
                                                      .workEmailTextFieldController2Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .positionTitleTextFieldController2 ??=
                                                      TextEditingController(
                                                    text:
                                                        userByEmailContainerPreregisteredUsersRecord
                                                            ?.positionTitle,
                                                  ),
                                                  focusNode: _model
                                                      .positionTitleTextFieldFocusNode2,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Position title',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .gray200,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .positionTitleTextFieldController2Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: StreamBuilder<
                                                    List<SbusRecord>>(
                                                  stream: querySbusRecord(
                                                    queryBuilder:
                                                        (sbusRecord) =>
                                                            sbusRecord
                                                                .orderBy('id'),
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
                                                    List<SbusRecord>
                                                        strategicBusinessUnitDropdownSbusRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .strategicBusinessUnitDropdownValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.strategicBusinessUnitDropdownValue ??=
                                                            userByEmailContainerPreregisteredUsersRecord
                                                                ?.sbuId,
                                                      ),
                                                      options:
                                                          strategicBusinessUnitDropdownSbusRecordList
                                                              .map((e) =>
                                                                  e.sbuName)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .strategicBusinessUnitDropdownValue =
                                                              val),
                                                      width: 300.0,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      hintText:
                                                          'Select your Strategic Business Unit',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .gray200,
                                                      borderWidth: 1.0,
                                                      borderRadius: 6.0,
                                                      margin:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: StreamBuilder<
                                                    List<BusRecord>>(
                                                  stream: queryBusRecord(
                                                    queryBuilder: (busRecord) =>
                                                        busRecord.orderBy('id'),
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
                                                    List<BusRecord>
                                                        businessUnitDropdownBusRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .businessUnitDropdownValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.businessUnitDropdownValue ??=
                                                            userByEmailContainerPreregisteredUsersRecord
                                                                ?.businessUnit,
                                                      ),
                                                      options:
                                                          businessUnitDropdownBusRecordList
                                                              .map((e) => e.bu)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .businessUnitDropdownValue =
                                                              val),
                                                      width: 300.0,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      hintText:
                                                          'Select your Business Unit',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .gray200,
                                                      borderWidth: 1.0,
                                                      borderRadius: 6.0,
                                                      margin:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: StreamBuilder<
                                                    List<CsusRecord>>(
                                                  stream: queryCsusRecord(
                                                    queryBuilder:
                                                        (csusRecord) =>
                                                            csusRecord
                                                                .orderBy('id'),
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
                                                    List<CsusRecord>
                                                        corporateServiceUnitDropdownCsusRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .corporateServiceUnitDropdownValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.corporateServiceUnitDropdownValue ??=
                                                            userByEmailContainerPreregisteredUsersRecord
                                                                ?.corporateServiceUnit,
                                                      ),
                                                      options:
                                                          corporateServiceUnitDropdownCsusRecordList
                                                              .map((e) => e.csu)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .corporateServiceUnitDropdownValue =
                                                              val),
                                                      width: 300.0,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      hintText:
                                                          'Select your Corporate Service Unit',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .gray200,
                                                      borderWidth: 1.0,
                                                      borderRadius: 6.0,
                                                      margin:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: StreamBuilder<
                                                    List<LevelsRecord>>(
                                                  stream: queryLevelsRecord(
                                                    queryBuilder:
                                                        (levelsRecord) =>
                                                            levelsRecord
                                                                .orderBy('id'),
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
                                                    List<LevelsRecord>
                                                        levelDropdownLevelsRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .levelDropdownValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.levelDropdownValue ??=
                                                            userByEmailContainerPreregisteredUsersRecord
                                                                ?.level,
                                                      ),
                                                      options:
                                                          levelDropdownLevelsRecordList
                                                              .map((e) =>
                                                                  e.level)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .levelDropdownValue =
                                                              val),
                                                      width: 300.0,
                                                      height: 50.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      hintText:
                                                          'Select your Level',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .gray200,
                                                      borderWidth: 1.0,
                                                      borderRadius: 6.0,
                                                      margin:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  4.0,
                                                                  16.0,
                                                                  4.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    );
                                                  },
                                                ),
                                              ),
                                              Container(
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child: Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                        .tcCheckboxValue2 ??=
                                                                    false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.tcCheckboxValue2 =
                                                                          newValue!);
                                                                  if (newValue!) {
                                                                    // tcToggleOn
                                                                    setState(
                                                                        () {
                                                                      _model.tcCheckbox =
                                                                          !_model
                                                                              .tcCheckbox;
                                                                    });
                                                                  } else {
                                                                    // tcToggleOff
                                                                    setState(
                                                                        () {
                                                                      _model.tcCheckbox =
                                                                          !_model
                                                                              .tcCheckbox;
                                                                    });
                                                                  }
                                                                },
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                checkColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: RichText(
                                                              textScaler:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        'I agree to the ',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'Terms and Conditions',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                    mouseCursor:
                                                                        SystemMouseCursors
                                                                            .click,
                                                                    recognizer:
                                                                        TapGestureRecognizer()
                                                                          ..onTap =
                                                                              () async {
                                                                            context.pushNamed('termsPage');
                                                                          },
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        ' of the Aboitiz LeadCon Navigator App',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  24.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          var shouldSetState =
                                                              false;
                                                          // onTapSignUp
                                                          if (_model.formKey2
                                                                      .currentState ==
                                                                  null ||
                                                              !_model.formKey2
                                                                  .currentState!
                                                                  .validate()) {
                                                            return;
                                                          }
                                                          if (_model
                                                              .tcCheckboxValue2!) {
                                                            var usersRecordReference =
                                                                UsersRecord
                                                                    .collection
                                                                    .doc(random_data
                                                                        .randomString(
                                                              20,
                                                              20,
                                                              true,
                                                              true,
                                                              true,
                                                            ));
                                                            await usersRecordReference
                                                                .set(
                                                                    createUsersRecordData(
                                                              displayName: _model
                                                                  .fullNameTextFieldController1
                                                                  .text,
                                                              phoneNumber: _model
                                                                  .mobileNumberTextFieldController1
                                                                  .text,
                                                              workEmail: _model
                                                                  .workEmailTextFieldController1
                                                                  .text,
                                                              positionTitle: _model
                                                                  .positionTitleTextFieldController1
                                                                  .text,
                                                              uid: random_data
                                                                  .randomString(
                                                                20,
                                                                20,
                                                                true,
                                                                true,
                                                                true,
                                                              ),
                                                              createdTime:
                                                                  getCurrentTimestamp,
                                                              businessUnit: _model
                                                                  .businessUnitDropdownValue,
                                                              strategicBusinessUnit:
                                                                  _model
                                                                      .strategicBusinessUnitDropdownValue,
                                                              corporateServiceUnit:
                                                                  _model
                                                                      .corporateServiceUnitDropdownValue,
                                                              level: _model
                                                                  .levelDropdownValue,
                                                            ));
                                                            _model.createdUserByEmail =
                                                                UsersRecord.getDocumentFromData(
                                                                    createUsersRecordData(
                                                                      displayName: _model
                                                                          .fullNameTextFieldController1
                                                                          .text,
                                                                      phoneNumber: _model
                                                                          .mobileNumberTextFieldController1
                                                                          .text,
                                                                      workEmail: _model
                                                                          .workEmailTextFieldController1
                                                                          .text,
                                                                      positionTitle: _model
                                                                          .positionTitleTextFieldController1
                                                                          .text,
                                                                      uid: random_data
                                                                          .randomString(
                                                                        20,
                                                                        20,
                                                                        true,
                                                                        true,
                                                                        true,
                                                                      ),
                                                                      createdTime:
                                                                          getCurrentTimestamp,
                                                                      businessUnit:
                                                                          _model
                                                                              .businessUnitDropdownValue,
                                                                      strategicBusinessUnit:
                                                                          _model
                                                                              .strategicBusinessUnitDropdownValue,
                                                                      corporateServiceUnit:
                                                                          _model
                                                                              .corporateServiceUnitDropdownValue,
                                                                      level: _model
                                                                          .levelDropdownValue,
                                                                    ),
                                                                    usersRecordReference);
                                                            shouldSetState =
                                                                true;
                                                            setState(() {
                                                              FFAppState()
                                                                      .isAuthenticated =
                                                                  true;
                                                              FFAppState()
                                                                      .authenticatedUser =
                                                                  _model
                                                                      .createdUserByEmail
                                                                      ?.reference;
                                                            });

                                                            context.pushNamed(
                                                                'dashboardHome');

                                                            if (shouldSetState) {
                                                              setState(() {});
                                                            }
                                                            return;
                                                          } else {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'do you agree with the said terms and conditions?',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                ),
                                                                duration: const Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                              ),
                                                            );
                                                            if (shouldSetState) {
                                                              setState(() {});
                                                            }
                                                            return;
                                                          }

                                                          if (shouldSetState) {
                                                            setState(() {});
                                                          }
                                                        },
                                                        text: 'Sign up',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
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
                                    },
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
