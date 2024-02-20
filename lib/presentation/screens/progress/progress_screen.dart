import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Progress Indicator"),
          centerTitle: true,
        ),
        body: Progrees(),
      ),
    );
  }
}

class Progrees extends StatelessWidget {
  const Progrees({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
