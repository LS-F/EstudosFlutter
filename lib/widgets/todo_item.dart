import 'package:flutter/material.dart';
import 'package:playgroundflutter/model/todo_atividade.dart';

class TodoItem extends StatelessWidget {
  final TodoAtividade atividades;
  const TodoItem({super.key, required this.atividades});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: (){
          print('Apertou no icone');
        },
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
        tileColor: const Color.fromARGB(255, 228, 206, 206),
        leading: Icon(
          atividades.concluido? Icons.check_box:Icons.check_box_outline_blank,color: const Color.fromARGB(255, 160, 155, 155),),
        title: Text(atividades.atividade!,
          style:TextStyle(fontSize: 10,color: Colors.red,
          decoration: atividades.concluido? TextDecoration.lineThrough: null),),
        trailing: Container(
          padding: EdgeInsets.all(0),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5)
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: (){
              print('Apertou no botão');
            },
          ),
        ),
     
      ),
    );
  }
}