import 'package:flutter/material.dart';
import 'generation.dart'; // Importe o modelo de geração aqui

class DetalhesGeracaoScreen extends StatelessWidget {
  final Generation generation;

  DetalhesGeracaoScreen(this.generation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Geração'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Você clicou na geração: ${generation.title}'),
          // Exibir imagens dos Pokémon desta geração
          Expanded(
            child: ListView.builder(
              itemCount: generation.pokemons.length,
              itemBuilder: (ctx, index) {
                return Image.asset(generation.pokemons[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
