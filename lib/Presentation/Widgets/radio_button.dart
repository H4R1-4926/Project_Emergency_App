import 'package:emergency_app/Core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioButtonUi extends StatelessWidget {
  const RadioButtonUi({
    super.key,
    required this.groupValue,
    required this.onChanged,
    required this.value,
    required this.textData,
  });

  final String groupValue;
  final void Function(String?)? onChanged;
  final String value;
  final String textData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: kDarkRed,
        ),
        Text(
          textData,
          style: GoogleFonts.roboto(fontSize: 15),
        ),
      ],
    );
  }
}
