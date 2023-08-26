import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:zamili_app/core/extension.dart';
import 'package:zamili_app/widget/colors_frave.dart';
import 'package:zamili_app/widget/text_custom.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    Key? key,
    this.readOnly = false,
    required this.text,
    this.suffixIcon,
    this.hintText,
    this.prefix,
    this.labelText,
    this.controller,
    this.keyboardType,
    this.validator,
    this.onChanged,
    this.maxLines,
    this.maxLength,
    this.focus,
  }) : super(key: key);

  final String text;
  final bool readOnly;
  final TextInputType? keyboardType;
  final Widget? suffixIcon, prefix;
  final String? hintText, labelText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final int? maxLines;
  final int? maxLength;
  final FocusNode? focus;

// to open keyboard call this function;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myPadding.hSize,
        CustomText(
          text: text,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        5.5.hSize,
        TextFormField(
          maxLines: maxLines,
          maxLength: maxLength,
          readOnly: readOnly,
          focusNode: focus,
          scrollPadding: EdgeInsets.zero,
          autofocus: false,
          onChanged: onChanged,
          controller: controller,
          keyboardType: keyboardType,
          validator: validator,
          style: const TextStyle(
            fontSize: 14,
            color: MyColors.primaryColor,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: myPadding,
              vertical: 9,
            ),
            suffix: const Icon(
              LineIcons.check,
              color: MyColors.primaryColor,
              size: 20,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.primaryColor, width: 0.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: MyColors.primaryColor.withOpacity(0.1)),
              borderRadius: BorderRadius.circular(5),
            ),
            errorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 206, 33, 21)),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 206, 33, 21)),
              borderRadius: BorderRadius.circular(5),
            ),
            prefixIcon: prefix,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: MyColors.lineColor,
          ),
        ),
      ],
    );
  }
}

class MyInputNoText extends StatelessWidget {
  const MyInputNoText({
    Key? key,
    this.suffixIcon,
    this.hintText,
    this.prefix,
    this.labelText,
    this.controller,
    this.keyboardType,
    this.validator,
  }) : super(key: key);

  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? hintText, labelText;
  final Widget? suffixIcon, prefix;

  OutlineInputBorder onError() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(5),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      style: const TextStyle(
        fontSize: 13,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: myPadding, vertical: 12),
        hintText: hintText,
        labelStyle: const TextStyle(color: MyColors.textRedColor, fontSize: 12),
        hintStyle:
            TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.3)),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.primaryColor, width: 0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.primaryColor.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: onError(),
        focusedErrorBorder: onError(),
        filled: true,
        fillColor: MyColors.lineColor,
        prefixIcon: prefix,
        suffix: suffixIcon,
      ),
    );
  }
}
