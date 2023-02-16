import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void answerChoosen() {
    print("answer Given");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var quetions = [
      "What's your favourite Colour",
      "What's your favourite animal?"
    ];
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Dummy Quiz App"),
          ),
          body: Column(children: [
            const Text("The Questions"),
            ElevatedButton(
              onPressed: answerChoosen,
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: answerChoosen,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: answerChoosen,
              child: const Text("Answer 3"),
            ),
          ]),
        ));
  }
}
