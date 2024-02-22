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
        body: const Progrees(),
      ),
    );
  }
}

class Progrees extends StatelessWidget {
  const Progrees({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(children: [
        SizedBox(height: 25),
        Text('Circular progres indicator'),
        SizedBox(height: 25),
        CircularProgressIndicator(),
        SizedBox(height: 25),
        Text('Linear progress indicator'),
        SizedBox(height: 25),
        _CircularProgressIndicator(),
      ]),
    );
  }
}

class _CircularProgressIndicator extends StatelessWidget {
  const _CircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 500), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 5,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: LinearProgressIndicator(value: progressValue),
                ),
              ],
            ),
          );
        });
  }
}
