import 'package:app_exam/colors.dart';
import 'package:app_exam/widget/text_form_field.dart';
import 'package:flutter/material.dart';
//import 'package:pin_code_fields/pin_code_fields.dart';

class RegisPage extends StatefulWidget {
  const RegisPage({super.key});

  @override
  State<RegisPage> createState() => _RegisPageState();
}

class _RegisPageState extends State<RegisPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColor.background,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'สร้างบัญชีผู้ใช้',
                    style:
                        TextStyle(color: ThemeColor.purpleFont, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const TextFormFieldWidget(
                    hintText: 'name',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextFormFieldWidget(
                    hintText: 'surname',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextFormFieldWidget(
                    hintText: 'e-mail',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextFormFieldWidget(
                    hintText: 'phone number',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextFormFieldWidget(
                    hintText: 'username',
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const TextFormFieldWidget(
                    hintText: 'password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextFormFieldWidget(
                    hintText: 'confirm password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 127,
                    height: 38,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(204, 147, 185, 1),
                        ),
                      ),
                      child: const Text(
                        'สร้างบัญชี',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
