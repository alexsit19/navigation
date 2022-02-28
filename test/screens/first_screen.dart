import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go next"),
          onPressed: () {},
        ),
      )
    );
  }
}
