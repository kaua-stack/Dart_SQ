void main() {
  List<Map<String, dynamic>> tarefas = [];
 
  adicionarTarefa(tarefas, 'Estudar Dart', 'Estudar funções', 1);
  adicionarTarefa(tarefas, 'Estudar Flutter', 'Estudar Árvore de Widgets', 2);
 
 
  listarTarefas(tarefas);
 
  concluirTarefa(tarefas, 0);
 
  listarTarefas(tarefas);
 
}
 
void listarTarefas(List<Map<String, dynamic>> tarefas) {
  for (int i = 0; i < tarefas.length; i++) {
    print('${i + 1} - ${tarefas[i]['titulo']}');
    print('Descrição: - ${tarefas[i]['descricao']}');
 
    if (tarefas[i]['concluida']) {
      print("Status: concluida");
    } else {
      print('Status: Pendente');
    }
    print('Prioridade: ${tarefas[i]['prioridade']}');
    print('');
  }
  }
 
 
void adicionarTarefa(
  List<Map<String, dynamic>> tarefas,
  String titulo,
  String descricao,
  int prioridade,
) {
  tarefas.add({
    'titulo': titulo,
    'descricao' : descricao,
    'concluida': false,
    'prioridade': prioridade
  });
}
 
void concluirTarefa(
  List<Map<String, dynamic>> tarefas,
  int indice,
) {
    tarefas[indice]['concluida'] = true;
}
 