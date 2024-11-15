class BiografiaClass {
  final String titulo;
  final String nome;
  final String idade;
  final String descricao;

  const BiografiaClass({
    required this.titulo, // usado para marcar que um parâmetro nomeado do construtor é obrigatório
    required this.nome,
    required this.idade,
    required this.descricao,
  });
}
