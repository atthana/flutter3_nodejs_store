import 'package:flutter/material.dart';
import 'package:flutter_node_store/app_router.dart';
import 'package:flutter_node_store/components/custom_text_field.dart';
import 'package:flutter_node_store/components/rounded_button.dart';

class ForgotPasswordForm extends StatelessWidget {
  ForgotPasswordForm({super.key});

  // สร้าง GlobalKey สำหรับ Form นี้
  final _formKeyForgotPassword = GlobalKey<FormState>();

  // สร้าง TextEditingController
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            "ลืมรหัสผ่าน",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Form(
              key: _formKeyForgotPassword,
              child: Column(children: [
                customTextField(
                    controller: _emailController,
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.email),
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "กรุณากรอกอีเมล";
                      } else if (!value.contains("@")) {
                        return "กรุณากรอกอีเมลให้ถูกต้อง";
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 10,
                ),
                RoundedButton(
                    label: "RESET PASSWORD",
                    onPressed: () {
                      if (_formKeyForgotPassword.currentState!.validate()) {
                        // ถ้าผ่านการตรวจสอบข้อมูล ให้ทำงานต่อไปนี้
                        _formKeyForgotPassword.currentState!.save();

                        // แสดงข้อความลงใน Console
                        print("Email: ${_emailController.text}");
                      }
                    })
              ])),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("มีบัญชีอยู่แล้ว ? "),
              InkWell(
                onTap: () {
                  // กลับไปหน้า Login
                  Navigator.pop(context);
                },
                child: const Text(
                  "เข้าสู่ระบบ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("ยังไม่มีบัญชีกับเรา ? "),
              InkWell(
                onTap: () {
                  // ไปหน้า Register
                  Navigator.pushReplacementNamed(context, AppRouter.register);
                },
                child: const Text(
                  "สมัครสมาชิก",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}