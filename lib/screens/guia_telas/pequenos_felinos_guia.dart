import 'package:flutter/material.dart';

class PequenosFelinosGuiaScreen extends StatelessWidget {
  const PequenosFelinosGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pequenos Felinos",
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
            _buildSectionTitle("Pequenos Felinos"),
            _buildParagraph(
                "Apesar da diferença de tamanho em relação aos seus parentes maiores, esses animais compartilham os mesmo hábitos comportamentais e alimentares dos grandes felinos - com exceção do gato-mourisco, que possui hábitos diurnos. Também estão ameaçados pela perda de habitat e pelos atropelamentos. Algumas espécies foram muito caçadas por conta de sua pelagem, como a Jaguatirica e, hoje, ainda são por conta de retaliação à ataques em galinheiros."),
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

            _buildParagraph("O gato-mourisco possui pupilas adaptadas para a vida diurna."),
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
