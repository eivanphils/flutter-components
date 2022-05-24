import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField(
    {Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.suffixIcon,
    this.icon,
    this.prefixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        initialValue: '',
        autocorrect: false,
        textCapitalization: TextCapitalization.words,
        onChanged: (value) => formValues[formProperty] = value,
        validator: (value) {
          if (value == null) {
            return 'El campo es obligatorio';
          }

          return value.length < 3 ? 'Minimo 3 caracteres' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          helperText: helperText,
          prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
        ));
  }
}
