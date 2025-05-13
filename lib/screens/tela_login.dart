import 'package:flutter/material.dart';
import 'package:playgroundflutter/main.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Playground'),
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.primary),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Container(
                  width: 100,
                  height: 240,
                  decoration: const BoxDecoration(
                    border:Border(
                      )),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('Retornar'),
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PlayGround()),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text(' Próxima tela'),
                  onPressed: () {
                    // Navigate to the second screen when tapped.
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
