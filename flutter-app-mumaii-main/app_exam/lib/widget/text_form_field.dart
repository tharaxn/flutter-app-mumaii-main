import 'package:app_exam/colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({super.key, this.hintText = '', this.image = '',});
  final String hintText;
  final String image;
  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          prefixIcon: widget.image.isNotEmpty
              ? SizedBox(width: 27, child: Image.asset(widget.image))
              : null,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none),
          label: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.hintText,
                style: const TextStyle(
                  fontSize: 15,
                  color: ThemeColor.purpleHint,
                  fontWeight: FontWeight.w400,
                ),
              )),
        ),
      ),
    );
  }
}
