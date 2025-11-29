import 'package:flutter/material.dart';

class TamanduasGuiaScreen extends StatelessWidget {
  const TamanduasGuiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tamanduás",
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
            _buildSectionTitle("Tamanduás"),
            _buildParagraph(
                "Esses animais, parentes dos tatus e preguiças, estão perdendo cada vez mais espaço na natureza, principalmente o tamanduá-bandeira, que está ameaçado de extinção. Os principais motivos são o desmatamento e as queimadas causadas pelo agronegócio, além de inúmeros casos de atropelamentos."),
            const SizedBox(height: 16),
            _buildParagraph(
                "Por possuírem uma visão pouco desenvolvida, eles são atropelados com frequência. Por ano, são registradas aproximadamente 500 mortes de tamanduás por atropelamento no Brasil."),
            const SizedBox(height: 16),
            _buildParagraph(
                "Muitos tamanduás também sofreram com os graves incêndios no Pantanal em 2020. As queimadas na naturezasão muito prejudiciais para os animais."),
            const SizedBox(height: 24),
            
            _buildSectionTitle("Curiosidades"),
            _buildParagraph(
                "Que os tamanduás se alimentam de formigas e cupins, muita gente sabe. Mas aqui no Zoo eles são alimentados com esses insetos?"),
            const SizedBox(height: 16),
            _buildParagraph(
                "Não, no Zoo os tamanduás são alimentados com uma papinha super nutritiva feita com frutas, tubérculos, carne, ração de cachorro, vitamina K e Taurina."),
            const SizedBox(height: 16),
            
            _buildParagraph(
                "Você sabia que um tamanduá-bandeira consegue comer até 30 mil formigas por dia?"),
            const SizedBox(height: 16),

            _buildParagraph(
                "Eles não possuem dentes! Portanto, eles utilizam a língua para alimentação."),

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
