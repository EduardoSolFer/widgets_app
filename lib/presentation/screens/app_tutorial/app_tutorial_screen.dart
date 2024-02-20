import 'package:flutter/material.dart';

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_Screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('App Tutorial Screen'),
      ),
      body: const Placeholder(),
    );
  }
}
