import '/backend/backend.dart';
import '/components/agenda_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'agenda_page_model.dart';
export 'agenda_page_model.dart';

class AgendaPageWidget extends StatefulWidget {
  const AgendaPageWidget({
    super.key,
    this.date,
  });

  final DateTime? date;

  @override
  State<AgendaPageWidget> createState() => _AgendaPageWidgetState();
}

class _AgendaPageWidgetState extends State<AgendaPageWidget> {
  late AgendaPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgendaPageModel());
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF4F6F9),
        floatingActionButton: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
          child: FloatingActionButton(
            onPressed: () async {
              context.pushNamed('chatbotPage');
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: Icon(
              Icons.chat_bubble,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 24.0,
            ),
          ),
        ),
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
              context.pop();
            },
          ),
          title: Text(
            'Agenda',
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
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  StreamBuilder<List<AgendaRecord>>(
                    stream: queryAgendaRecord(
                      queryBuilder: (agendaRecord) =>
                          agendaRecord.orderBy('start_time'),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<AgendaRecord> listViewAgendaRecordList =
                          snapshot.data!;
                      return ListView.separated(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          0,
                          0,
                          105.0,
                        ),
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewAgendaRecordList.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 20.0),
                        itemBuilder: (context, listViewIndex) {
                          final listViewAgendaRecord =
                              listViewAgendaRecordList[listViewIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'agendaDetails',
                                queryParameters: {
                                  'agendaId': serializeParam(
                                    listViewAgendaRecord.id,
                                    ParamType.int,
                                  ),
                                  'agendaTitle': serializeParam(
                                    listViewAgendaRecord.title,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: AgendaCardWidget(
                              key: Key(
                                  'Keyf6e_${listViewIndex}_of_${listViewAgendaRecordList.length}'),
                              agendaDate: dateTimeFormat(
                                  'jm', listViewAgendaRecord.startTime),
                              agendaTitle: listViewAgendaRecord.title,
                              agendaHost: listViewAgendaRecord.presenters,
                              agendaVenue:
                                  listViewAgendaRecord.locationSpecific,
                              agendaThumbnail: valueOrDefault<String>(
                                listViewAgendaRecord.coverImage,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/lead-con-aboitiz-application-6vjly1/assets/v6wp19gphiuz/Aboitiz_LeadCon_2024_logo_1.png',
                              ),
                            ),
                          );
                        },
                      );
                    },
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
