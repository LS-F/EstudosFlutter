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
      TodoAtividade(id: '1', atividade: 'Chapeleta'),
      TodoAtividade(id: '2', atividade: 'Jogar', concluido: true),
      TodoAtividade(id: '3', atividade: 'Chapeleta'),
      TodoAtividade(id: '4', atividade: 'poeira', concluido: true),
      TodoAtividade(id: '5', atividade: 'Provider'),
    ];

  }

}

