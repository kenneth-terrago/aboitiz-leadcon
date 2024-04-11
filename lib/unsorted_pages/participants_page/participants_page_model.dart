import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'participants_page_widget.dart' show ParticipantsPageWidget;
import 'package:flutter/material.dart';

class ParticipantsPageModel extends FlutterFlowModel<ParticipantsPageWidget> {
  ///  Local state fields for this page.

  bool isShowFullList = true;

  bool isSearch = false;

  bool isFilter = false;

  String? selectedFilterItem;

  bool isButton = false;

  bool isField = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in participantsPage widget.
  List<SbusRecord>? strategicBusinessUnitList;
  // State field(s) for searchTextField widget.
  FocusNode? searchTextFieldFocusNode;
  TextEditingController? searchTextFieldController;
  String? Function(BuildContext, String?)? searchTextFieldControllerValidator;
  List<PreregisteredUsersRecord> simpleSearchResults1 = [];
  List<PreregisteredUsersRecord> simpleSearchResults2 = [];
  // Stores action output result for [Bottom Sheet - FilterBottomSheet] action in filterIcon widget.
  String? filterItem;
  // Stores action output result for [Bottom Sheet - FilterBottomSheet] action in filterIcon widget.
  String? filterItem1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchTextFieldFocusNode?.dispose();
    searchTextFieldController?.dispose();
  }
}
