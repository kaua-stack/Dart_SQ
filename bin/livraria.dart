void main() {

  List<Map<String, dynamic>> livros = [];

  Livro livro1 = Livro("senac front" , 'senac', 5);

  print('o ${livro1.nome} autor ${livro1.autor} ano ${livro1.anoP}');


  cadastrarLivro(
      livros,
      'Dom Casmurro',
      'Machado de Assis',
      256);

  cadastrarLivro(
      livros,
      'Harry Potter',
      'J.K Rowling',
      320);

  listarLivros(livros);

  buscarLivro(livros, 'Harry Potter');

  emprestarLivro(livros, 'Harry Potter');

  mostrarEmprestados(livros);

  devolverLivro(livros, 'Harry Potter');

  mostrarDisponiveis(livros);
}

void cadastrarLivro(
    List<Map<String, dynamic>> livros,
    String titulo,
    String autor,
    int paginas) {

  livros.add({
    'titulo': titulo,
    'autor': autor,
    'paginas': paginas,
    'disponivel': true,
  });
}

void listarLivros(List<Map<String, dynamic>> livros) {

  print('\n=== LISTA DE LIVROS ===');

  for (int i = 0; i < livros.length; i++) {

    print('${i + 1} - ${livros[i]['titulo']}');
    print('Autor: ${livros[i]['autor']}');
    print('Páginas: ${livros[i]['paginas']}');

    if (livros[i]['disponivel']) {
      print('Status: Disponível');
    } else {
      print('Status: Emprestado');
    }

    print('');
  }
}

void buscarLivro(
    List<Map<String, dynamic>> livros,
    String titulo) {

  for (Map<String, dynamic> livro in livros) {

    if (livro['titulo'] == titulo) {
      print('\nLivro encontrado!');
      print('Título: ${livro['titulo']}');
      print('Autor: ${livro['autor']}');
      return;
    }
  }

  print('\nLivro não encontrado.');
}

void emprestarLivro(
    List<Map<String, dynamic>> livros,
    String titulo) {

  for (Map<String, dynamic> livro in livros) {

    if (livro['titulo'] == titulo) {

      if (livro['disponivel']) {
        livro['disponivel'] = false;
        print('\nLivro emprestado.');
      } else {
        print('\nLivro já está emprestado.');
      }

      return;
    }
  }
}

void devolverLivro(
    List<Map<String, dynamic>> livros,
    String titulo) {

  for (Map<String, dynamic> livro in livros) {

    if (livro['titulo'] == titulo) {

      livro['disponivel'] = true;
      print('\nLivro devolvido.');
      return;
    }
  }
}

void excluirLivro(
    List<Map<String, dynamic>> livros,
    String titulo) {

  for (int i = 0; i < livros.length; i++) {

    if (livros[i]['titulo'] == titulo) {
      livros.removeAt(i);
      print('\nLivro removido.');
      return;
    }
  }
}

void mostrarDisponiveis(List<Map<String, dynamic>> livros) {

  print('\n=== LIVROS DISPONÍVEIS ===');

  for (Map<String, dynamic> livro in livros) {

    if (livro['disponivel']) {
      print(livro['titulo']);
    }
  }
}

void mostrarEmprestados(List<Map<String, dynamic>> livros) {

  print('\n=== LIVROS EMPRESTADOS ===');

  for (Map<String, dynamic> livro in livros) {

    if (!livro['disponivel']) {
      print(livro['titulo']);
    }
  }
}



class Livro{
  String nome ;
  String autor ;
  int anoP ;

  Livro(this.nome, this.autor , this.anoP);
}