import 'package:flutter/material.dart';

class GrandesPrimatasBrasileirosGuiaScreen extends StatelessWidget {
  const GrandesPrimatasBrasileirosGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Grandes Primatas Brasileiros",
          style: TextStyle(color: Colors.white), // Cor do título alterada
        ),
        backgroundColor: const Color(0xFF287240),
        iconTheme: const IconThemeData(color: Colors.white), // Garante que o ícone de voltar seja branco
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle("Grandes Primatas Brasileiros"),
            _buildParagraph(
                "Logo ao entrar no Zoo, você provavelmente vai se deparar com os bugios e o guariba fazendo um barulho muito alto. Mas não se assuste, é um comportamento natural de vocalização utilizado para comunicação e marcação de território."),
            const SizedBox(height: 16),
            _buildParagraph(
                "Os grandes primatas brasileiros têm algumas características em comum. Eles possuem hábitos arborícolas, ou seja, passam a maior parte do tempo em cima das árvores, se movimentando por braquiação (agarrando-se de galho em galho) e utilizando a sua cauda preênsil, que funciona como um quinto membro."),
            const SizedBox(height: 16),

            // Comentário para o futuro carrossel de imagens
            // TODO: Implementar carrossel de imagens aqui
            /*
            Container(
              height: 200,
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              color: Colors.grey[300],
              alignment: Alignment.center,
              child: const Text(
                'Placeholder para Carrossel de Imagens',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            */
            const SizedBox(height: 16),

            _buildParagraph(
                "Os recintos dos grandes primatas são bastante altos e com diversas estruturas para os animais subirem. A arquitetura do recinto faz com que eles explorem os seus hábitos naturais, o que auxilia na manutenção do bem-estar."),
            const SizedBox(height: 24),

            _buildSectionTitle("Macaco só come banana?"),
            _buildParagraph(
                "Não! Os primatas brasileiros têm uma dieta riquíssima com grande variedade de frutas, verduras e legumes, além da ração, que é a base de sua alimentação no Zoo por ser própria para os primatas."),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Color(0xFF287240),
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: const TextStyle(fontSize: 18, height: 1.5),
    );
  }
}
