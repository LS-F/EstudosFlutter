import 'package:flutter/material.dart';
import 'package:playgroundflutter/screens/validador_cpf.dart';

class todoList extends StatefulWidget {
  const todoList({super.key});

  @override
  State<todoList> createState() => _todoListState();
}

class _todoListState extends State<todoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Playground - TodoList"),
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Expanded(
            child:  ListView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(20.0),
              children: [
                Text("Texto 1"),
                Text("Texto 2"),
                Text("Texto 3"),
                Text("Texto 4"),
                Text("Texto 5"),
                Text("Texto 6"),
                Text("Texto 7"),
                Text("Texto 8"),
                Text("Texto 9"),
                Text("Texto 10"),
                Text("Texto 11"),
              ],
            ),
           ),
            SizedBox(
              height:20 ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                child: Text("Retornar"),
                onPressed: (){
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const ValidadorCpf()));
                },  
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                child: Text("Próxima tela"),
                onPressed: (){
                  
                },  
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}