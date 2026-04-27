Para provar que você entendeu de onde os dados vieram, responda:
Qual API você escolheu? Cole aqui o link direto para a documentação dela.
Explicando o JSON: Como era a estrutura do dado que a API te entregou? A lista já veio direto no começo da resposta [ ] ou os dados estavam guardados dentro de alguma chave (como "data", "results" ou "users")? Você precisou extrair dados de algum objeto que estava dentro de outro objeto?
Quando você usa a opção "Deletar" no seu menu, qual é o passo a passo que o seu código faz para garantir que o item seja apagado de verdade do arquivo backup_api.json?
Se você fechar o programa e abrir de novo, o item que você deletou antes ainda vai estar lá? Explique por quê.

Respostas
1- https://imdb.iamidiotareyoutoo.com/search?q=Spiderman, Puxa varios filmes do homem aranha
2- Os resultados vieram dentro de description[], onde dentro dele, estava os filmes ex:"description", precisei de extrair oq tava dentro dele: [
    {
      "#TITLE": "Spider-Man",
      "#YEAR": 2002,
      "#IMDB_ID": "tt0145487",
      "#RANK": 544,
      "#ACTORS": "Tobey Maguire, Kirsten Dunst",
      "#AKA": "Spider-Man (2002) ",
      "#IMDB_URL": "https://imdb.com/title/tt0145487",
      "#IMDB_IV": "https://IMDb.iamidiotareyoutoo.com/title/tt0145487",
      "#IMG_POSTER": "https://m.media-amazon.com/images/M/MV5BZWM0OWVmNTEtNWVkOS00MzgyLTkyMzgtMmE2ZTZiNjY4MmFiXkEyXkFqcGc@._V1_.jpg",
      "photo_width": 511,
      "photo_height": 755
    },
3- ele solicita o nome e utiliza o metodo   listaLocal.removeWhere((filme) {
        return filme.titulo.toLowerCase() == pesquisa.toLowerCase();
      }); para percorrer a lista, e procurar o filme com o nome informado pelo usuario

4- Sim, porque sempre quando o programa roda, ele roda a api e salva no banco de dados json