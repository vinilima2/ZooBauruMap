import 'package:flutter/material.dart';

class AvesRapinaGuiaScreen extends StatelessWidget {
  const AvesRapinaGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Aves de Rapina",
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
            _buildSectionTitle("Aves de Rapina"),
            _buildParagraph(
                "As aves de rapina estão entre os melhores caçadores do reino animal. Possuem adaptações adquiridas ao longo da evolução, como a excelente visão, que possibilita que elas enxerguem suas presas a longas distâncias."),
            const SizedBox(height: 16),
            
            _buildParagraph(
                "São predadores de topo de cadeia alimentar, alimentando-se desde animais pequenos, como roedores e peixes, até macacos. Por isso elas são muito importantes para o equilíbrio dos ecossistemas e controle de pragas."),
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
                "Um exemplo de controle de pragas é o gavião-caracoleiro, que se adaptou a predar caramujos africanos, espécie invasora que se alastrou pelo Brasil e causa danos ao ambiente."),
            const SizedBox(height: 16),

            _buildParagraph(
                "O urubu-rei é uma ave de rapina com hábitos diferentes, pois se alimenta de carcaças de animais mortos na natureza. Aqui no Zoo, no entanto, oferecemos carne fresca. O nome da espécie deve-se ao fato de ser o maior e mais forte urubu, alimentando-se das carcaças antes das outras espécies."),
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
