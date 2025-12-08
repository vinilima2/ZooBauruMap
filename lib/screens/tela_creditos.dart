import 'package:flutter/material.dart';
import '../background_widget.dart';
import 'package:zoobaurumap/screens/text_box.dart';

class TelaCreditos extends StatelessWidget {
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
                maxHeight: MediaQuery.of(context).size.height * 0.8,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextBox(
                title: 'Créditos',
                customChild: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '📘 Nome da Disciplina:\n'
                          'Desenvolvimento de Software\n\n'
                          '👨‍🏫 Professor Orientador:\n'
                          'Prof. Dr. Elvio Gilberto Da Silva\n\n'
                          '📷 Equipe de Colaboração:\n'
                          'Prof. Dr. João Marcelo Ribeiro Soares\n'
                          'Júlia Pitta − Zoo Bauru\n'
                          'Aline Pereira − Zoo Bauru\n\n'
                          '👥 Equipe de Desenvolvimento:\n'
                          'Carlos Eduardo Rodrigues Silva\n'
                          'Cauê Mateus de Araujo\n'
                          'Daniel Lucarelli Cerri\n'
                          'Melck Silva De Oliveira Nascimento\n'
                          'Murilo Moretto Marques\n'
                          'Vinicius Lima Santos\n'
                          'Vinícius Dos Santos',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Inter',
                            color: Colors.white,
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 24),
                        Text(
                          '🧠 Desenvolvimento: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Inter',
                            color: Colors.white,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8),
                        Image.asset(
                          'assets/images/Ciencia_da_Computacao UNISAGRADO.jpg',
                          height: 70,
                        ),
                        SizedBox(height: 24),
                        Text(
                          '🤝 Apoio: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Inter',
                            color: Colors.white,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8),
                        Image.asset(
                          'assets/images/coordenadoria-de-extensao.jpg',
                          height: 70,
                        ),
                        SizedBox(height: 24),
                      ],
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
