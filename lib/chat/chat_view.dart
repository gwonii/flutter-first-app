import 'package:flutter/material.dart';
import 'message.dart';
import 'new_message.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Container();
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Chat'),
    //     backgroundColor: Colors.blue,
    //   ),
    //   body: Column(
    //     children: const [
    //       Expanded(
    //         child: Messages(),
    //       ),
    //       NewMessage(),
    //     ],
    //   ),
    // );
  }
}
