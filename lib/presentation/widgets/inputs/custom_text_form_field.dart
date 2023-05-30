import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final bool obscureText;
  final String? label;
  final String? hint;
  final String? errorMessage;
  final Function(String)? onChange;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    this.obscureText = false,
    this.label,
    this.hint,
    this.errorMessage,
    this.onChange,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
    );

    return TextFormField(
      onChanged: onChange,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(color: colors.primary),
        ),
        isDense: true,
        label: label != null ? Text(label!) : null,
        hintText: hint,
        errorBorder:
            border.copyWith(borderSide: BorderSide(color: Colors.red.shade800)),
        focusedErrorBorder:
            border.copyWith(borderSide: BorderSide(color: Colors.red.shade800)),
        focusColor: colors.primary,
        errorText: errorMessage,
        prefixIcon: Icon(
          Icons.supervised_user_circle_outlined,
          color: colors.primary,
        ),
      ),
    );
  }
}
