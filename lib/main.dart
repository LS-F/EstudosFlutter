import 'package:flutter/material.dart';
import 'package:playgroundflutter/class/testes.dart';
import 'package:playgroundflutter/screens/ImageSize.dart';

void main() {
  runApp(const PlayGround());
}

class PlayGround extends StatelessWidget {
  const PlayGround({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playground',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Playground - Mudando cores'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> changeColor = [
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 50,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      setState(() {
                        changeColor[0] = newColor();
                      });
                    },
                    backgroundColor: changeColor[0],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      setState(() {
                        changeColor[1] = newColor();
                      });
                    },
                    backgroundColor: changeColor[1],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      setState(() {
                        changeColor[2] = newColor();
                      });
                    },
                    backgroundColor: changeColor[2],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 50,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      setState(() {
                        changeColor[3] = newColor();
                      });
                    },
                    backgroundColor: changeColor[3],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      setState(() {
                        changeColor[4] = newColor();
                      });
                    },
                    backgroundColor: changeColor[4],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      setState(() {
                        changeColor[5] = newColor();
                      });
                    },
                    backgroundColor: changeColor[5],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 50,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      setState(() {
                        changeColor[6] = newColor();
                      });
                    },
                    backgroundColor: changeColor[6],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      setState(() {
                        changeColor[7] = newColor();
                      });
                    },
                    backgroundColor: changeColor[7],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: FloatingActionButton(
                    heroTag: null,
                    onPressed: () {
                      setState(() {
                        changeColor[8] = newColor();
                      });
                    },
                    backgroundColor: changeColor[8],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 150,
              height: 45,
              child: FloatingActionButton(
                heroTag: null,
                child: const Text("Próxima Tela"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ImageSize()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
