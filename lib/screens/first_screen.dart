import 'dart:io';
import 'package:flutter/material.dart';
import 'package:navigation/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  FirstScreenState createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitDialog(context),
      child: Scaffold(
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
          )),
    );
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
  Future<bool> showExitDialog(context) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Exit dialog"),
          content: const Text("Do you want to exit?"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("NO")
            ),
            TextButton(
                onPressed: () {
                  exit(0);
                },
                child: const Text("YES")
            ),
          ]
        );
      }
    );
  }
}
