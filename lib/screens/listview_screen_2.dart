import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewScreen2 extends StatelessWidget {
  final options = const [
    'Megaman',
    'Super Smash',
    'Mario Kart',
    'Crash TMR',
    'Getting up'
  ];

  const ListViewScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView tipo 2'),
          elevation: 0,
        ),
        //backgroundColor: Colors.indigoAccent),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: AppTheme.colorPrimary,
            ),
            onTap: () {
              final game = options[index];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(
            thickness: 1,
            height: 15,
          ),
        ));
  }
}
