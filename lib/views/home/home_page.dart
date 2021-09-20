import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_with_animation/config/app_colors.dart';
import 'package:login_ui_with_animation/widgets/app_button.dart';
import 'package:login_ui_with_animation/widgets/app_input.dart';
import 'package:login_ui_with_animation/widgets/app_text_button.dart';
import 'package:login_ui_with_animation/widgets/decorative_panel.dart';
import 'package:login_ui_with_animation/widgets/welcome_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DecorativeSection(),
          SizedBox(height: 20),
          MainSection(),
        ],
      ),
    );
  }
}

class MainSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeTextSection(),
          SizedBox(height: 40),
          InputsSection(),
          SizedBox(height: 20),
          AppTextButton(text: 'Forgot Password?'),
          SizedBox(height: 20),
          AppButton(text: 'Login'),
          SizedBox(height: 20),
          AppTextButton(text: 'Create Account'),
        ],
      ),
    );
  }
}

class InputsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          AppInput(hintText: 'User Name'),
          AppInput(hintText: 'Password'),
        ],
      ),
    );
  }
}
