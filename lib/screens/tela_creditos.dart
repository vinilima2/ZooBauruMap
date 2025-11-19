import 'package:flutter/material.dart';
import '../background_widget.dart';
import 'package:zoobaurumap/screens/custom_back_button.dart';
import 'package:zoobaurumap/screens/text_box.dart';

class TelaCreditos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Stack(
          children: [
            Positioned(
              top: 16,
              left: 16,
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Color(0xFF1B5E20)),
                iconSize: 32,
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Positioned(
              top: 80,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Center(
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 600,
                      maxHeight: MediaQuery.of(context).size.height * 0.60,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextBox(
                      title: 'Créditos',
                      customChild: SingleChildScrollView(
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
                                  ' Carlos Eduardo Rodrigues Silva\n'
                                  ' Daniel Lucarelli Cerri\n'
                                  ' Melck Silva De Oliveira Nascimento\n'
                                  ' Murilo Moretto Marques\n'
                                  ' Vinícius Dos Santos',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Inter',  // Aplicando a fonte Inter
                                color: Colors.white,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 24),
                            Text(
                              '🧠 Desenvolvimento: ',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Inter',  // Aplicando a fonte Inter
                                color: Colors.white,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8),
                            Image.asset(
                              'assets/images/Ciencia_da_Computacao UNISAGRADO.jpg',
                              height: 80,
                            ),
                            SizedBox(height: 24),
                            Text(
                              '🤝 Apoio: ',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Inter',  // Aplicando a fonte Inter
                                color: Colors.white,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8),
                            Image.asset(
                              'assets/images/coordenadoria-de-extensao.jpg',
                              height: 80,
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
          ],
        ),
      ),
    );
  }
}