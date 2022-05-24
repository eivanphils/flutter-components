import 'package:flutter/material.dart';

import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'name': 'Phils',
      'card_number': '1231312',
      'email': 'asda@gmail.com',
      'password': '123123',
      'website': 'http://google.com',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs - Form'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre de usuario',
                    formValues: formValues,
                    formProperty: 'name'
                  ),
                  const SizedBox(height: 20),
                  CustomInputField(
                    labelText: 'Tarjeta',
                    hintText: 'Nro de tarjeta',
                    helperText: 'Introduce el valor de tu tarjeta',
                    icon: Icons.card_giftcard,
                    suffixIcon: Icons.check,
                    keyboardType: TextInputType.number,
                    formValues: formValues,
                    formProperty: 'card_number'
                  ),
                  const SizedBox(height: 20),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo electronico',
                    suffixIcon: Icons.mail,
                    keyboardType: TextInputType.emailAddress,
                    formValues: formValues,
                    formProperty: 'email'

                  ),
                  const SizedBox(height: 20),
                  CustomInputField(
                    labelText: 'Password',
                    hintText: 'Password del usuario',
                    obscureText: true,
                    formValues: formValues,
                    formProperty: 'password'
                  ),
                  const SizedBox(height: 20),
                  CustomInputField(
                    labelText: 'Url',
                    hintText: 'pagina web',
                    obscureText: true,
                    keyboardType: TextInputType.url,
                    formValues: formValues,
                    formProperty: 'website'
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    child: const SizedBox(
                        width: 330,
                        height: 50,
                        child: Center(
                            child: Text(
                          'Guardar',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ))),
                    onPressed: () {

                      //* Forma de ocultar el keyboard al presionar el boton del formulario
                      FocusManager.instance.primaryFocus?.unfocus();

                      if (!myFormKey.currentState!.validate()) {
                        print('formulario no valido');
                        return;
                      }
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
