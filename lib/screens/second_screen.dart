import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second screen"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: const Text("Return 42"),
                onPressed: () {
                  int result = 42;
                  Navigator.pop(context, result);
                },
              ),
              ElevatedButton(
                child: const Text("Return AbErVaLlG"),
                onPressed: () {
                  String result = "Return AbErVaLlG";
                  Navigator.pop(context, result);
                },
              )
            ],
          ),
        ));
  }
}
