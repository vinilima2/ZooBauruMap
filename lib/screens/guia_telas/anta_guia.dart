import 'package:flutter/material.dart';

class AntaGuiaScreen extends StatelessWidget {
  const AntaGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anta"),
        backgroundColor: const Color(0xFF287240),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle("Anta"),
            _buildParagraph(
                "A anta é o maior mamífero terrestre do Brasil, sendo um animal extremamente inteligente e importante, pois auxilia na manutenção das florestas."),
            const SizedBox(height: 16),
            _buildParagraph(
                "Com uma dieta rica em frutas, a anta atua como dispersora de sementes, pois depois da digestão, elas saem nas suas fezes e acabam germinando e formando novas árvores. Por esse motivo chamamos a anta de \"jardineira das florestas\"."),
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
                "Não fique frustrado se não conseguir ver a anta durante a sua visita. Por possuírem hábitos noturnos, assim como a maioria dos felinos, elas gostam de descansar durante o dia e ficam mais ativas à noite. Além disso, elas adoram ficar dentro da água, podendo ficar até três minutos sem respirar."),
            const SizedBox(height: 16),
            
            _buildParagraph(
                "Os filhotes nascem com manchas e listras brancas pelo corpo. Conforme vão crescendo, os desenhos vão se perdendo e eles adquirem uma tonalidade cinza por inteiro."),

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
