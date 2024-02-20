import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ButtonsScreen"),
          centerTitle: true,
        ),
        body: const ButtonsView(),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.arrow_circle_left),
            onPressed: () {
              context.pop();
            }),
      ),
    );
  }
}

class ButtonsView extends StatelessWidget {
  const ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: Wrap(
          spacing: 15,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Botón elevado')),
            const ElevatedButton(onPressed: null, child:  Text('Botón desactivado')),
            ElevatedButton.icon(
              onPressed:(){},
              icon: const Icon(Icons.access_alarms_sharp),
              label: const Text('Botón de alarma')),
            FilledButton(onPressed: (){}, child: const Text('Hola mundo')),
            FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.home_outlined), label: const Text('Boton de casa'))
          ],
        ),
      ),
    );
  }
}
