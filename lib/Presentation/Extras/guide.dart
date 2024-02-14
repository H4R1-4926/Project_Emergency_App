import 'package:emergency_app/Core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserGuidePage extends StatelessWidget {
  const UserGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: kLightRed,
          backgroundColor: kDarkRed,
          title: Text(
            'Guide',
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: SingleChildScrollView(
                child: Text(
                  '''1) Police Emergency: Tap the "Police Emergency" button to connect directly to local law enforcement agencies. Provide relevant details of the situation to expedite assistance.

2) Ambulance Emergency: In medical emergencies, tap the "Ambulance Emergency" button to summon paramedics to your location. Provide concise information about the medical issue for efficient response.

3) SOS Emergency: Activate the "SOS Emergency" feature to alert your designated emergency contacts about your distress. Your precise location will be shared with them for immediate assistance.

4) Emergency Situatoins: Use the "Emergency" feature to seek help for the level that is described by you.

5) High Alert Button Emergency: In critical situations requiring urgent intervention, press the "High Alert Button" for intensified emergency response. Emergency services and designated contacts will be notified immediately.

6) Help Request: You can also seek assistance in non-life threatening emergencies. Describe your situation accurately to recieve appororiate support.''',
                  style: GoogleFonts.robotoMono(fontSize: 18),
                ),
              ),
            ),
          ),
        ));
  }
}
