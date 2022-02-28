import 'package:flutter/material.dart';

main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("NavigationApp"),
        ),

        body:
      ),
      routes: {
        '/': (context) =>
      },
    );
  }
}
