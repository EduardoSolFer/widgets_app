import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackBar_Screen';

  const SnackBarScreen({super.key});

  void openDialog(BuildContext context) {
    showDialog(barrierDismissible: false,  //Cerrar dialogo solod esde botónes
        context: context ,
        builder: ((context) => AlertDialog(
              title: const Text('Titulo de prueba'),
              content: const Text(
                  'Sit irure laborum nostrud commodo ullamco elit duis ad et est aliqua elit. Irure magna consectetur cupidatat in elit excepteur ullamco in adipisicing ipsum. Excepteur irure excepteur voluptate qui sit enim. Enim incididunt qui nisi Lorem Lorem voluptate incididunt aute nulla reprehenderit consequat. Eiusmod cillum mollit id dolore. Do ipsum consequat incididunt in. Proident aliqua cupidatat deserunt ullamco laboris.'),
            actions: [
              TextButton(onPressed: ()=>context.pop(), child: const Text('Tengo sueño?')),
              FilledButton(onPressed: ()=>context.pop(), child: const Text('Tengo hambre?'))],
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              FilledButton.tonal(
                  onPressed: () {
                    showAboutDialog(
                      context: context,
                      children: [
                        const Text(
                            'Ut quis nostrud veniam id incididunt cillum dolor nulla.'),
                      ],
                    );
                  },
                  child: const Text('Licencias de uso')),
              FilledButton.tonal(
                  onPressed: () => openDialog(context), child: const Text('Versión')),
              const SnackBarExample(),
            ],
          ),
        ));
  }
}

class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Show Snackbar'),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Awesome Snackbar!'),
            action: SnackBarAction(
              label: 'Action',
              onPressed: () {
                // Code to execute.
              },
            ),
          ),
        );
      },
    );
  }
}
