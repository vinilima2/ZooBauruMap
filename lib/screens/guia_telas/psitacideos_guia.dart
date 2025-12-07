import 'package:flutter/material.dart';

class PsitacideosGuiaScreen extends StatelessWidget {
  const PsitacideosGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4D2B6),
      appBar: AppBar(
        title: const Text(
          "Psitacídeos",
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
            _buildSectionTitle("Psitacídeos"),
            _buildParagraph(
                "Esse setor abriga diversas espécies de pequenos Psitacídeos, que são aves que compartilham algumas características em comum:"),
            const SizedBox(height: 16),
            _buildListItem("Bico curvado para quebrar sementes e frutos duros;"),
            _buildListItem("1º e 4º dedos voltados para trás e 2º e 3º voltados para a frente, o que garante facilidade para empoleirar;"),
            _buildListItem("Vocalização desenvolvida."),
            const SizedBox(height: 16),
            _buildParagraph(
                "Fazem parte dessa família muitas espécies, entre elas os papagaios, jandaias e maritacas. Em outro setor do zoológico, temos os grandes psitacídeos, que são as famosas Araras."),
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
                "Os psitacídeos são um dos grupos de animais que mais sofrem com o tráfico. As pessoas retiram os filhotes do ninho para criarem como pet ou vender."),
            const SizedBox(height: 24),

            _buildSectionTitle("Você conhece alguém que tem ou já teve um papagaio em casa?"),
            _buildParagraph(
                "Será que esse animal foi adquirido de um criadouro licenciado pelo IBAMA? Quem adquire um animal silvestre de maneira ilegal comete crime ambiental e está sujeito a multa e até detenção."),
            const SizedBox(height: 16),
            _buildParagraph(
                "Caso tenha um animal silvestre ilegal em sua residência, você pode entregá-lo à Polícia Ambiental voluntariamente com ausência de penalidade, para os devidos cuidados e destinação. Os animais não devem ser soltos sem supervisão profissional."),

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

  Widget _buildListItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontSize: 18, height: 1.5, color: Colors.black87)),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 18, height: 1.5, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
