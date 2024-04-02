import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  final List messages;
  final ScrollController scrollController;
  const MessagesScreen({
    super.key,
    required this.messages,
    required this.scrollController,
  });

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return ListView.separated(
        controller: widget.scrollController,
        shrinkWrap: true,
        reverse: true,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: widget.messages[index]['isUserMessage']
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(
                        20,
                      ),
                      topRight: const Radius.circular(20),
                      bottomRight: Radius.circular(
                          widget.messages[index]['isUserMessage'] ? 0 : 20),
                      topLeft: Radius.circular(
                          widget.messages[index]['isUserMessage'] ? 20 : 0),
                    ),
                    color: widget.messages[index]['isUserMessage']
                        ? const Color(0xffe12027)
                        : const Color(0xffe1e0e0),
                  ),
                  constraints: BoxConstraints(maxWidth: w * 2 / 3),
                  child: Text(
                    widget.messages[index]['message'].text.text[0],
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: widget.messages[index]['isUserMessage']
                          ? Colors.white
                          : Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (_, i) =>
            const Padding(padding: EdgeInsets.only(top: 10)),
        itemCount: widget.messages.length);
  }
}
