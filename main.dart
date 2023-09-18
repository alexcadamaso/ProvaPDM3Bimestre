import 'package:flutter/material.dart';
import 'generation.dart'; // Importe o modelo de geração aqui
import 'geracoes.dart'; // Importe sua lista de gerações aqui
import 'geracoes_screen.dart'; // Importe a tela de gerações aqui

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Converte a lista de Geracao para Generation
    final List<Generation> generations = geracoes.map((geracao) {
      return Generation(
        title: geracao.titulo,
        pokemons: geracao.imagensPokemons,
      );
    }).toList();

    return MaterialApp(
      title: 'Pokémon Generations',
      home: GeracoesScreen(generations),
    );
  }
}
