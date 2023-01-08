import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/phone.dart';
import 'package:login/verify.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: 'phone',
    routes: {
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'home':(context) => MyHome()
    },
  ));
}