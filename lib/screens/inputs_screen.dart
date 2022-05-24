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
              children: [
                const CustomInputField(),
                const SizedBox(height: 20),
                const CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre de usuario',
                ),
                const SizedBox(height: 20),
                const CustomInputField(
                  labelText: 'Tarjeta',
                  hintText: 'Nro de tarjeta',
                  helperText: 'Introduce el valor de tu tarjeta',
                  icon: Icons.card_giftcard,
                  suffixIcon: Icons.check,
                ),
                const SizedBox(height: 20),
                const CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo electronico',
                  suffixIcon: Icons.mail,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                const CustomInputField(labelText: 'Password', hintText: 'Password del usuario', obscureText: true),
                const SizedBox(height: 20),
                const CustomInputField(labelText: 'Url', hintText: 'pagina web', obscureText: true, keyboardType: TextInputType.url),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const SizedBox(
                    width: 330,
                    height: 50,
                    child: Center(
                      child: Text('Guardar', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)
                    )
                  ),
                  onPressed: () {
                    
                  },
                )
              ],
            ),
          ),
        ));
  }
}
