// ignore_for_file: must_be_immutable

import 'package:emergency_app/Application/Pass/pass_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

class PassWordTextField extends StatelessWidget {
  PassWordTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.controller,
    required this.onPressed,
    required this.obscureText,
    required this.icons,
    this.validator,
  });

  final String label;
  final String hintText;
  final Function() onPressed;
  final bool obscureText;
  final Icon icons;
  final String? Function(String?)? validator;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: BlocBuilder<PassBloc, PassState>(
        builder: (context, state) {
          return TextFormField(
            validator: validator,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: onPressed, icon: icons),
                label: Text(label, style: GoogleFonts.roboto()),
                hintText: hintText,
                hintStyle: GoogleFonts.roboto(),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25))),
          );
        },
      ),
    );
  }
}

class NormalTextField extends StatelessWidget {
  NormalTextField(
      {super.key,
      required this.keyboardType,
      required this.label,
      required this.hintText,
      this.controller,
      this.validator});

  final TextInputType keyboardType;
  final String label;
  final String hintText;
  final String? Function(String?)? validator;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        validator: validator,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            label: Text(label, style: GoogleFonts.roboto()),
            hintText: hintText,
            hintStyle: GoogleFonts.roboto(),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}

// class DropTextFormField extends StatelessWidget {
//   DropTextFormField({super.key, this.selectedValue});
//   String? selectedValue;
//   @override
//   Widget build(BuildContext context) {
//     final gender = ['Male', 'Female', 'Others'];
//     return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//         child: DropdownButtonFormField(
//           decoration: InputDecoration(
//               border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
//           hint: Text('Select Gender', style: GoogleFonts.roboto()),
//           value: selectedValue,
//           items: gender.map((e) {
//             return DropdownMenuItem(value: e, child: Text(e));
//           }).toList(),
//           onChanged: (value) {
//             selectedValue = value;
//           },
//         ));
//   }
// }

class LongTextField extends StatelessWidget {
  const LongTextField(
      {super.key,
      required this.keyboardType,
      required this.label,
      required this.hintText,
      required this.maxLines,
      required this.maxLength,
      this.controller,
      this.validator});
  final TextInputType keyboardType;
  final String label;
  final String hintText;
  final int maxLines;
  final int maxLength;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: TextFormField(
          validator: validator,
          controller: controller,
          maxLines: maxLines,
          maxLength: maxLength,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              label: Text(label, style: GoogleFonts.roboto()),
              hintText: hintText,
              hintStyle: GoogleFonts.roboto(),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
        ));
  }
}
