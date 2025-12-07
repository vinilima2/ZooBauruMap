import 'package:flutter/material.dart';

class AvesRatitasGuiaScreen extends StatelessWidget {
  const AvesRatitasGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4D2B6),
      appBar: AppBar(
        title: const Text(
          "Aves Ratitas",
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
            _buildSectionTitle("Aves Ratitas"),
            _buildParagraph(
                "Grupo que abriga as aves gigantes, que não voam. Além do grande porte e do peso elevado, as ratitas não possuem o osso esterno em formato de quilha, onde nas aves voadoras ligam-se os músculos responsáveis pelo voo. No entanto, desenvolveram a habilidade de correr em alta velocidade."),
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
                "São habitantes de diferentes regiões do mundo: América do Sul (Ema), África (Avestruz) e Austrália (Emu e Casuar)."),
            const SizedBox(height: 16),

            _buildParagraph(
                "Os machos têm um papel fundamental na reprodução. Além de fecundar o ovo, eles também chocam e cuidam dos filhotes. Em emas, casuares e emus, o macho é responsável pela incubação dos ovos e por proteger o ninho e os filhotes durante os primeiros meses de vida. Nos avestruzes, há um revezamento para chocar o ovo."),
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
