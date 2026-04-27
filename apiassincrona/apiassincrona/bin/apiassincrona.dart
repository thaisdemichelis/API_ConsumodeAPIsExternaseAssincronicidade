import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class Batman {
  final String titulo;
  final int ano;
  final String atores;
  final int rank;
  final String aka;

  Batman({
    required this.titulo,
    required this.ano,
    required this.atores,
    required this.rank,
    required this.aka,
  });

  factory Batman.fromJson(Map<String, dynamic> json) {
    return Batman(
      titulo: json['#TITLE'] ?? '',
      ano: json['#YEAR'] ?? 0,
      atores: json['#ACTORS'] ?? '',
      rank: json['#RANK'] ?? 0,
      aka: json['#AKA'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '#TITLE': titulo,
      '#YEAR': ano,
      '#ACTORS': atores,
      '#RANK': rank,
      '#AKA': aka,
    };
  }

  void exibirDetalhes() {
    print('---------------------------');
    print('Título : $titulo');
    print('Ano    : $ano');
    print('Atores : $atores');
    print('Rank   : $rank');
    print('AKA    : $aka');
  }
}

Future<List<dynamic>> buscarFilmesBatman() async {
  final url = Uri.parse('https://imdb.iamidiotareyoutoo.com/search?q=Batman');

  final resposta = await http.get(url);

  if (resposta.statusCode == 200) {
    Map<String, dynamic> corpoDaResposta = jsonDecode(resposta.body);
    return corpoDaResposta['description'];
  } else {
    throw Exceptio