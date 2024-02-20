import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 0.1, 'label': 'Elevation 1'},
  {'elevation': 0.2, 'label': 'Elevation 2'},
  {'elevation': 0.3, 'label': 'Elevation 3'},
  {'elevation': 0.4, 'label': 'Elevation 4'},
  {'elevation': 0.5, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
const CardsScreen({super.key});
@override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("CardsScreen"),
            centerTitle: true,
          ),
          body: _CardsView()),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((card) => _CartType1(elevation: card['elevation'], label: card['label']),),
          ...cards.map((card) => _CartType2(elevation: card['elevation'], label: card['label']),),
          ...cards.map((card) => _CartType3(elevation: card['elevation'], label: card['label']),),
          ...cards.map((card) => _CartType4(elevation: card['elevation'], label: card['label']),),

          const SizedBox(height: 15)

        ],
      ),
    );
  }
}


class _CartType1 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CartType1({
    required this.label,
    required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child:  Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.ac_unit_sharp),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child:  Text(label),)
          ],
        ),
      ),
    );
  }
}

class _CartType2 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CartType2({
    required this.label,
    required this.elevation});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        side: BorderSide(
          color: colors.outline
        )),
      elevation: elevation,
      child:  Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.ac_unit_sharp),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child:  Text('$label segunda'),)
          ],
        ),
      ),
    );
  }
}


class _CartType3 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CartType3({
    required this.label,
    required this.elevation});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surface,
      elevation: elevation,
      child:  Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.ac_unit_sharp),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child:  Text('$label - filled'),)
          ],
        ),
      ),
    );
  }
}


class _CartType4 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CartType4({
    required this.label,
    required this.elevation});

  @override
  Widget build(BuildContext context) {

    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child:  Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/250',
            height: 170,
            fit: BoxFit.cover,
          ),
          
          
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))
              ),
              child: IconButton(
                icon: const Icon(Icons.mode_rounded),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
