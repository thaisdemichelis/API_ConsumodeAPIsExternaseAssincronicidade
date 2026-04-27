class Batman {
  String titulo;
  int ano;
  String atores;
  int ranking;
  String abreviado;

  Batman(this.titulo, this.ano, this.atores, this.ranking, this.abreviado);

  factory Batman.fromJson(Map<String, dynamic> json) {
    return Batman(
      json['#TITLE'],
      int.parse(json['#YEAR'].toString()),
      json['#ACTORS'],
      int.parse(json['#RANK'].toString()),
      json['#AKA'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '#TITLE': titulo,
      '#YEAR': ano,
      '#ACTORS': atores,
      '#RANK': ranking,
      '#AKA': abreviado,
    };
  }

  void exibirDetalhes() {
    print('Nome filme: $titulo');
    print('Ano: $ano');
    print('Atores: $atores');
    print('Ranking: $ranking');
    print('AKA: $abreviado');
    print('----------------------');
  }
}