// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsup_clone/colors.dart';

class WebSearchgBar extends StatelessWidget {
  const WebSearchgBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: dividerColor))),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            fillColor: searchBarColor,
            filled: true,
            hintText: 'Start a new chat',
            hintStyle: TextStyle(fontSize: 14),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.search,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
