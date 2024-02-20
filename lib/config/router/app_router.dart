import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';
import 'package:widgets_app/presentation/screens/progress/progress_screen.dart';

final appRouter = GoRouter(
  // initialLocation: ,Aqui se mostrará la primer ruta
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/progress',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
  ],
);
