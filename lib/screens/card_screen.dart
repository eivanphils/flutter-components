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
          CustomCard(
            title: 'Titulo dentro del card 2',
            subtitle: 'Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. 2',
            icon: Icons.lock_clock
          ),
          CustomCard(
            title: 'Titulo dentro del card 3',
            subtitle: 'Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. 3',
            icon: Icons.people_alt
          ),
          CustomCard(
            title: 'Titulo dentro del card 4',
            subtitle: 'Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. 3',
            icon: Icons.people_alt
          ),
          CustomCard(
            title: 'Titulo dentro del card 5',
            subtitle: 'Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. 3',
            icon: Icons.people_alt
          ),
          CustomCard(
            title: 'Titulo dentro del card 6',
            subtitle: 'Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. Est aute mollit aliquip pariatur adipisicing in. 3',
            icon: Icons.people_alt
          ),
        ],
      )
    );
  }
}