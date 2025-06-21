class TodoAtividade {

  String? id;
  String? atividade;
  bool concluido;

 TodoAtividade({
  required this.id,
  required this.atividade,
  this.concluido = false

  }
 );

  static List<TodoAtividade> todoList(){

    return[
      TodoAtividade(id: '1', atividade: 'Atividade 1'),
      TodoAtividade(id: '2', atividade: 'Atividade 2', concluido: true),
      TodoAtividade(id: '3', atividade: 'Atividade 3'),
      TodoAtividade(id: '4', atividade: 'Atividade 4', concluido: true),
      TodoAtividade(id: '5', atividade: 'Atividade 5'),
    ];

  }

}

