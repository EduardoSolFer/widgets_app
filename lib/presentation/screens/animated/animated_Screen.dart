import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_Screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreen2State();
}

class _AnimatedScreen2State extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  Color color = Colors.red;
  double borderRadius = 10;

  void changeForm() {
    final random = Random();
    width = random.nextInt(350) + 10;
    height = random.nextInt(350) + 10;
    color = Color.fromRGBO(random.nextInt(255) + 1, random.nextInt(255) + 1,
        random.nextInt(255) + 1, 1);
    borderRadius = random.nextInt(100) + 10;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Screen'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: width,
          height: height,
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(borderRadius)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeForm,
        child: const Icon(Icons.abc_outlined),
      ),
    );
  }
}
