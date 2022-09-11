import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({Key? key}) : super(key: key);

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  final _textController = TextEditingController();
  var _userEnterMessage = '';

  // void _sendMessage() {
  //   FocusScope.of(context).unfocus();
  //   FirebaseFirestore.instance.collection('chats/').add(
  //     {
  //       'message': _userEnterMessage,
  //       'user': 'gwonii',
  //       'createdAt': Timestamp.now(),
  //     },
  //   );
  //   _textController.clear();
  //   _userEnterMessage = '';
  // }

  @override
  Widget build(BuildContext context) {
    return Container();
    // return Container(
    //   margin: const EdgeInsets.only(top: 8),
    //   padding: const EdgeInsets.all(8),
    //   child: Row(
    //     children: [
    //       Expanded(
    //         child: TextField(
    //           controller: _textController,
    //           decoration: const InputDecoration(labelText: 'Send a message...'),
    //           onChanged: (value) {
    //             setState(() {
    //               _userEnterMessage = value;
    //             });
    //           },
    //         ),
    //       ),
    //       IconButton(
    //         onPressed: _userEnterMessage.trim().isEmpty ? null : _sendMessage,
    //         icon: const Icon(
    //           Icons.send,
    //         ),
    //         color: Colors.blue,
    //       )
    //     ],
    //   ),
    // );
  }
}
