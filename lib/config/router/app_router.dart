import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/animated/animated_Screen.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';
import 'package:widgets_app/presentation/screens/infinite_scroll/infinite_scroll_screen.dart';
import 'package:widgets_app/presentation/screens/progress/progress_screen.dart';
import 'package:widgets_app/presentation/screens/snackbar/snackbar_screen.dart';
import 'package:widgets_app/presentation/screens/ui_controls/ui_controls_screen.dart';

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
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackBar',
      builder: (context, state) => const SnackBarScreen(),
    ),
    GoRoute(
      path: '/animated',
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/uicontrol',
      builder: (context, state) => const UiControlsScreen(),
    ),
    GoRoute(
      path: '/infinitescroll',
      builder: (context, state) => const InfiniteScrollScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
  ],
);
