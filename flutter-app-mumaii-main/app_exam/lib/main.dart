// ignore_for_file: avoid_print

import 'package:app_exam/router.dart';
import 'package:app_exam/screen/login.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:http/http.dart' as http;
// ignore: unused_import
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> sendDataToPostman() async {
    var url = Uri.parse('http://localhost:8000/users/');

    var data = {
      'name': 'Satan',
      'surname': 'Curtis',
      'email': 'santaa666@gmail.com',
      'phonenumber': '0666600606',
      'username': 'gxxdfor_hell',
      'password': 'st00666',
      'confirmpassword': 'st00666'
    };

    // ส่งคำขอ POST ไปยังเซิร์ฟเวอร์
    var response = await http.post(
      url,
      body: json.encode(data), // แปลงข้อมูลเป็น JSON ก่อนส่ง
      headers: {
        'Content-Type':
            'mumaii application/json', // ระบุว่าข้อมูลที่ส่งไปเป็น JSON
      },
    );

    // ตรวจสอบว่าการส่งคำขอเสร็จสมบูรณ์หรือไม่
    if (response.statusCode == 200) {
      print('Data sent successfully');
      print('Response: ${response.body}');
    } else {
      print('Failed to send data. Status code: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Noto_Sans_Thai',
      ),
      home: const LoginPage(),
      onGenerateRoute: RouterScreen.generateRoute,
    );
  }
}
