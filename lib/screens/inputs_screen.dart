import 'package:flutter/material.dart';

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
                TextFormField(
                  autofocus: false,
                  initialValue: '',
                  maxLength: 15,
                  autocorrect: false,
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'El campo es obligatorio';
                    }

                    return value.length < 3 ? 'Minimo 3 caracteres' : null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    hintText: 'Nombre del usuario',
                    labelText: 'Nombre',
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    helperText: 'Solo texto',
                    prefixIcon: Icon(Icons.abc_sharp),
                    suffixIcon: Icon(Icons.input_sharp),
                    icon: Icon(Icons.credit_card),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green
                      )
                    )
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
