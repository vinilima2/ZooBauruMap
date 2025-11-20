import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:zoobaurumap/constants/animais.dart';
import 'package:zoobaurumap/models/animal.dart';

class AnimalScreen extends StatefulWidget {
  final int indiceAnimal;
  const AnimalScreen({super.key, required this.indiceAnimal});

  @override
  State<AnimalScreen> createState() => _AnimalScreenState();
}

class _AnimalScreenState extends State<AnimalScreen> {
  final AudioPlayer _player = AudioPlayer();

  @override
  void dispose() {
    _player.stop();
    _player.dispose();
    super.dispose();
  }

  String formatarNomeCientifico(String nome) {
    final partes = nome.split(' ');
    if (partes.length < 2) return nome;

    final genero = partes[0];
    final especie = partes[1];

    return '${_capitalize(genero)} ${especie.toLowerCase()}';
  }

  String _capitalize(String texto) {
    if (texto.isEmpty) return texto;
    return texto[0].toUpperCase() + texto.substring(1).toLowerCase();
  }

  @override
  Widget build(BuildContext context) {
    Animal animal = animais[widget.indiceAnimal];
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          flexibleSpace: ClipPath(
            clipper: WavyAppBarClipper(),
            child: Container(
              decoration: BoxDecoration(color: const Color(0xFF287240)),
            ),
          ),
          backgroundColor: const Color(0xFF287240),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            animal.categoria,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Inter',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  animal.imagem,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                animal.nome,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF065F0D),
                  letterSpacing: 3.0,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1, color: Color(0xFF065F0D)),
                    bottom: BorderSide(width: 1, color: Color(0xFF065F0D)),
                  ),
                ),
                child: Text(
                  animal.descricao,
                  style: TextStyle(fontSize: 18, fontFamily: 'Inter'),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.pets, color: Color(0xFF287240)),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Espécie:',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF287240),
                        ),
                      ),
                      Text(
                        formatarNomeCientifico(animal.especie),
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.warning_amber_rounded, color: Color(0xFF287240)),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Status de conservação:',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF287240),
                        ),
                      ),
                      Text(
                        animal.statusConservacao,
                        style: TextStyle(fontSize: 18, fontFamily: 'Inter'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.straighten, color: Color(0xFF287240)),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Tamanho:',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF287240),
                        ),
                      ),
                      Text(
                        'Entre ${animal.tamanho}.',
                        style: TextStyle(fontSize: 18, fontFamily: 'Inter'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () async {
                      await _player.play(AssetSource(animal.som));
                    },
                    icon: const Icon(Icons.volume_up),
                    label: const Text('OUVIR SOM'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade900,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.add),
                    onPressed: () async {
                      final url = Uri.parse(
                        'https://pt.wikipedia.org/wiki/${animal.link}',
                      );
                      if (await canLaunchUrl(url)) {
                        await launchUrl(
                          url,
                          mode: LaunchMode.externalApplication,
                        );
                      } else {
                        throw 'Não foi possível abrir a URL.';
                      }
                    },
                    label: const Text('VER MAIS'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade900,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class WavyAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height - 40);

    path.quadraticBezierTo(
      size.width / 4,
      size.height,
      size.width / 2,
      size.height - 40,
    );

    path.quadraticBezierTo(
      size.width * 3 / 4,
      size.height - 80,
      size.width,
      size.height - 40,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
