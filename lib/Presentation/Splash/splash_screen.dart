import 'package:emergency_app/Application/Splash/splash_bloc.dart';
import 'package:emergency_app/Core/colors.dart';
import 'package:emergency_app/Presentation/Home/home_page.dart';
import 'package:emergency_app/Presentation/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SplashBloc>().add(const Check());
    });
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.authenticated != null) {
          Get.to(() => const HomePage());
        } else {
          Get.to(() => LoginPage());
        }
      },
      child: Scaffold(
        backgroundColor: kWhite,
        body: Center(
          child: LottieBuilder.asset(
            'assets/lottie/loading.json',
            height: 250,
            width: 250,
          ),
        ),
      ),
    );
  }
}
