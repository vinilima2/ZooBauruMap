import 'package:flutter/material.dart';
import 'package:zoobaurumap/constants/indices.dart';
import 'package:zoobaurumap/screens/tela_animal.dart';

class AnimalButton extends StatelessWidget {
  final String label;
  final String emoji;
  final VoidCallback onTap;

  const AnimalButton({
    required this.label,
    required this.emoji,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 10,
        backgroundColor: Colors.white,
        child: Text(emoji, style: TextStyle(fontSize: 12)),
      ),
    );
  }
}

class TelaComecar extends StatelessWidget {
  void _showInstructions(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color(0xFF1B5E20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text(
            "Instruções",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          content: Text(
            "1. A seguir temos o mapa do Zoológico Municipal de Bauru.\n\n"
            "2. Utilize o 'Zoom' e arraste para os lados para a visualização.\n\n"
            "3. Clique nos ícones para a melhor visualização dos animais.",
            style: TextStyle(fontSize: 16, color: Colors.white70, height: 1.5),
            textAlign: TextAlign.justify,
          ),
          actionsPadding: EdgeInsets.only(bottom: 8),
          actions: <Widget>[
            Align(
              alignment: Alignment.center,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Ok',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF1B5E20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showInstructions(context);
    });

    return Scaffold(
      body: Container(
        color: Color(0xFFC4D2B6),
        child: Stack(
          children: [
            Positioned.fill(
              child: InteractiveViewer(
                panEnabled: true,
                minScale: 1.0,
                maxScale: 5.0,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/fundo_comecar.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.78,
                      left: MediaQuery.of(context).size.width * 0.25,
                      child: AnimalButton(
                        emoji: "🦍",
                        label: "Grandes\nPrimatas\nBrasileiros",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.guariba.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.77,
                      left: MediaQuery.of(context).size.width * 0.33,
                      child: AnimalButton(
                        emoji: "🦍",
                        label: "Grandes\nPrimatas\nBrasileiros",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal:
                                        IndiceAnimal.micoLeaoDourado.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.71,
                      left: MediaQuery.of(context).size.width * 0.36,
                      child: AnimalButton(
                        emoji: "🐒",
                        label: "  Pequenos\n  Primatas\n   Brasileiros",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal:
                                        IndiceAnimal.micoLeaoCaraDourada.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.66,
                      left: MediaQuery.of(context).size.width * 0.42,
                      child: AnimalButton(
                        emoji: "🦚",
                        label: "Pavão",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal:
                                        IndiceAnimal.pavaoAlerquim.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.68,
                      left: MediaQuery.of(context).size.width * 0.29,
                      child: AnimalButton(
                        emoji: "🐦",
                        label: "Pequenos\nPsitacídeos",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal:
                                        IndiceAnimal.jandaiaVerdadeira.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.61,
                      left: MediaQuery.of(context).size.width * 0.55,
                      child: AnimalButton(
                        emoji: "🦡",
                        label: "Tamanduá",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal:
                                        IndiceAnimal.tamanduaMirim.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.57,
                      left: MediaQuery.of(context).size.width * 0.57,
                      child: AnimalButton(
                        emoji: "🦧",
                        label:
                            "Primatas\n"
                            "Africanos",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal:
                                        IndiceAnimal.babuinoSagrado.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.56,
                      left: MediaQuery.of(context).size.width * 0.63,
                      child: AnimalButton(
                        emoji: "🐿️",
                        label:
                            "Pequenos\n"
                            "Mamíferos",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.furao.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.62,
                      left: MediaQuery.of(context).size.width * 0.72,
                      child: AnimalButton(
                        emoji: "🦃",
                        label:
                            "Aves\n"
                            "Ratitas",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.casuar.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.54,
                      left: MediaQuery.of(context).size.width * 0.85,
                      child: AnimalButton(
                        emoji: "🦃",
                        label:
                            "Aves\n"
                            "Ratitas",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.casuar.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.41,
                      left: MediaQuery.of(context).size.width * 0.82,
                      child: AnimalButton(
                        emoji: "🦃",
                        label:
                            "Aves\n"
                            "Ratitas",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.casuar.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.44,
                      left: MediaQuery.of(context).size.width * 0.79,
                      child: AnimalButton(
                        emoji: "🦃",
                        label:
                            "Aves\n"
                            "Ratitas",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.casuar.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.54,
                      left: MediaQuery.of(context).size.width * 0.71,
                      child: AnimalButton(
                        emoji: "🦉",
                        label: "Corujas",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.suindara.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.52,
                      left: MediaQuery.of(context).size.width * 0.63,
                      child: AnimalButton(
                        emoji: "🦩",
                        label: "Grou-Coroado",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal:
                                        IndiceAnimal.grouCoroado.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.48,
                      left: MediaQuery.of(context).size.width * 0.62,
                      child: AnimalButton(
                        emoji: "🦜",
                        label:
                            "Grandes\n"
                            "Psitacídeos",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal:
                                        IndiceAnimal.papagaioCampeiro.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.35,
                      left: MediaQuery.of(context).size.width * 0.70,
                      child: AnimalButton(
                        emoji: "🦌",
                        label: "Cervídeos",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.cervoDama.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.20,
                      left: MediaQuery.of(context).size.width * 0.64,
                      child: AnimalButton(
                        emoji: "🦅",
                        label: "",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.urubuRei.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.18,
                      left: MediaQuery.of(context).size.width * 0.49,
                      child: AnimalButton(
                        emoji: "🦙",
                        label: "",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.alpaca.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.21,
                      left: MediaQuery.of(context).size.width * 0.45,
                      child: AnimalButton(
                        emoji: "🦙",
                        label: "",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.alpaca.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.27,
                      left: MediaQuery.of(context).size.width * 0.50,
                      child: AnimalButton(
                        emoji: "🐆",
                        label: "",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal:
                                        IndiceAnimal.oncaPintada.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.25,
                      left: MediaQuery.of(context).size.width * 0.58,
                      child: AnimalButton(
                        emoji: "🦆",
                        label: "",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal:
                                        IndiceAnimal.cisneNegro.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.24,
                      left: MediaQuery.of(context).size.width * 0.81,
                      child: AnimalButton(
                        emoji: "🦍",
                        label: "Grandes\nPrimatas\nBrasileiros",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal:
                                        IndiceAnimal.micoLeaoCaraDourada.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.40,
                      left: MediaQuery.of(context).size.width * 0.32,
                      child: AnimalButton(
                        emoji: "🦘",
                        label: "",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.canguru.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.40,
                      left: MediaQuery.of(context).size.width * 0.40,
                      child: AnimalButton(
                        emoji: "🦦",
                        label: "",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.irara.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.49,
                      left: MediaQuery.of(context).size.width * 0.49,
                      child: AnimalButton(
                        emoji: "🐺",
                        label: "",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.loboGuara.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.44,
                      left: MediaQuery.of(context).size.width * 0.33,
                      child: AnimalButton(
                        emoji: "🐣",
                        label: "",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.gralha.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.28,
                      left: MediaQuery.of(context).size.width * 0.36,
                      child: AnimalButton(
                        emoji: "🐍",
                        label: "",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.jiboia.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.43,
                      left: MediaQuery.of(context).size.width * 0.21,
                      child: AnimalButton(
                        emoji: "🕊️",
                        label: "",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.guara.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.54,
                      left: MediaQuery.of(context).size.width * 0.25,
                      child: AnimalButton(
                        emoji: "🐥",
                        label: "",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal: IndiceAnimal.tucano.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.45,
                      left: MediaQuery.of(context).size.width * 0.54,
                      child: AnimalButton(
                        emoji: "🦔",
                        label: "",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AnimalScreen(
                                    indiceAnimal:
                                        IndiceAnimal.ouricoCacheiro.indice,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 16,
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Color(0xFF1B5E20)),
                iconSize: 32,
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetalheAnimalScreen extends StatelessWidget {
  final String titulo;

  const DetalheAnimalScreen({required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(titulo)));
  }
}

void main() {
  runApp(MaterialApp(home: TelaComecar(), debugShowCheckedModeBanner: false));
}
