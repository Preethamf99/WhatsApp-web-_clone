// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsup_clone/colors.dart';
import 'package:whatsup_clone/widget/Contacct.dart';
import 'package:whatsup_clone/widget/chatlist.dart';
import 'package:whatsup_clone/widget/webProfilebar.dart';
import 'package:whatsup_clone/widget/web_search_bar.dart';
import 'package:whatsup_clone/widget/webapp_chatbar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //web profile bar
                  WebProfilebar(),
                  //web Search bar
                  WebSearchgBar(),
                  Contactlist(),

                  //web screen
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/backgroundImage.png'))),
            child: Column(
              children: [
                //chat app bar
                webapp(),
                //chat lsit
                Expanded(child: Chatlist()),
                //chat input
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: chatBarMessage,
                      border: Border(bottom: BorderSide(color: dividerColor))),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.emoji_emotions,
                            color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 15),
                        child: TextField(
                            decoration: InputDecoration(
                                fillColor: searchBarColor,
                                hintText: 'type a message',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                contentPadding: EdgeInsets.only(left: 20))),
                      )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mic,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
