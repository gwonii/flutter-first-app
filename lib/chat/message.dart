import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'chat_bubble_view.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
    // return StreamBuilder(
    //   stream: FirebaseFirestore.instance
    //       .collection('chats/')
    //       .orderBy('createdAt', descending: true)
    //       .snapshots(),
    //   builder: (context,
    //       AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return const Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     }
    //     final chatDocs = snapshot.data!.docs;
    //     return ListView.builder(
    //       reverse: true,
    //       itemCount: chatDocs.length,
    //       itemBuilder: (context, index) {
    //         return ChatBubbleView(chatDocs[index]['message'], false);
    //       },
    //     );
    //   },
    // );
  }
}
