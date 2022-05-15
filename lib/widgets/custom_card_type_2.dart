import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String image;
  final String? title;

  const CustomCardType2({
    Key? key,
    this.image = 'https://images3.alphacoders.com/997/997848.jpg',
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      elevation: 20,
      shadowColor: AppTheme.primaryColor.withOpacity(0.8),
      child: Column(
        children: [
          // Una manera de agregar la imagen
          // Image(
          //   image: NetworkImage('https://images3.alphacoders.com/997/997848.jpg')
          // )
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(image),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if(title != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(title!),
            )
        ],
      ),
    );
  }
}
