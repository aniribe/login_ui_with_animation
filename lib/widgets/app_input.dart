import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_with_animation/config/app_colors.dart';

class AppInput extends StatelessWidget {
  final String hintText;

  const AppInput({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: borderColor))),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: borderColor)),
      ),
    );
  }
}
