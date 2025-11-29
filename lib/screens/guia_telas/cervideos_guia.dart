import 'package:flutter/material.dart';

class CervideosGuiaScreen extends StatelessWidget {
  const CervideosGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cervídeos"),
        backgroundColor: const Color(0xFF287240),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle("Cervídeos"),
            _buildParagraph(
                "Os cervídeos são animais ruminantes que estão amplamente distribuídos em diversos biomas."),
            const SizedBox(height: 16),
            _buildParagraph(
                "Ao contrário dos cornos de bovinos e rinocerontes, que são estruturas permanentes, os chifres dos cervídeos caem e crescem ao longo da vida, acompanhando a época reprodutiva."),
            const SizedBox(height: 16),
            _buildParagraph("Uma curiosidade é que o chifre sempre cresce maior e mais ramificado."),
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
                "Isso porque ele é usado em disputas por fêmeas entre os machos maduros sexualmente. Ao final da época reprodutiva, inicia-se o processo de queda do chifre, com duração de alguns meses."),
            const SizedBox(height: 16),

            _buildParagraph(
                "O tempo do processo varia de espécie para espécie, porém sempre se inicia com a queda do velame (tecido vascularizado que recobre o chifre), seguido da queda do chifre."),

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
