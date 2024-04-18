import 'package:app_exam/colors.dart';
import 'package:app_exam/widget/text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo_app.png',
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'เข้าสู่ระบบหรือสร้างผู้ใช้',
                style: TextStyle(color: ThemeColor.purpleFont, fontSize: 18),
              ),
              const SizedBox(
                height: 60,
              ),
              const TextFormFieldWidget(
                hintText: 'email/username',
                image: 'assets/images/Group.png',
              ),
              const SizedBox(
                height: 30,
              ),
              const TextFormFieldWidget(
                hintText: 'password',
                image: 'assets/images/Vector.png',
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    check = true;
                  });
                  Navigator.pushNamed(context, '/Regis');
                },
                child: const Text(
                  'ยังไม่มีบัญชีผู้ใช้ ใช่หรือไม่',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 127,
                height: 38,
                child: ElevatedButton(
                  onPressed: check == true
                      ? () {
                          Navigator.pushNamed(context, '/Regis');
                        }
                      : null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      ThemeColor.button,
                    ),
                  ),
                  child: const Text(
                    'เข้าสู่ระบบ',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
