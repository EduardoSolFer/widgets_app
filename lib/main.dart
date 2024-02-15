import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, //Oculta la cinta de debuggin
      theme: AppTheme(selectedColor: 5).getTheme(),
      home: const HomeScreen() 
      
      // Scaffold(
      //   body: Center(
      //     child: FilledButton(onPressed: (){}, child:  Text('Hola Mundo de prueba!')),
        // ),
      // ),
    );
  }
}
