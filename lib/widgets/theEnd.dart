import 'dart:io';
import 'package:flutter/material.dart';


class TheEnd extends StatelessWidget {
  const TheEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: const Text("Playground - It's Over"),
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Fim..",
                style: TextStyle(
                    fontFamily: 'verdana',
                    fontSize: 32,
                    color: Colors.blue[900]
                ),
              ),
                SizedBox(
                      height: 100,
                    ),
                    ElevatedButton(
                      child: Text("Sair do App"),
                      onPressed: () {
                         exit(0);
                      },
                )
            ],
          )
        ),),
    );
  }
}