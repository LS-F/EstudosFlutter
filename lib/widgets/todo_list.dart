import 'package:flutter/material.dart';
import 'package:playgroundflutter/widgets/validador_cpf.dart';
import 'package:playgroundflutter/widgets/todo_item.dart';
import 'package:playgroundflutter/model/todo_atividade.dart';
import 'package:playgroundflutter/widgets/theEnd.dart';

class todoList extends StatefulWidget {
  const todoList({super.key});

  @override
  State<todoList> createState() => _todoListState();
}

class _todoListState extends State<todoList> {

  final listaDeAtividades = TodoAtividade.todoList();
  final _listaDeAtividades = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Playground - ToDo List"),
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: 
      Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      for (TodoAtividade atividade in listaDeAtividades)
                        TodoItem(
                          atividades: atividade,
                          mudouStatusAtividade: _mudoStatusAtv,
                          deletaAtividade: _deletaItem,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            width: 400,
            bottom: 80,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                        right: 20,
                        left: 20,
                        top:20
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 9.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: _listaDeAtividades,
                        decoration: InputDecoration(
                          hintText: "Adicionar nova atividade",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(bottom:10, right: 20),
                    // padding: EdgeInsets.all(8.0),
                    // decoration: BoxDecoration(
                    //   shape: BoxShape.rectangle,
                    //   borderRadius: BorderRadius.all(Radius.zero)
                    // ),
                    child: ElevatedButton(
                      child: Text('+', style: TextStyle(fontSize: 40),),
                      onPressed: (){
                        _adicionaItem(_listaDeAtividades.text);
                      },
                      style: ElevatedButton.styleFrom(
                        shape:CircleBorder() ,
                        backgroundColor: Colors.blue,
                        minimumSize: Size(60, 60),
                        elevation: 10,
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
           Positioned(
            bottom: 40,
            right: 70,
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text("Retornar"),
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ValidadorCpf()));
                      },
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      child: Text("Próxima tela"),
                      onPressed: () {
                         Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => const TheEnd()));
                      },
                    )
                  ],
                ),
          ),
        ],
      ),
    );
  }

  void _mudoStatusAtv(TodoAtividade atividade) {
    setState(() {
      atividade.concluido = !atividade.concluido;
    });
  }

  void _deletaItem( String id){
    setState(() {
      listaDeAtividades. removeWhere((item) => item.id == id);
    });

  }

  void _adicionaItem( String atividade){
    setState(() {
      if (atividade.isNotEmpty) {
        listaDeAtividades.add(TodoAtividade(id: DateTime.now().microsecondsSinceEpoch.toString(), atividade: atividade));
      };
    });
    _listaDeAtividades.clear();
  }

}
