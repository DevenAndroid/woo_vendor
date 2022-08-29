import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../resources/theme/theme.dart';



class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
 final bool? obscureText;
 final FormFieldValidator<String>? validator;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText;
  final Widget? prefixChildIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  const CustomTextField({super.key,
    this.obscureText = false, required this.controller,
    this.inputFormatters,
    this.validator, this.hintText, this.labelText, this.prefixChildIcon, this.suffixIcon, this.keyboardType});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
              width: 1.5,
                color: Colors.grey.shade300)),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText!,
        validator: validator,
        // FilteringTextInputFormatter.digitsOnly
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            fillColor: AppTheme.textBoxBackgroundColor,
            filled: true,
            hintText: hintText,
            labelStyle: TextStyle(
              color: Colors.grey[400],
              fontSize: MediaQuery.of(context).size.width * 0.040,
            ),
            labelText: labelText,
            prefixIcon: Container(
              width: 30,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(
                        color: Colors.grey.shade300)),
              ),
              child: prefixChildIcon,
            ),
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
              borderSide: BorderSide.none
            ),
            hintStyle: TextStyle(
              color: Colors.grey[400],
              fontSize: MediaQuery.of(context).size.width * 0.040,
            ),
            focusColor: AppTheme.orangeColor,
            hoverColor: AppTheme.orangeColor),
        keyboardType: keyboardType,


      ),
    );
  }
}
