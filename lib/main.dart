import 'package:flutter/material.dart';
import 'package:melodevv_website/view/shared/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(canvasColor: const Color.fromARGB(255, 0, 0, 0)),
      home: const Layout(),
    );
  }
}
