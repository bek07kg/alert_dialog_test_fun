import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPage createState() => _NextPage();
}

class _NextPage extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Эми неге бастын!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 40.0,
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          TextButton(
              onPressed: (() {
                Navigator.pop(context,
                    Builder(builder: (context) => const AlertDialog()));
              }),
              child: const Text(
                "Жон эле кой!",
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
        ],
      ),
    );
  }
}
