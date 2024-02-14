import 'package:emergency_app/Core/colors.dart';
import 'package:emergency_app/Presentation/EmScreens/Ambulance/ambulance_em.dart';
import 'package:emergency_app/Presentation/EmScreens/Em+/em_quick.dart';
import 'package:emergency_app/Presentation/EmScreens/Emergency/emergency.dart';
import 'package:emergency_app/Presentation/EmScreens/Police/police_em.dart';
import 'package:emergency_app/Presentation/EmScreens/Sos/sos_em.dart';
import 'package:emergency_app/Presentation/Home/Widget/drawer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Text(
          'What\'s the Emergency',
          style:
              GoogleFonts.montserrat(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => Get.to(() => PoliceEm()),
                child: const EmContainer(
                  img: DecorationImage(
                      image: AssetImage('assets/img/police_vector.jpg'),
                      fit: BoxFit.fill),
                  label: '100',
                ),
              ),
              GestureDetector(
                onTap: () => Get.to(() => AmbulanceEm()),
                child: const EmContainer(
                  img: DecorationImage(
                      image: AssetImage('assets/img/ambulance_vector.jpg'),
                      fit: BoxFit.fill),
                  label: '101',
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => Get.to(() => SosEm()),
                child: const EmContainer(
                  img: DecorationImage(
                      image: AssetImage('assets/img/sos_vector.jpg'),
                      fit: BoxFit.fill),
                  label: 'SOS',
                ),
              ),
              GestureDetector(
                onTap: () => Get.to(() => EmergencyHelp()),
                child: const EmContainer(
                  img: DecorationImage(
                      image: AssetImage('assets/img/emergency_vector.jpg'),
                      fit: BoxFit.fill),
                  label: 'Emergency',
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () => Get.to(() => const EmergencyPlus()),
            child: const EmContainer(
              img: DecorationImage(
                  image: AssetImage('assets/img/emergency_plus_vector.jpg'),
                  fit: BoxFit.fill),
              label: 'Emergency+',
            ),
          ),
        ],
      ),
    );
  }
}

class EmContainer extends StatelessWidget {
  const EmContainer({
    super.key,
    required this.img,
    required this.label,
  });
  final DecorationImage img;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: GoogleFonts.lato(
              fontSize: 20, fontWeight: FontWeight.bold, color: kDarkRed),
        ),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            image: img,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 15,
                offset: const Offset(1, 10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
