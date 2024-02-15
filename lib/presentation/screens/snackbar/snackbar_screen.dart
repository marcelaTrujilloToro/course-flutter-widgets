import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text(
                  'Cupidatat sit ex officia fugiat adipisicing ex deserunt ad exercitation dolore esse qui.'),
              content: const Text(
                  'Consequat proident dolore irure aliquip deserunt reprehenderit ut non aute veniam. Ex mollit ullamco Lorem dolore deserunt anim. Enim enim labore dolor ut veniam ad sint incididunt occaecat. Magna quis nisi enim officia nulla velit ad exercitation in sit laborum incididunt in.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(), child: Text('Cancelar')),
                FilledButton(
                    onPressed: () => context.pop(), child: Text('Aceptar'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars y dialogos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Ex aliquip nulla ea adipisicing pariatur fugiat adipisicing excepteur commodo nostrud commodo. Nisi sunt laborum culpa id pariatur do pariatur tempor fugiat proident in qui sint ipsum. Officia deserunt exercitation eiusmod exercitation dolor labore sunt in. Dolor ullamco commodo tempor sit tempor sint esse id laboris tempor commodo reprehenderit eiusmod. Consectetur cillum qui esse laboris ex proident. Non ut pariatur cillum deserunt sunt ullamco voluptate id non. Sint labore velit velit reprehenderit nostrud duis ut voluptate nisi quis esse amet.')
                  ]);
                },
                child: const Text('Licencias usadas')),
            const SizedBox(height: 5),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_rounded),
      ),
    );
  }
}
