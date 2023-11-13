import 'package:flutter/material.dart';
import 'package:whatsup_clone/info.dart';
import 'package:whatsup_clone/widget/my_messagecard.dart';
import 'package:whatsup_clone/widget/sendermessage.dart';

class Chatlist extends StatelessWidget {
  const Chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
              messages: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
        return senderMessageCard(
            messages: messages[index]['text'].toString(),
            date: messages[index]['time'].toString());
      },
    );
  }
}
