class Tarefa {
  String titulo;
  String descricao;
  int prioridade;
 
  bool _concluida = false;
 
  static List<Tarefa> tarefas = [];
 
  Tarefa(
    this.titulo,
    this.descricao,
    this.prioridade
  );
 
  bool get concluida => _concluida;
 
  void adicionar() {
    tarefas.add(this);
  }
 
  void concluir() {
    _concluida = true;
  }
 
  void executar() {
    print('Executando tarefa: $titulo');
  }
 
  static void listar() {
    for (Tarefa tarefa in tarefas) {
      print('');
      print('Titulo: ${tarefa.titulo}');
      print('Descricao: ${tarefa.descricao}');
      print('Concluida: ${tarefa.concluida}');
      print('Prioridade: ${tarefa.prioridade}');
    }
  }
}
 // herança
class TarefaUrgente extends Tarefa {
  TarefaUrgente(
    String titulo,
    String descricao,
    int prioridade,
  ) : super(titulo, descricao, prioridade);
 
  @override  // polimorfismo 
  void executar() {
    print('URGENTE!!!!! Executando tarefa');
  }
}
 
void main() {
  Tarefa tarefa1 = Tarefa('Estudar Dart', 'Aprender Orientação a objetos', 1);
 
  Tarefa tarefa2 = Tarefa(
    'Fazer Exercício',
    'Praticar classes',
    2,
  );
 
  TarefaUrgente tarefa3 = TarefaUrgente('Entregar projeto', 'finalizar', 1);
 
  tarefa1.adicionar();
  tarefa2.adicionar();
  tarefa3.adicionar();
 
  tarefa1.concluir();
  tarefa3.concluir();
 
  tarefa1.executar();
  tarefa3.executar();
 
  Tarefa.listar();
 
  print(tarefa1.concluida);
 
 
}