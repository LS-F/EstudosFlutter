import 'package:flutter/material.dart';
import 'package:playgroundflutter/main.dart';
import 'package:playgroundflutter/screens/validador_cpf.dart';
// import 'dart:convert' as convert;
// import 'package:http/http.dart' as http;

class ImageSize extends StatefulWidget {
  const ImageSize({super.key});

  @override
  State<ImageSize> createState() => _ImageSizeState();
}

class _ImageSizeState extends State<ImageSize> {
  var _altura = 100.0;
  var _lagura = 100.0;

  void incrementar(){
    setState(() {
       _altura+= 10;
       _lagura+= 10;
    });
   
  }

  void decrementar(){
    setState(() {
          _altura-= 10;
          _lagura-= 10;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Playground - Dimensão imagem'),
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 250,
              child: Center(
                child:Image.asset('lib/assets/images/dog_nerd.png', 
                  height:_altura , 
                  width: _lagura ),
              )
              
            ),
            const SizedBox(
                  height: 100,
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    decrementar();
                  },
                    icon: const Icon(Icons.remove),
                    label: const Text('Diminuir Imagem'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    incrementar();
                  },
                    icon: const Icon(Icons.add),
                    label: const Text('Aumentar Imagem'),
                ),
              ],
            ),
            
            const SizedBox(
              height: 45,
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
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  child: const Text(' Próxima tela'),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ValidadorCpf()),
                  );
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
