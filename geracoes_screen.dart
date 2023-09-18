import 'package:flutter/material.dart';
import 'generation.dart'; // Importe o modelo de geração aqui
// Importe o modelo de item de geração aqui
import 'detalhes_geracao_screen.dart'; // Importe o arquivo de detalhes da geração aqui

class GeracoesScreen extends StatelessWidget {
  final List<Generation> generations;

  GeracoesScreen(this.generations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerações de Pokémon'),
      ),
      body: ListView.builder(
        itemCount: generations.length,
        itemBuilder: (ctx, index) {
          final generation = generations[index];

          return ListTile(
            title: Text(generation.title),
            onTap: () {
              // Navegue para a tela de detalhes quando o item for clicado
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetalhesGeracaoScreen(generation),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
