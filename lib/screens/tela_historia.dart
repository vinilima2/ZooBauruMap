import 'package:flutter/material.dart';
import '../background_widget.dart';
import 'package:zoobaurumap/screens/text_box.dart';

class TelaHistoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Permite que o body fique atrás da AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent, // AppBar transparente
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white), // Ícone de voltar branco
      ),
      body: BackgroundWidget(
        child: Center( // Centraliza o conteúdo na tela
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 600,
                maxHeight: MediaQuery.of(context).size.height * 0.70, // Aumenta um pouco a altura máxima
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextBox(
                title: 'História do Zoológico',
                customChild: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0), // Adiciona um padding interno
                    child: Text(
                      'Com as obras de construção iniciadas em 1977, o Parque Zoológico de Bauru foi inaugurado em 24 de agosto de 1980, contando com um pequeno número de animais, a maioria deles proveniente do zoológico da cidade de Bastos, que acabava de ser desativado.\n\nLocalizado em uma área total de 20 hectares, o Zoo Bauru faz limite com o Jardim Botânico Municipal, o qual conserva 280 hectares de cerrado, representando uma das maiores reservas deste bioma no estado de São Paulo.\n\nPor estar inserido em área de vegetação preservada, o Zoo Bauru abriga diversas espécies da fauna nativa regional, como o tucano-toco, quati, jacupemba, calango-verde, teiú, entre outras que vivem livremente no local.\n\nAlém dos cuidados com os animais do plantel, o Zoológico de Bauru auxilia os animais da natureza que chegam por meio da Polícia Ambiental e do Corpo de Bombeiros. Vítimas das ações humanas no ambiente, como os atropelamentos, queimadas e tráfico, estes animais passam por tratamento veterinário e sempre que se tornam aptos retornam ao ambiente natural.',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        color: Colors.white,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.justify, // Justifica o texto para melhor leitura
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
