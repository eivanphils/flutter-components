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
                TextField(
                  autofocus: true,
                  onChanged: (value) {
                    print(value);
                  },
                ),
                TextFormField(
                  autofocus: true,
                  initialValue: 'Mi nombre',
                  maxLength: 15,
                  autocorrect: false,
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) {
                    print(value);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
