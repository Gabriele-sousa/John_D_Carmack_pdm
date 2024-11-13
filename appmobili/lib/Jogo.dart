class Jogo {
  final String? titulo;
  final List imagem;
  final String nome;
  final String texto;
  final String textojogabilidade;

  Jogo({
    required this.imagem,
    this.titulo,
    required this.texto,
    required this.nome,
    required this.textojogabilidade,
  });
}
