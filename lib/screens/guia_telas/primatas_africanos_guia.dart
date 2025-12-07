import 'package:flutter/material.dart';

class PrimatasAfricanosGuiaScreen extends StatelessWidget {
  const PrimatasAfricanosGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4D2B6),
      appBar: AppBar(
        title: const Text(
          "Primatas Africanos",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF287240),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle("Primatas Africanos"),
            _buildParagraph(
                "Habitantes das savanas africanas, esses animais possuem hábitos terrícolas, ficando mais no chão do que no alto de árvores."),
            const SizedBox(height: 16),
            _buildParagraph(
                "Por isso, diferentemente dos recintos de seus parentes brasileiros, os recintos do Primatas Africanos são mais compridos do que altos e não possuem muitas estruturas para escalada."),
            const SizedBox(height: 24),

            _buildSectionTitle("Você já viu um macaco-pata correndo?"),
            _buildParagraph(
                "Esse é um comportamento natural desses animais. Enquanto um indivíduo corre de um lado para o outro, confundindo o predador, os outros se escondem para escapar."),
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
                "Os primatas africanos também são animais onívoros, por isso a dieta deles aqui no zoo é rica em frutas e verduras que variam com a sazonalidade, além de proteína animal (carne ou ovo)."),
            const SizedBox(height: 16),

            _buildParagraph(
                "Outro fator que influencia na montagem das dietas são as particularidade de cada indivíduo. Um exemplo disso é o mandril macho, que é diabético e segue uma dieta mais rígida do que os demais, com poucas frutas por conta da frutose."),

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
      style: const TextStyle(fontSize: 18, height: 1.5, color: Colors.black87),
    );
  }
}
