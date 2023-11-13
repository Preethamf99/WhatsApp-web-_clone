// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsup_clone/colors.dart';
import 'package:whatsup_clone/info.dart';
import 'package:whatsup_clone/screen/mobile_Screen_layout.dart';
import 'package:whatsup_clone/widget/mobielchatscreen.dart';

class Contactlist extends StatelessWidget {
  const Contactlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Container(
          height: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: info.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return mobilechat();
                        },
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: ListTile(
                          title: Text(
                            info[index]['name'].toString(),
                            style: TextStyle(fontSize: 18),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(info[index]['message'].toString(),
                                style: TextStyle(fontSize: 18)),
                          ),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                info[index]['profilePic'].toString()),
                          ),
                          trailing: Text(
                            info[index]['time'].toString(),
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          )),
                    ),
                  ),
                  Divider(
                    color: dividerColor,
                    indent: 85,
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
