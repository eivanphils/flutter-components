import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Itachi Uchiha'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              child: Text('IU'),
            ),
          ),
        ]
      ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 110,
          backgroundImage: NetworkImage('https://www.egames.news/__export/1623693804178/sites/debate/img/2021/06/14/copia_de_egames_-_2021-06-14t115944_249.jpg_1187729725.jpg'),
        ),
      ),
    );
  }
}