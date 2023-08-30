import 'package:flutter/material.dart';
import 'package:one_two/pages/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage(),debugShowCheckedModeBanner: false,);

  }
}


