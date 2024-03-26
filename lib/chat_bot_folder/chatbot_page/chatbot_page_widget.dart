import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'chatbot_page_model.dart';
export 'chatbot_page_model.dart';

class ChatbotPageWidget extends StatefulWidget {
  const ChatbotPageWidget({super.key});

  @override
  State<ChatbotPageWidget> createState() => _ChatbotPageWidgetState();
}

class _ChatbotPageWidgetState extends State<ChatbotPageWidget> {
  late ChatbotPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatbotPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
            'GT AI Chatbot',
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
          child: FlutterFlowWebView(
            content:
                '<head>\n  <meta charset="UTF-8" />\n  <meta name="viewport" content="width=device-width, initial-scale=1.0" />\n  <link rel="stylesheet" href="https://www.gstatic.com/dialogflow-console/fast/df-messenger/prod/v1/themes/df-messenger-default.css">\n<link href=\'https://fonts.googleapis.com/css?family=Inter\' rel=\'stylesheet\'>\n  <style>\n    df-messenger {\n      position: absolute;\n      top: 0px;\n      right: 0px;\n      bottom: 0px;\n      left: 0px;\n--df-messenger-primary-color: #e02026;\n--df-messenger-titlebar-background: #e02026;\n--df-messenger-message-bot-background: #e0e0e0;\n--df-messenger-message-user-background: #e02026;\n--df-messenger-message-user-font-color: #ffffff;\n--df-messenger-titlebar-font-color: #ffffff;\n--df-messenger-titlebar-subtitle-font-color: #ffffff;\n--df-messenger-font-family: Inter;\n--df-messenger-font-size: 16px;\n--df-messenger-titlebar-title-font-weight:700;\n--df-messenger-chat-background: #ffffff;\n--df-messenger-send-icon-color:#e02026;\n--df-messenger-input-background:#ffffff;\n--df-messenger-chat-scroll-button-background: #e0e0e0;\n    }\n\n    body {\n      margin: 0;\n      padding: 0;\n    }\n  </style>\n</head>\n\n<body>\n  <df-messenger\n    project-id="tt-aev-tt-experiments"\n    agent-id="1f1f2501-7261-4ff2-b26a-cc84022ff0ce"\n    language-code="en"\n    max-query-length="-1"\n    allow-feedback="all"\n    location="global"\n  >\n    <df-messenger-chat\n      chat-title= "Elsie"\n      chat-subtitle= "Your LeadCon Assistant"\nplaceholder-text="Ask about LeadCon"\n    >\n    </df-messenger-chat>\n  </df-messenger>\n\n  <script src="https://www.gstatic.com/dialogflow-console/fast/df-messenger/prod/v1/df-messenger.js"></script>\n</body>\n',
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            verticalScroll: false,
            horizontalScroll: false,
            html: true,
          ),
        ),
      ),
    );
  }
}
