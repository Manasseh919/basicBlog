import 'package:flutter/material.dart';
import 'package:myblog_firebase/LoginRegisterPage.dart';

void main() {
  runApp(const BlogApp());
}




class BlogApp extends StatelessWidget {
  const BlogApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    title: "Blog App",
    theme: ThemeData(primarySwatch: Colors.pink),
    home: LoginRegisterPage(),
   );
  }
}