import 'package:flutter/material.dart';

class RepteisGuiaScreen extends StatelessWidget {
  const RepteisGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Répteis"),
        backgroundColor: const Color(0xFF287240),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle("Répteis"),
            _buildParagraph(
                "Os répteis são animais que não controlam a temperatura corporal como os mamíferos e as aves, por isso dependem da temperatura do ambiente. Aqui no Zoo, fornecemos fontes de calor durante as épocas mais frias, seja através de ar-condicionado na parte interna ou por meio de aquecedores e lâmpadas existentes nos terrários."),
            const SizedBox(height: 16),
            _buildParagraph(
                "Além disso, eles são bastante conhecidos pela ecdise ou muda, que é o processo de troca de pele pelo qual algumas espécies passam para comportar o crescimento do corpo."),
            const SizedBox(height: 16),

            _buildSectionTitle("TODA SERPENTE VAI TE PICAR?"),
            _buildParagraph(
                "Não! As serpentes só picam em último caso e como forma de defesa. Os acidentes acontecem quando elas se sentem ameaçadas, caso alguém chegue muito perto ou faça o manuseio de forma inadequada. Se encontrar uma serpente, não tente capturar, mesmo achando que conhece a espécie. Chame a Polícia Ambiental ou Corpo de Bombeiros para que as providências sejam tomadas."),
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
                "Por serem atraídos pelo calor do asfalto, os répteis são extremamente afetados por atropelamentos nas rodovias brasileiras."),
            const SizedBox(height: 16),

            _buildSectionTitle("Já se perguntou o motivo pelo qual as serpentes \"mostram a língua\" constantemente?"),
            _buildParagraph(
                "As serpentes movimentam a língua para capturar partículas de cheiros no ar e depois levam a língua ao órgão vomeronasal, localizado no céu da boca, que leva a mensagem ao cérebro. É um ótimo aliado na caça e percepção do ambiente."),
            const SizedBox(height: 16),

            _buildParagraph(
                "A peçonha de diversas espécies de serpentes vem sendo estudada e usada para a produção de medicamentos e outros produtos voltados para o bem-estar humano."),
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
