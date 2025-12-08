import 'package:flutter/material.dart';
import '../background_widget.dart';
import 'package:zoobaurumap/screens/text_box.dart';

class TelaSobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BackgroundWidget(
        child: Center(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 600,
                maxHeight: MediaQuery.of(context).size.height * 0.70,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextBox(
                title: 'Sobre o Aplicativo',
                customChild: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'O aplicativo "Zoo Bauru" foi desenvolvido com o objetivo de aproximar o público do Zoológico Municipal de Bauru, oferecendo uma experiência informativa e interativa.\n\n'
                      'Aqui, os visitantes podem conhecer mais sobre a história do zoológico, aprender sobre os animais e ambientes naturais representados, e se preparar para uma visita inesquecível.\n\n'
                      'O "Zoo Bauru" também busca incentivar o turismo local, a conscientização ambiental e o respeito à vida animal.\n\n'
                      'Observação: Este aplicativo não contém todos os animais presentes no zoológico, e alguns podem não estar representados em suas localizações exatas. Agradecemos a compreensão!',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        color: Colors.white,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.justify,
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
