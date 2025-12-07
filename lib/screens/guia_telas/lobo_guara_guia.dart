import 'package:flutter/material.dart';

class LoboGuaraGuiaScreen extends StatelessWidget {
  const LoboGuaraGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4D2B6),
      appBar: AppBar(
        title: const Text(
          "Lobo-guará",
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
            _buildSectionTitle("Lobo-Guará"),
            _buildParagraph(
                "Espécie emblemática do nosso país, esse canídeo está ameaçado de extinção principalmente pela perda de habitat devido ao desmatamento e às queimadas, mas os números de animais mortos por atropelamento e caça também são expressivos."),
            const SizedBox(height: 16),
            _buildParagraph(
                "Onívoro, consome diversos frutos, mas também não dispensa carne. Sua dieta no Zoo é muito variada, com frutas, legumes, carne e ração."),
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
                "Aqui no Zoo, usamos a fruta do lobo (ou lobeira), para fazer enriquecimento ambiental para os lobos-guarás. Ela tem um formato arredondado, cor verde e cheiro doce. É um dos frutos mais presentes nas dietas desses animais na natureza."),
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
