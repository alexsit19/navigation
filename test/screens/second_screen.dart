import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("Go back"),
        onPressed: () {},
      ),
    );
  }
}
