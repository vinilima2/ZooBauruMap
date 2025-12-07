import 'package:flutter/material.dart';

class TucanosAracarisGuiaScreen extends StatelessWidget {
  const TucanosAracarisGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4D2B6),
      appBar: AppBar(
        title: const Text(
          "Tucanos e Araçaris",
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
            _buildSectionTitle("Tucanos e Araçaris"),
            _buildParagraph(
                "Tucanos e araçaris compartilham algumas características em comum, como as cores exuberantes, a posição dos dedos (2º e 3º virados para a frente, 1º e 4º para trás) e o emblemático bico, que apesar de grande e resistente, é extremamente leve devido às cavidades ocas no seu interior."),
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
                "Os bicos possuem bordas serrilhadas que auxilia na dieta, composta principalmente por frutos, sementes e pequenos vertebrados, como filhotes de outras aves que ainda estão em seus ninhos."),
            const SizedBox(height: 16),

            _buildParagraph(
                "Além da função alimentar, o bico atua como uma caixa de ressonância, ampliando e modificando sua vocalização. O bico ainda funciona como regulador térmico, pois é muito vascularizado e permite a troca de calor com o ambiente."),
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
