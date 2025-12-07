import 'package:flutter/material.dart';

class FlamingosGuiaScreen extends StatelessWidget {
  const FlamingosGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4D2B6),
      appBar: AppBar(
        title: const Text(
          "Flamingos",
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
            _buildSectionTitle("Flamingos"),
            _buildParagraph(
                "Apesar de ser muito conhecida em nosso país, essa ave não é uma residente daqui. Os flamingos só passam pelo Brasil durante a migração, na época reprodutiva."),
            const SizedBox(height: 16),
            _buildParagraph(
                "São famosos pela cor rosada ou avermelhada, proveniente da alimentação, que na natureza é composta por crustáceos e outros invertebrados ricos em caroteno, um pigmento que tem essa coloração."),
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
                "O formato do bico do flamingo é adaptado para filtrar a água e reter os invertebrados aquáticos."),
            const SizedBox(height: 16),

            _buildParagraph(
                "Aqui no Zoo, os flamingos são alimentados com uma ração própria para a espécie, que já contém o pigmento para manter a cor rosada das penas."),
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
