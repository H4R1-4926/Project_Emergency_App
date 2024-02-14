import 'package:emergency_app/Core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: kLightRed,
          backgroundColor: kDarkRed,
          title: Text(
            'About',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, color: kWhite, fontSize: 30),
          ),
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.1,
            height: MediaQuery.of(context).size.height / 1.2,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    blurRadius: 25,
                    spreadRadius: 1,
                    color: kDarkRed,
                    offset: Offset(8, 12))
              ],
              color: kWhite,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: SingleChildScrollView(
                child: Text(
                  '''Welcome to Help Link App, your go-to solution for emergency situations.
Our app is designed to be your lifeline during crises, 
offering immediate access to vital services with just a few taps. 
Whether you're facing a medical emergency, in need of police assistance,
or seeking help from your trusted contacts,
Help Link App is here to ensure your safety and well-being With intuitive features like SOS alerts,
direct connections to emergency services,and seamless communication with designated contacts, 
we strive to provide peace of mind and swift assistance when it matters most.
Download Help Link App today and be prepared for any emergency.''',
                  style: GoogleFonts.robotoMono(fontSize: 19),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ));
  }
}
