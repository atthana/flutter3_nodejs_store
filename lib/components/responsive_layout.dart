// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers
// TODO: หน้านี้เอาไว้เช็คว่า user เปิดที่อุปกรณ์อะไร web or mobile, หน้าจออยู่ใน size เท่าไหร่

import 'package:flutter/material.dart';
import 'package:flutter_node_store/themes/colors.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webChild;
  final Widget mobileChild;

  const ResponsiveLayout(
      {Key? key, required this.webChild, required this.mobileChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [primaryDark, primary],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),

                    // Using for responsive layout
                    child: LayoutBuilder(builder: (
                      BuildContext context,
                      BoxConstraints constraints,
                    ) {
                      // เราจะใช้ constraints มาเช็คว่าหน้าจอของเรามีขนาดเท่าไหร่
                      Widget childWidget = mobileChild;
                      if (constraints.maxWidth > 800) {
                        childWidget = webChild;
                      }
                      return childWidget;
                    }),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
