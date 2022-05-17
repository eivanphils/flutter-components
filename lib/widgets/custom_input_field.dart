import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final IconData? icon;

  const CustomInputField({
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.suffixIcon,
    this.icon,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          helperText: helperText,
          prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
      )
    );
  }
}
