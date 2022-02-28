import 'package:flutter/material.dart';
import 'package:navigation/screens/second_screen.dart';

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
            onPressed: () {
              navigateAndGetData(context);
            },
          ),
        ));
  }

  void navigateAndGetData(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SecondScreen()));
    showDialog(
        context: context,
        builder: (context) => getAlertDialog(result, context));
  }

  Widget getAlertDialog(Object result, BuildContext context) {
    return AlertDialog(
      title: const Text("Data from second screen"),
      content: Text("$result"),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text("OK"))
      ],
    );
  }
}
