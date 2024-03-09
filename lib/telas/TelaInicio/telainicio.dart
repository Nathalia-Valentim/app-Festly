import 'package:flutter/material.dart';
import 'package:festly/CustomWidgets/card.dart';
import 'package:festly/CustomWidgets/destaque.dart';
import 'package:festly/CustomWidgets/maisInfo.dart';
import 'package:festly/CustomWidgets/circulohori.dart';
import 'package:festly/CustomWidgets/search.dart';

List<Map<String, String>> items = [
  {"img": "/iconeFesta.png", "text": "Baladas"},
  {"img": "/iconeSport.png", "text": "Esportes"},
  {"img": "/iconeComida.png", "text": "Gastronomia"},
  {"img": "/iconeComedia.png", "text": "Comédia"},
  {"img": "/iconeTecn.png", "text": "Tecnologia"},
];

class TelaInicio extends StatefulWidget {
  const TelaInicio({Key? key}) : super(key: key);

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchTop(),
            SizedBox(height: 20),
            verMais(items,
                title: "Mais de 1.000 Eventos.",
                subtitle: "Eleve suas experiências a novas alturas."),
            circuloContainer(items),
            destaqueS(title: 'Destaques'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard('Maratona Ciclismo', '/ciclismo.png'),
                    buildProductCard('Cinema drive-in', '/drive_thru.png'),
                    buildProductCard('UNIVERSO FIGHT ', '/luta.png'),
                    buildProductCard('15° Piquenique', '/piquenique.png'),
                    buildProductCard('Lady Marmalade', '/cabaret.png'),
                    buildProductCard('Happy Hour', '/postHappyHour.png'),
                    buildProductCard('Bar da Cachaça', '/bebida.png'),
                  ],
                ),
              ),
            ),
            destaqueS(title: 'Esportes'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard(
                        'NBB 2023', '/postBasqueteUniversitario.png'),
                    buildProductCard(
                        'Copa de Beach Tênis', '/postBeachTennis.png'),
                    buildProductCard(
                        'Campeonato Hipismo', '/postCorridaCavalo.png'),
                    buildProductCard(
                        'Skate Festival', '/postSkateFestival.png'),
                    buildProductCard('Torneio de Golf', '/postTorneioGolf.png'),
                    buildProductCard(
                        'La Liga Vôlei de Praia', '/postVoleiPraia.png'),
                  ],
                ),
              ),
            ),
            destaqueS(title: 'Cultural'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard('Festival de Karaokê', '/postKaraoke.png'),
                    buildProductCard('Expo Dia da Consc. Negra',
                        '/postConscienciaNegra.png'),
                    buildProductCard(
                        'Exposição de Artes', '/postBienalArtes.png'),
                    buildProductCard(
                        'Competições Das Bruxas', '/posDiaDasBruxas.png'),
                    buildProductCard(
                        'Festival de Festa Junina', '/postFestaJunina.png'),
                    buildProductCard(
                        'Festival do Morango', '/postFestivalMorango.png'),
                    buildProductCard(
                        'Folclore Brasileiro', '/postBumbaMeuBoi.png'),
                    buildProductCard(
                        'Evento Oktoberfest', '/postOktoberfest.png'),
                  ],
                ),
              ),
            ),
            destaqueS(title: 'Shows'),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard('Festa Anos 2000', '/postAnos2000.png'),
                    buildProductCard(
                        'Pagode para Todos', '/postSambaAlmeida.png'),
                    buildProductCard('O Baile é Delas', '/postBaileDelas.png'),
                    buildProductCard('Festival do Rock', '/postDiaDoRock.png'),
                    buildProductCard('Festa Neon', '/postFestaNeon.png'),
                    buildProductCard(
                        'Festival Indie Rock', '/postFestivalMusica.png'),
                    buildProductCard(
                        'Rave do Futuro', '/postNeonPartyRave.png'),
                    buildProductCard('Summer Fest', '/postSummerFest.png'),
                    buildProductCard('Baile Funk', '/potsBaileFunk.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
