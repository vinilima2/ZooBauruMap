import 'package:flutter/material.dart';

class GrandesFelinosGuiaScreen extends StatelessWidget {
  const GrandesFelinosGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Grandes Felinos",
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
            _buildSectionTitle("Grandes Felinos"),
            _buildParagraph(
                "Os grandes felinos são animais imponentes e rodeados por mitos. São predadores de topo de cadeia alimentar e, assim como a maioria dos felinos, têm hábitos noturnos, por isso na maior parte do dia ficam deitados ou dormindo."),
            const SizedBox(height: 16),
            _buildParagraph(
                "O tigre-siberiano é um dos maiores felinos do mundo e está altamente ameaçado de extinção."),
            const SizedBox(height: 16),
            _buildParagraph(
                "Outra característica compartilhada entre esses animais é a ameaça de extinção que eles sofrem por causa de ações dos seres humanos, como desmatamento, caça, atropelamentos em rodovias e queimadas."),
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
                "Como grandes predadores, os felinos são muito importantes para o equilíbrio dos ecossistemas onde estão inseridos. Por isso, não apoie os maus-tratos, denuncie e não dissemine informações que colaboram para a visão equivocada que as pessoas têm desses animais."),
            const SizedBox(height: 16),

            _buildSectionTitle("Você sabia que a onça preta também é pintada?"),
            _buildParagraph(
                "Sim, isso mesmo! A diferença é que ela é melânica, ou seja, possui muita melanina no organismo, fator que garante a coloração mais escura de seus pelos. Mas assim como a onça-pintada, também possui rosetas na pelagem."),
            const SizedBox(height: 16),

            _buildParagraph(
                "A caça de onças ainda é muito presente em alguns estados brasileiros."),
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
