import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        children: const [
          CustomCardWidget1(),
          SizedBox(height: 10),
          CustomCardWidged2(
            imageUrl:
                'https://store-images.s-microsoft.com/image/apps.11706.13510798887588169.0eadce39-7717-4a7e-b7d9-535985030432.0ebe3152-7a6d-4b02-a8fa-a68262aee19d?mode=scale&q=90&h=1080&w=1920',
          ),
          SizedBox(height: 10),
          CustomCardWidged2(
              imageUrl:
                  'https://images5.alphacoders.com/115/thumb-1920-1151026.jpg',
              title: 'Games'),
          SizedBox(height: 10),
          CustomCardWidged2(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShfd_mQqj8w93HX5mo_C7scgXUYbJoyB1TdQ&usqp=CAU',
          ),
        ],
      ),
    );
  }
}
