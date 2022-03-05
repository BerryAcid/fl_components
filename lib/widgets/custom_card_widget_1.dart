import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardWidget1 extends StatelessWidget {
  const CustomCardWidget1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.album,
              color: AppTheme.colorPrimary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Incididunt consectetur proident Lorem sunt reprehenderit do nulla sint ipsum qui ea nulla. Ipsum ex in nulla mollit velit ullamco in est. Consequat dolore voluptate dolor mollit magna.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
