import 'dart:math';

import 'package:chatgpt_clone/constants/constants.dart';
import 'package:chatgpt_clone/screens/StreamClassDemo.dart';
import 'package:chatgpt_clone/screens/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          color: cardBackground
        )

      ),
      home: ChatScreen(),

    );
  }
}






