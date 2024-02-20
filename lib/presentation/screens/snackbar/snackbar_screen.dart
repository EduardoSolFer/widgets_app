import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackBar_Screen';

  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: const Placeholder(),
    );
  }
}
