import 'package:flutter/material.dart';

class CorujasGuiaScreen extends StatelessWidget {
  const CorujasGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Corujas"),
        backgroundColor: const Color(0xFF287240),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle("Corujas"),
            _buildParagraph(
                "Assim como águias e gaviões, as corujas também são aves de rapina. Excelentes caçadoras noturnas, elas possuem diversas adaptações para a caça, a começar pelo alto número de bastonetes (células sensíveis à luz) na retina, o que permite uma precisão visual mesmo em baixos níveis de iluminação."),
            const SizedBox(height: 16),

            _buildParagraph(
                "Elas também possuem garras extremamente afiadas e fortes para segurar e transportar suas presas, além de vértebras a mais no pescoço e uma forte musculatura que permite que elas consigam girar a cabeça em 270º para observar o ambiente sem deslocar o corpo."),
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

            _buildParagraph(
                "As corujas também têm audição extremamente desenvolvida e precisa, com um ouvido voltado para cima e outro para baixo, fazendo com que elas consigam captar sons vindos de diferentes direções."),
            const SizedBox(height: 16),

            _buildParagraph(
                "As suas penas tornam o voo mais silencioso, para que as presas não notem sua chegada."),
            const SizedBox(height: 16),

             _buildParagraph(
                "Todas essas características contribuem para o seu papel no controle de populações dos animais predados por elas, como ratos e camundongos."),

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
