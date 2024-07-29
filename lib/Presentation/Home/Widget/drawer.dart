import 'package:emergency_app/Core/colors.dart';
import 'package:emergency_app/Infrastrucure/User/user_repository.dart';
import 'package:emergency_app/Presentation/Extras/about.dart';
import 'package:emergency_app/Presentation/Extras/guide.dart';
import 'package:emergency_app/Presentation/Extras/terms_condition.dart';

import 'package:emergency_app/Presentation/Splash/splash_screen.dart';
import 'package:emergency_app/Presentation/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              padding: const EdgeInsets.fromLTRB(16, 1, 16, 1),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/img/logo_trans.png'),
                  ),
                  Text(
                    'Help Link',
                    style: GoogleFonts.robotoMono(
                        fontSize: 18,
                        color: kDarkRed,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )),
          Extras(
            icon: Icons.book_outlined,
            label: 'User Guide',
            onTap: () => Get.to(() => const UserGuidePage()),
          ),
          Extras(
              icon: Icons.share_outlined,
              label: 'Share',
              onTap: () {
                FlutterShare.share(title: 'Help Link Emergency Assistant app');
              }),
          Extras(
            icon: Icons.assignment_outlined,
            label: 'Terms & Conditions',
            onTap: () => Get.to(() => const TermsAndConditionPage()),
          ),
          Extras(
            icon: Icons.info_outline,
            label: 'About',
            onTap: () => Get.to(() => const AboutPage()),
          ),
          GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      'Log out',
                      style: GoogleFonts.lato(color: kDarkRed),
                    ),
                    content: Text(
                      'Are you sure to logout',
                      style: GoogleFonts.lato(color: kDarkRed),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            UserController().logOutUser();
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SplashScreen(),
                                ),
                                (route) => false);
                          },
                          child: Text(
                            'Yes',
                            style: GoogleFonts.lato(color: kDarkRed),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'No',
                            style: GoogleFonts.lato(color: kDarkRed),
                          ))
                    ],
                  ),
                );
              },
              child: const ButtonUi(text: 'L O G O U T')),
          const Text('Version : 1.0.0')
        ],
      ),
    );
  }
}

class Extras extends StatelessWidget {
  const Extras({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
  });
  final IconData icon;
  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 50,
        width: 240,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: kDarkRed,
              size: 25,
            ),
            const SizedBox(
              width: 25,
            ),
            Text(
              label,
              style: GoogleFonts.merriweather(
                fontSize: 18,
                color: kDarkRed,
              ),
            )
          ],
        ),
      ),
    );
  }
}
