import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'chat_bubble_component_model.dart';
export 'chat_bubble_component_model.dart';

class ChatBubbleComponentWidget extends StatefulWidget {
  const ChatBubbleComponentWidget({
    super.key,
    required this.isBot,
    required this.message,
  });

  final bool? isBot;
  final String? message;

  @override
  State<ChatBubbleComponentWidget> createState() =>
      _ChatBubbleComponentWidgetState();
}

class _ChatBubbleComponentWidgetState extends State<ChatBubbleComponentWidget> {
  late ChatBubbleComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatBubbleComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(
          minHeight: 30.0,
        ),
        decoration: BoxDecoration(
          color: widget.isBot!
              ? FlutterFlowTheme.of(context).secondaryBackground
              : FlutterFlowTheme.of(context).alternate,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            valueOrDefault<String>(
              widget.message,
              'message',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium,
          ),
        ),
      ),
    );
  }
}
