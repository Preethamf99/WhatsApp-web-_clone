// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsup_clone/colors.dart';

class WebProfilebar extends StatelessWidget {
  const WebProfilebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: webAppBarColor,
          border: Border(right: BorderSide(color: dividerColor))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
          )
        ],
      ),
    );
  }
}
