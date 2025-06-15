import 'package:flutter/material.dart';
import 'package:playgroundflutter/widgets/validador_cpf.dart';
import 'package:playgroundflutter/widgets/todo_item.dart';
import 'package:playgroundflutter/model/todo_atividade.dart';

class todoList extends StatefulWidget {
  const todoList({super.key});

  @override
  State<todoList> createState() => _todoListState();
}

class _todoListState extends State<todoList> {

  final listaDeAtividades = TodoAtividade.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Playground - ToDo List"),
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: ListView(
                    children: [
                      for( TodoAtividade atividade in listaDeAtividades )
                      TodoItem(atividades: atividade)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text("Retornar"),
                      onPressed: () {
                        Navigator.pop(context,MaterialPageRoute(builder: (context) => const ValidadorCpf()));
                      },
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      child: Text("Próxima tela"),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.pink
                ),
              ),
              ],
            )
          )
        ],
      ),
    );
  }
}
