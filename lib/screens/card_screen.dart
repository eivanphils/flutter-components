import 'package:flutter/material.dart';

import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        children: const [
          CustomCard(
            title: 'Titulo dentro del card',
            subtitle: 'Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in.',
            icon: Icons.photo_album
          ),
          SizedBox(height: 10),
          CustomCard(
            title: 'Titulo dentro del card 2',
            subtitle: 'Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. 2',
            icon: Icons.lock_clock
          ),
          SizedBox(height: 10),
          CustomCardType2(),
          SizedBox(height: 10),
          CustomCardType2(
            image: 'https://d1fytg1nnnd8c0.cloudfront.net/wp-content/uploads/2022/01/WZP-S1-ANNOUNCEMENT-009.jpg',
            title: 'Warzone - Vanguard',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            image: 'https://i2.wp.com/www.pcmrace.com/wp-content/uploads/2019/05/APlagueTaleInnocence_x64-2019-05-05-05-28-13-822.jpg?ssl=1',
            title: 'A Plague Tale',
          ),
          SizedBox(height: 10),
        ],
      )
    );
  }
}