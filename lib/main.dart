// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_node_store/app_router.dart';
import 'package:flutter_node_store/themes/styles.dart';

void main() {
  runApp(const MyApp());
  // runApp(
  //   MaterialApp(
  //     theme: AppTheme.lightTheme,
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text('คิวเองจ้า'),
  //       ),
  //       body: Center(
  //         child: Text('ยังมีปัญหาอะไรอีก 666'),
  //       ),
  //     ),
  //   ),
  // );  # TODO: แบบนี้ hot reload ไม่ทำงาานนะ
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRouter.welcome,
      routes: AppRouter.routes,
    );
  }
}
