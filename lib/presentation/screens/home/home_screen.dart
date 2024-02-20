import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets en flutter"),
        centerTitle: true,
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListView.builder(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemCount: appMenuItems.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(
            appMenuItems[index].icon,
            color: colors.primary,
          ),
          title: Text(" ${appMenuItems[index].title}"),
          subtitle: Text(' ${appMenuItems[index].subTitle}'),
          //trailing: Text(" ${appMenuItems[index].link}"),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            // context.go('/lib/presentation/screens/buttons/buttons_screen.dart');
            // context.go('/lib/presentation/screens/cards/cards_screen.dart');
            context.push(appMenuItems[index].link);
            // Navigator.pushNamed(context, appMenuItems[index].link);
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const ButtonsScreen(),
            //   ),
            // );
          },
        );
      },
    );
  }
}
