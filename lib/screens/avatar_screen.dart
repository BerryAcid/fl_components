import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  final String? urlImage =
      'https://swall.teahub.io/photos/small/13-132356_the-best-wallpapers-of-spiderman-miles-morales-for.jpg';

  const AvatarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          if (urlImage != null)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://swall.teahub.io/photos/small/13-132356_the-best-wallpapers-of-spiderman-miles-morales-for.jpg'),
                  ),
                ],
              ),
            )
          else
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: const CircleAvatar(
                  child: Text('MR'), backgroundColor: Colors.green),
            )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 110,
        backgroundImage: NetworkImage(
            'https://swall.teahub.io/photos/small/13-132356_the-best-wallpapers-of-spiderman-miles-morales-for.jpg'),
      )),
    );
  }
}
