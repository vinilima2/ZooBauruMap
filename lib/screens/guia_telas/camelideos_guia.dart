import 'package:flutter/material.dart';

class CamelideosGuiaScreen extends StatelessWidget {
  const CamelideosGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Camelídeos",
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
            _buildSectionTitle("Camelídeos"),
            _buildParagraph(
                "Lhamas e Alpacas não tem corcovas, mesmo assim, elas são parentes dos camelos?"),
            const SizedBox(height: 16),
            _buildParagraph(
                "Sim, as lhamas e alpacas também são camelídeos! Elas têm em comum a ruminação semelhante a das vacas, a defesa por meio de coice, o cuspe e a mordida, além da adaptação para viver em climas extremos com muita variação de temperatura."),
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
                "O camelo é o maior morador do Zoológico. O seu par de corcovas, ao contrário do que muitos pensam, é uma reserva de gordura e não de água. Para viver em ambientes áridos eles possuem outras adaptações como o fechamento das narinas para suportar as tempestades de areia e as patas almofadadas para caminhar no deserto."),
            const SizedBox(height: 16),

            _buildParagraph(
                "Outro ponto em comum desses animais é que todos eles foram amplamente domesticados e são usados como meio de transporte por alguns povos há milhares de anos, sejam os camelos e dromedários na África e na Ásia, ou as lhamas e alpacas nos Andes."),
            const SizedBox(height: 16),

            _buildParagraph(
                "Ah, e não se frustre se não conseguir ver o nosso camelo em pé! Pela idade avançada, ele possui problemas nas articulações e dificuldade para se levantar, por isso está passando por tratamento veterinário para que fique bem."),
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
