import 'package:flutter/material.dart';

class PinguinsGuiaScreen extends StatelessWidget {
  const PinguinsGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4D2B6),
      appBar: AppBar(
        title: const Text(
          "Pinguins",
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
            _buildSectionTitle("Pinguins"),
            _buildParagraph(
                "Carismáticos, esses belos animais são aves adaptadas para vida aquática e ambientes mais frios. Mesmo sendo famosos por viverem em lugares gelados, nem todas as espécies vivem em clima polar. Os pinguins-de-magalhães são um exemplo disso, vivendo em temperaturas mais amenas, entre 15°C e 20°C."),
            const SizedBox(height: 16),
            
            _buildParagraph(
                "O recinto dos pinguins é climatizado, para que a temperatura se mantenha em um nível agradável para eles, e a água do tanque é salgada. Essas são algumas medidas tomadas para manter o bem-estar desses animais."),
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
                "Se você vir um pinguim sem nadadeira no Zoo, não se preocupe. Esse morador foi resgatado após ser vítima de um acidente com um barco que acarretou na amputação de sua asa, mas felizmente ele foi resgatado, tratado e hoje vive muito bem aqui."),
            const SizedBox(height: 16),

            _buildParagraph(
                "Não é raro encontrar pinguins perdidos ou machucados em nossas praias. Caso encontre um desses animais, chame as autoridades e evite aglomerações ou situações de estresse ao animal até a chegada de um órgão responsável."),
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
