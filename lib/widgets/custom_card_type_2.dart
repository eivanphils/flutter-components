import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          // Una manera de agregar la imagen
          // Image(
          //   image: NetworkImage('https://images3.alphacoders.com/997/997848.jpg')
          // )
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://images3.alphacoders.com/997/997848.jpg')
          )
        ],
      ),
    );
  }
}
