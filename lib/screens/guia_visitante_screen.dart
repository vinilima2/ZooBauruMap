import 'package:flutter/material.dart';

class GuiaVisitanteScreen extends StatelessWidget {
  const GuiaVisitanteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de categorias na ordem do guia
    final List<String> categorias = [
      'Grandes Primatas Brasileiros',
      'Pequenos Primatas Brasileiros',
      'Psitacídeos',
      'Tamanduás',
      'Primatas Africanos',
      'Suricata, Mangusto e Furão',
      'Ratitas',
      'Corujas',
      'Cervídeos',
      'Aves de Rapina',
      'Camelídeos',
      'Grandes Felinos',
      'Anta',
      'Pequenos Felinos',
      'Lobo-guará',
      'Irara',
      'Flamingos',
      'Pinguins',
      'Répteis',
      'Cangurus',
      'Aves Ribeirinhas',
      'Tucanos e Araçaris',
      'Mutuns e Jacus',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Guia Educativo'),
        backgroundColor: const Color(0xFF287240),
      ),
      body: ListView.builder(
        itemCount: categorias.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: ListTile(
              title: Text(categorias[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // TODO: Navegar para a tela de detalhes da categoria
                print('Clicou em ${categorias[index]}');
              },
            ),
          );
        },
      ),
    );
  }
}
