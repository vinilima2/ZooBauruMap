import 'package:flutter/material.dart';

class SuricataMangustoFuraoGuiaScreen extends StatelessWidget {
  const SuricataMangustoFuraoGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Suricata, Mangusto e Furão",
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
            _buildSectionTitle("Suricata, Mangusto e Furão"),
            _buildParagraph(
                "Esses simpáticos moradores são vizinhos, mas apenas no Zoo. Na natureza, enquanto os Suricatas e Mangustos (Família Herpestidae) vivem na África, o Furão (Família Mustelidae) reside aqui na América do Sul."),
            const SizedBox(height: 16),
            _buildParagraph(
                "Mesmo sendo naturais de continentes diferentes, eles possuem hábitos semelhantes, tanto na alimentação quanto no comportamento. São carnívoros e adoram alimentar-se de insetos e pequenos vertebrados. Além disso, compartilham o hábito fossorial, ou seja, cavam buracos no chão, onde se escondem e passam horas do seu dia."),
            const SizedBox(height: 24),

            _buildSectionTitle("Você já viu um suricata em pé, como se fosse uma posição de alerta?"),
            _buildParagraph(
                "É isso mesmo! Como vivem em grandes grupos nas savanas africanas, um membro sempre fica em alerta observando a presença de alguma ameaça e, caso haja, emite um chamado para o grupo e todos se escondem nos buracos cavados no chão."),
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

            _buildSectionTitle("Posso ter um furão de estimação?"),
            _buildParagraph("A resposta é: depende."),
            const SizedBox(height: 16),
            _buildParagraph(
                "O animal popularmente chamado de furão que muitas pessoas têm como pet no Brasil, na verdade chama-se Ferret (Mustela putorius). É da mesma família do furão brasileiro, porém é natural da Europa. Sua criação e venda são autorizadas pelo IBAMA."),
            const SizedBox(height: 16),
             _buildParagraph(
                "Mas se estivermos falando dos furões brasileiros (Galictis cuja ou Galictis vittata) não é permitido o comércio e a criação. São espécies nativas e protegidas por lei. Só podem ser mantidos em cativeiro com autorização do órgão responsável, caso contrário configura crime ambiental."),


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
