
import 'package:flutter/material.dart';



class TextFromCustom extends StatelessWidget {
  TextEditingController? controller;
  FormFieldValidator<String>? validator;
  Widget? suffixIcon;
  Widget? prefixIcon;
  String? hintText;
  dynamic onField;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(

      controller: controller,
      validator: validator,
      onFieldSubmitted:onField ,
      decoration:  InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        vertical: 10
      ),
      isDense: true,

      // filled: true,
      // fillColor: Color(0xffe3bb26),
      hintText: hintText,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 1,
            color: Colors.grey,
          )
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),

          borderSide: const BorderSide(
            width: 1,
            color: Colors.grey,
          )
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    ),
    );

  }

  TextFromCustom({super.key,
    this.controller,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.onField,
    this.hintText,
  });
}
