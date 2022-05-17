import 'package:flutter/material.dart';

import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs - Form'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: const [
                CustomInputField(),
                SizedBox(height: 20),
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre de usuario',
                ),
                SizedBox(height: 20),
                CustomInputField(
                  labelText: 'Tarjeta',
                  hintText: 'Nro de tarjeta',
                  helperText: 'Introduce el valor de tu tarjeta',
                  icon: Icons.card_giftcard,
                  suffixIcon: Icons.check,
                ),
                SizedBox(height: 20),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo electronico',
                  suffixIcon: Icons.mail,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),
                CustomInputField(labelText: 'Password', hintText: 'Password del usuario', obscureText: true)
              ],
            ),
          ),
        ));
  }
}
