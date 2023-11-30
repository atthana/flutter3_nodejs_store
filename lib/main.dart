// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_node_store/app_router.dart';
import 'package:flutter_node_store/themes/styles.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Logger
final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 1,
    colors: true,
    printEmojis: true,
    printTime: false,
  ),
);

// Test Logger
// void testLogger() {
//   logger.t('Verbose log');
//   logger.d('Debug log');
//   logger.i('Info log');
//   logger.w('Warning log');
//   logger.e('Error log');
//   logger.f('What a terrible failure log');
// }

// กำหนดตัวแปร initialRoute ให้กับ MaterialApp
var initialRoute;

void main() async {  // ต้องใส่ main เป็น async เพราะเรากำลังจะอ่าน sharedPreferences นะ

  // Test Logger
  // testLogger();

  // ต้องเรียกใช้ WidgetsFlutterBinding.ensureInitialized()
  // เพื่อให้สามารถเรียกใช้ SharedPreferences ได้
  WidgetsFlutterBinding.ensureInitialized();

  // สร้างตัวแปร prefs เพื่อเรียกใช้ SharedPreferences
  SharedPreferences prefs = await SharedPreferences.getInstance();

  // ตรวจสอบว่าเคยแสดง Intro แล้วหรือยัง 
  if(prefs.getBool('welcomeStatus') == true) {
    // ถ้าเคยแสดง Intro แล้ว ให้ไปยังหน้า Login
    initialRoute = AppRouter.login;
  } else {
    // ถ้ายังไม่เคยแสดง Intro ให้ไปยังหน้า Welcome
    initialRoute = AppRouter.welcome;
  }

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: initialRoute,
      routes: AppRouter.routes,
    );
  }
}