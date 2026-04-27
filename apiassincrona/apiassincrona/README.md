# Batman Movies API — Dart

## 1.
IMDB iamidiotareyoutoo, uma API pública que busca filmes pelo nome.
https://imdb.iamidiotareyoutoo.com/search?q=Batman

## 2.
Os dados vieram dentro de um objeto e a lista de filmes estava guardada dentro da chave "description". Foi necessário acessar essa chave para obter a lista de filmes.

## 3.
O código percorre a lista em memória com removeWhere e remove o filme cujo título seja igual ao digitado. Depois, a lista atualizada sobrescreve o arquivo backup_batman.json, garantindo que o filme não permaneça no disco.

## 4.
Depende. Se houver internet, sim, pois o programa busca os dados da API novamente e ela ainda contém o filme. Se não houver internet, não, pois o programa carrega o backup local que já foi salvo sem o filme deletado.
