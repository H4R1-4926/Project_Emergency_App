import 'dart:developer';

import 'package:emergency_app/Application/lottie/lottie_bloc.dart';
import 'package:emergency_app/Core/colors.dart';
import 'package:emergency_app/Infrastrucure/EmPlus/em_plus_repository.dart';
import 'package:emergency_app/Presentation/Home/home_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class EmergencyPlus extends StatelessWidget {
  const EmergencyPlus({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: Container(
          height: size.size.height / 1.1,
          width: size.size.width / 1.1,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
                blurRadius: 25,
                spreadRadius: 1,
                color: kDarkRed,
                offset: Offset(8, 12))
          ], color: kWhite, borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  '(Caution: Tap the Button at your own risk)',
                  style: GoogleFonts.roboto(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 230),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(
                            'Are you sure?❗',
                            style: GoogleFonts.roboto(),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  EmPlusController().sndEmRequest();
                                  context
                                      .read<LottieBloc>()
                                      .add(const LottieEvent.started());
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const HomePage(),
                                      ),
                                      (route) => false);
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return BlocBuilder<LottieBloc,
                                          LottieState>(
                                        builder: (context, state) {
                                          if (state.isended) {
                                            Navigator.pop(context);
                                          }
                                          return AlertDialog(
                                            content: LottieBuilder.asset(
                                                'assets/lottie/check.json'),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                                child: Text('Confirm',
                                    style:
                                        GoogleFonts.roboto(color: kDarkRed))),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Close',
                                    style: GoogleFonts.roboto(color: kDarkRed)))
                          ],
                        );
                      },
                    );
                    log('Button tapped');
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: kRed,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 10,
                          blurRadius: 15,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Help Button',
                        style: GoogleFonts.lato(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
