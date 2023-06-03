import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Page')),
      //body: const TestForm(),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Modular.to.navigate('/'),
          child: const Text('Navigate to Home Page'),
        ),
      ),
    );
  }
}
