import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_with_animation/animation/fade_animation.dart';
import 'package:login_ui_with_animation/config/app_colors.dart';

class AppTextButton extends StatelessWidget {
  final String text;

  AppTextButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeAnimation(
        delay: 1,
        child: Text(
          text,
          style: TextStyle(color: pinkColor),
        ),
      ),
    );
  }
}
