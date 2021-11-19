import 'package:flutter/material.dart';

import 'playground_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeSo SDK Demo',
      theme: ThemeData.dark(),
      home: const PlaygroundScreen(),
    );
  }
}
