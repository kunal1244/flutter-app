import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Test App",
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
          ),
        ),
      ),
      body: Center(
          child: Container(
        child: Text("Contact us!"),
      )),
      drawer: Drawer(),
    );
  }
}
