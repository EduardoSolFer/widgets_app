import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false, //Oculta la cinta de debuggin
      theme: AppTheme(selectedColor: 5).getTheme(),
      // home: const HomeScreen(),
      
      
    //   routes: {
    //   '/cards': (context) => const CardsScreen(),
    //   '/buttons': (context) => const ButtonsScreen(),
    // },
      
      // Scaffold(
      //   body: Center(
      //     child: FilledButton(onPressed: (){}, child:  Text('Hola Mundo de prueba!')),
        // ),
      // ),
    );
  }
}
