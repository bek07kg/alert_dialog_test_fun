import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tapshyrma00_flutter/next_page.dart';

void main() {
  runApp(const AlertDiag1());
}

class AlertDiag1 extends StatelessWidget {
  const AlertDiag1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text(
            "Alert Dialog",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: TextButton(
            onPressed: (() {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.blue,
                      title: const Text(
                        "Неге бастын кереги жок!",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      content: const Icon(Icons.verified),
                      actions: [
                        TextButton(
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NextPage()));
                          }),
                          child: const Text(
                            "Кайра бас!",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: (() {
                              Navigator.pop(
                                  context,
                                  Builder(
                                      builder: (context) =>
                                          const AlertDiag1()));
                            }),
                            child: const Text(
                              "Жон эле койчу",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                            ))
                      ],
                    );
                  });
            }),
            child: const Text(
              "Ушул созду бас!!!",
              style: TextStyle(color: Colors.green, fontSize: 30.0),
            ),
          ),
        ));
  }
}
