import 'package:flutter/material.dart';

class HomePage extends DefaultPage {
  const HomePage(
      {super.key,
      super.title,
      super.body = const Center(
        child: Text("XXXX"),
      )});
}

class DefaultPage extends StatelessWidget {
  final String title;
  final Widget body;

  const DefaultPage(
      {super.key,
      this.title = 'S!D TEC ORG',
      this.body = const Center(
        child: Text('____'),
      )});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(title),
          backgroundColor: const Color.fromARGB(255, 18, 68, 109)),
      //body: const TestForm(),
      body: body,
    );
  }
}
