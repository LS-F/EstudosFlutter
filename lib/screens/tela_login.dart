import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 250,
              child: TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                  border:OutlineInputBorder() ,
                  labelText: "Nome:"),
              ),
            ),

            // Container(
            //   width: 400,
            //   height: 240,
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Colors.black,
            //       width: 3,
            //     ),
            //   ),
            // ),
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
                const SizedBox(
                  width: 20,
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
