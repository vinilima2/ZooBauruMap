import 'package:flutter/material.dart';

class AvesRibeirinhasGuiaScreen extends StatelessWidget {
  const AvesRibeirinhasGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aves Ribeirinhas"),
        backgroundColor: const Color(0xFF287240),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle("Aves Ribeirinhas"),
            _buildParagraph(
                "O setor das aves ribeirinhas abriga diversas espécies que vivem próximo a rios, açudes e lagoas. Por isso, elas possuem patas e dedos compridos para não atolar na lama, além de bicos longos para capturar peixes, crustáceos e outros invertebrados aquáticos que fazem parte da sua dieta na natureza."),
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
                "Uma das aves que mais chama atenção nesse setor é o Guará. Ele tem essa coloração pelo mesmo motivo dos flamingos, já que ambos se alimentam de crustáceos ricos em caroteno, que conferem a cor avermelhada."),
             const SizedBox(height: 16),

            _buildParagraph(
                "Aqui no Zoo, sua dieta inclui ração específica e peixe, suplementado com cantaxantina, um pigmento avermelhado para uso em alimentos."),
             const SizedBox(height: 16),

            _buildParagraph(
                "As bandejas são colocadas dentro dos tanques para estimular comportamentos naturais."),
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
