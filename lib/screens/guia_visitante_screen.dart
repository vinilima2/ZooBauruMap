import 'package:flutter/material.dart';
import 'package:zoobaurumap/screens/guia_telas/grandes_primatas_brasileiros_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/pequenos_primatas_brasileiros_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/psitacideos_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/tamanduas_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/primatas_africanos_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/suricata_mangusto_furao_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/aves_ratitas_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/corujas_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/cervideos_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/aves_rapina_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/camelideos_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/grandes_felinos_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/anta_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/pequenos_felinos_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/lobo_guara_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/irara_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/flamingos_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/pinguins_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/repteis_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/cangurus_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/aves_ribeirinhas_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/tucanos_aracaris_guia.dart';
import 'package:zoobaurumap/screens/guia_telas/mutuns_jacus_guia.dart';

class GuiaVisitanteScreen extends StatelessWidget {
  const GuiaVisitanteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categorias = [
      'Grandes Primatas Brasileiros',
      'Pequenos Primatas Brasileiros',
      'Psitacídeos',
      'Tamanduás',
      'Primatas Africanos',
      'Suricata, Mangusto e Furão',
      'Ratitas',
      'Corujas',
      'Cervídeos',
      'Aves de Rapina',
      'Camelídeos',
      'Grandes Felinos',
      'Anta',
      'Pequenos Felinos',
      'Lobo-guará',
      'Irara',
      'Flamingos',
      'Pinguins',
      'Répteis',
      'Cangurus',
      'Aves Ribeirinhas',
      'Tucanos e Araçaris',
      'Mutuns e Jacus',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Guia Educativo'),
        backgroundColor: const Color(0xFF287240),
      ),
      body: ListView.builder(
        itemCount: categorias.length,
        itemBuilder: (context, index) {
          final categoria = categorias[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: ListTile(
              title: Text(categoria),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Widget? screen;
                switch (categoria) {
                  case 'Grandes Primatas Brasileiros':
                    screen = const GrandesPrimatasBrasileirosGuiaScreen();
                    break;
                  case 'Pequenos Primatas Brasileiros':
                    screen = const PequenosPrimatasBrasileirosGuiaScreen();
                    break;
                  case 'Psitacídeos':
                    screen = const PsitacideosGuiaScreen();
                    break;
                  case 'Tamanduás':
                    screen = const TamanduasGuiaScreen();
                    break;
                  case 'Primatas Africanos':
                    screen = const PrimatasAfricanosGuiaScreen();
                    break;
                  case 'Suricata, Mangusto e Furão':
                    screen = const SuricataMangustoFuraoGuiaScreen();
                    break;
                  case 'Ratitas':
                    screen = const AvesRatitasGuiaScreen();
                    break;
                  case 'Corujas':
                    screen = const CorujasGuiaScreen();
                    break;
                  case 'Cervídeos':
                    screen = const CervideosGuiaScreen();
                    break;
                  case 'Aves de Rapina':
                    screen = const AvesRapinaGuiaScreen();
                    break;
                  case 'Camelídeos':
                    screen = const CamelideosGuiaScreen();
                    break;
                  case 'Grandes Felinos':
                    screen = const GrandesFelinosGuiaScreen();
                    break;
                  case 'Anta':
                    screen = const AntaGuiaScreen();
                    break;
                  case 'Pequenos Felinos':
                    screen = const PequenosFelinosGuiaScreen();
                    break;
                  case 'Lobo-guará':
                    screen = const LoboGuaraGuiaScreen();
                    break;
                  case 'Irara':
                    screen = const IraraGuiaScreen();
                    break;
                  case 'Flamingos':
                    screen = const FlamingosGuiaScreen();
                    break;
                  case 'Pinguins':
                    screen = const PinguinsGuiaScreen();
                    break;
                  case 'Répteis':
                    screen = const RepteisGuiaScreen();
                    break;
                  case 'Cangurus':
                    screen = const CangurusGuiaScreen();
                    break;
                  case 'Aves Ribeirinhas':
                    screen = const AvesRibeirinhasGuiaScreen();
                    break;
                  case 'Tucanos e Araçaris':
                    screen = const TucanosAracarisGuiaScreen();
                    break;
                  case 'Mutuns e Jacus':
                    screen = const MutunsJacusGuiaScreen();
                    break;
                }
                if (screen != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => screen!), // CORREÇÃO AQUI
                  );
                } else {
                  print('Clicou em $categoria, mas nenhuma tela foi definida.');
                }
              },
            ),
          );
        },
      ),
    );
  }
}
