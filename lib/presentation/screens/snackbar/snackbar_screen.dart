import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = "snackbar_screen";
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Voluptate ipsum ex excepteur occaecat excepteur fugiat laborum. Ad magna ut aute nostrud excepteur sit consequat id nulla eu. Fugiat ad labore do labore proident irure mollit dolore ut ea ea Lorem dolore sit.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Lorem fugiat dolor laborum officia culpa irure mollit. Irure irure nostrud laborum non. Et cillum et velit aliquip ipsum sunt adipisicing. Minim reprehenderit id exercitation culpa officia ex irure et. Nostrud pariatur in aute ex mollit irure sunt amet aute elit. Esse qui mollit aute Lorem quis quis nulla proident amet esse sit commodo in culpa. Ea consequat cupidatat sit consequat consequat eu nisi aute culpa.')
                ]);
              },
              child: Text('Licencias Usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text('Mostrar dialogo'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('mostrar snackbar'),
        icon: const Icon(Icons.remove_circle_outline),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
