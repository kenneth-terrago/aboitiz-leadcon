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

    _model.fullNameTextFieldSMSFocusNode ??= FocusNode();

    _model.mobileNumberTextFieldSMSFocusNode ??= FocusNode();

    _model.workEmailTextFieldSMSFocusNode ??= FocusNode();

    _model.positionTitleTextFieldSMSFocusNode ??= FocusNode();

    _model.fullNameTextFieldEmailFocusNode ??= FocusNode();

    _model.mobileNumberTextFieldEmailFocusNode ??= FocusNode();

    _model.workEmailTextFieldEmailFocusNode ??= FocusNode();

    _model.positionTitleTextFieldEmailFocusNode ??= FocusNode();
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
                                                          .fullNameTextFieldSMSController ??=
                                                      TextEditingController(
                                                    text:
                                                        userBySMSContainerPreregisteredUsersRecord
                                                            ?.displayName,
                                                  ),
                                                  focusNode: _model
                                                      .fullNameTextFieldSMSFocusNode,
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
                                                      .fullNameTextFieldSMSControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .mobileNumberTextFieldSMSController ??=
                                                      TextEditingController(
                                                    text:
                                                        userBySMSContainerPreregisteredUsersRecord
                                                            ?.phoneNumber,
                                                  ),
                                                  focusNode: _model
                                                      .mobileNumberTextFieldSMSFocusNode,
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
                                                      .mobileNumberTextFieldSMSControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .workEmailTextFieldSMSController ??=
                                                      TextEditingController(
                                                    text:
                                                        userBySMSContainerPreregisteredUsersRecord
                                                            ?.workEmail,
                                                  ),
                                                  focusNode: _model
                                                      .workEmailTextFieldSMSFocusNode,
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
                                                      .workEmailTextFieldSMSControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .positionTitleTextFieldSMSController ??=
                                                      TextEditingController(
                                                    text:
                                                        userBySMSContainerPreregisteredUsersRecord
                                                            ?.positionTitle,
                                                  ),
                                                  focusNode: _model
                                                      .positionTitleTextFieldSMSFocusNode,
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
                                                      .positionTitleTextFieldSMSControllerValidator
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
                                                                        .tcCheckboxSMSValue ??=
                                                                    false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.tcCheckboxSMSValue =
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
                                                              .tcCheckboxSMSValue!) {
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
                                                                  .fullNameTextFieldSMSController
                                                                  .text,
                                                              phoneNumber: _model
                                                                  .mobileNumberTextFieldSMSController
                                                                  .text,
                                                              workEmail: _model
                                                                  .workEmailTextFieldSMSController
                                                                  .text,
                                                              positionTitle: _model
                                                                  .positionTitleTextFieldSMSController
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
                                                                      .strategicBusinessUnitDropdownSMSValue,
                                                              corporateServiceUnit:
                                                                  _model
                                                                      .corporateServiceUnitDropdownSMSValue,
                                                              level: _model
                                                                  .levelDropdownSMSValue,
                                                            ));
                                                            _model.createdUserBySMS =
                                                                UsersRecord.getDocumentFromData(
                                                                    createUsersRecordData(
                                                                      displayName: _model
                                                                          .fullNameTextFieldSMSController
                                                                          .text,
                                                                      phoneNumber: _model
                                                                          .mobileNumberTextFieldSMSController
                                                                          .text,
                                                                      workEmail: _model
                                                                          .workEmailTextFieldSMSController
                                                                          .text,
                                                                      positionTitle: _model
                                                                          .positionTitleTextFieldSMSController
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
                                                                              .strategicBusinessUnitDropdownSMSValue,
                                                                      corporateServiceUnit:
                                                                          _model
                                                                              .corporateServiceUnitDropdownSMSValue,
                                                                      level: _model
                                                                          .levelDropdownSMSValue,
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
                                                          .fullNameTextFieldEmailController ??=
                                                      TextEditingController(
                                                    text:
                                                        userByEmailContainerPreregisteredUsersRecord
                                                            ?.displayName,
                                                  ),
                                                  focusNode: _model
                                                      .fullNameTextFieldEmailFocusNode,
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
                                                      .fullNameTextFieldEmailControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .mobileNumberTextFieldEmailController ??=
                                                      TextEditingController(
                                                    text:
                                                        userByEmailContainerPreregisteredUsersRecord
                                                            ?.phoneNumber,
                                                  ),
                                                  focusNode: _model
                                                      .mobileNumberTextFieldEmailFocusNode,
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
                                                      .mobileNumberTextFieldEmailControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .workEmailTextFieldEmailController ??=
                                                      TextEditingController(
                                                    text:
                                                        userByEmailContainerPreregisteredUsersRecord
                                                            ?.workEmail,
                                                  ),
                                                  focusNode: _model
                                                      .workEmailTextFieldEmailFocusNode,
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
                                                      .workEmailTextFieldEmailControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .positionTitleTextFieldEmailController ??=
                                                      TextEditingController(
                                                    text:
                                                        userByEmailContainerPreregisteredUsersRecord
                                                            ?.positionTitle,
                                                  ),
                                                  focusNode: _model
                                                      .positionTitleTextFieldEmailFocusNode,
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
                                                      .positionTitleTextFieldEmailControllerValidator
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
                                                        strategicBusinessUnitDropdownEmailSbusRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .strategicBusinessUnitDropdownEmailValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.strategicBusinessUnitDropdownEmailValue ??=
                                                            userByEmailContainerPreregisteredUsersRecord
                                                                ?.sbuId,
                                                      ),
                                                      options:
                                                          strategicBusinessUnitDropdownEmailSbusRecordList
                                                              .map((e) =>
                                                                  e.sbuName)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .strategicBusinessUnitDropdownEmailValue =
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
                                                        businessUnitDropdownEmailBusRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .businessUnitDropdownEmailValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.businessUnitDropdownEmailValue ??=
                                                            userByEmailContainerPreregisteredUsersRecord
                                                                ?.businessUnit,
                                                      ),
                                                      options:
                                                          businessUnitDropdownEmailBusRecordList
                                                              .map((e) => e.bu)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .businessUnitDropdownEmailValue =
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
                                                        corporateServiceUnitDropdownEmailCsusRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .corporateServiceUnitDropdownEmailValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.corporateServiceUnitDropdownEmailValue ??=
                                                            userByEmailContainerPreregisteredUsersRecord
                                                                ?.corporateServiceUnit,
                                                      ),
                                                      options:
                                                          corporateServiceUnitDropdownEmailCsusRecordList
                                                              .map((e) => e.csu)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .corporateServiceUnitDropdownEmailValue =
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
                                                        levelDropdownEmailLevelsRecordList =
                                                        snapshot.data!;
                                                    return FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .levelDropdownEmailValueController ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.levelDropdownEmailValue ??=
                                                            userByEmailContainerPreregisteredUsersRecord
                                                                ?.level,
                                                      ),
                                                      options:
                                                          levelDropdownEmailLevelsRecordList
                                                              .map((e) =>
                                                                  e.level)
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() => _model
                                                                  .levelDropdownEmailValue =
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
                                                                        .tcCheckboxEmailValue ??=
                                                                    false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.tcCheckboxEmailValue =
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
                                                              .tcCheckboxEmailValue!) {
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
                                                                  .fullNameTextFieldEmailController
                                                                  .text,
                                                              phoneNumber: _model
                                                                  .mobileNumberTextFieldEmailController
                                                                  .text,
                                                              workEmail: _model
                                                                  .workEmailTextFieldEmailController
                                                                  .text,
                                                              positionTitle: _model
                                                                  .positionTitleTextFieldEmailController
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
                                                                  .businessUnitDropdownEmailValue,
                                                              strategicBusinessUnit:
                                                                  _model
                                                                      .strategicBusinessUnitDropdownEmailValue,
                                                              corporateServiceUnit:
                                                                  _model
                                                                      .corporateServiceUnitDropdownEmailValue,
                                                              level: _model
                                                                  .levelDropdownEmailValue,
                                                            ));
                                                            _model.createdUserByEmail =
                                                                UsersRecord.getDocumentFromData(
                                                                    createUsersRecordData(
                                                                      displayName: _model
                                                                          .fullNameTextFieldEmailController
                                                                          .text,
                                                                      phoneNumber: _model
                                                                          .mobileNumberTextFieldEmailController
                                                                          .text,
                                                                      workEmail: _model
                                                                          .workEmailTextFieldEmailController
                                                                          .text,
                                                                      positionTitle: _model
                                                                          .positionTitleTextFieldEmailController
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
                                                                              .businessUnitDropdownEmailValue,
                                                                      strategicBusinessUnit:
                                                                          _model
                                                                              .strategicBusinessUnitDropdownEmailValue,
                                                                      corporateServiceUnit:
                                                                          _model
                                                                              .corporateServiceUnitDropdownEmailValue,
                                                                      level: _model
                                                                          .levelDropdownEmailValue,
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
