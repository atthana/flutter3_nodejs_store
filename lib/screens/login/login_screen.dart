// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_node_store/components/mobile_layout.dart';
import 'package:flutter_node_store/components/responsive_layout.dart';
import 'package:flutter_node_store/components/web_layout.dart';
import 'package:flutter_node_store/screens/login/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // หลังจากเข้ามาใน App จะเช็คก่อนเลยว่าเป็น web or mobile
    return ResponsiveLayout(
        webChild: WebLayout(
          imageWidget: Image.asset(
            "assets/images/login.png",
            width: 200,
          ),
          dataWidget: LoginForm(),
        ),
        mobileChild: MobileLayout(
          imageWidget: Image.asset(
            "assets/images/login.png",
            width: 75,
          ),
          dataWidget: LoginForm(),
        ));
  }
}
