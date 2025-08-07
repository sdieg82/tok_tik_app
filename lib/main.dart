import 'package:flutter/material.dart';
import 'package:tok_tik_app/Config/themes/customTheme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Customtheme().getTheme(),
      title: 'TokTik videos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TokTik videos'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}