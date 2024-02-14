// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emergency_app/Core/colors.dart';

import 'package:emergency_app/Domain/User/Model/user_model/user_model.dart';
import 'package:emergency_app/Domain/User/i_user_repo.dart';

import 'package:emergency_app/Presentation/Splash/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class UserController implements IUserRepository {
  final fbAuth = FirebaseAuth.instance;
  User? fbUser;
  @override
  Future<void> signInUser(
      {required String email,
      required String password,
      required UserModel user}) async {
    try {
      final userCredential = await fbAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      fbUser = userCredential.user;
      if (fbUser != null) {
        await FirebaseFirestore.instance
            .collection('user')
            .doc(fbUser!.uid)
            .set({
          'id': fbUser!.uid,
          'name': user.name,
          'location': user.location,
          'gender': user.gender,
          'phone': user.phone,
          'secondary_phone': user.secondaryPhone,
          'email': user.email,
          'password': user.password,
        });
        log('Success');
      }
    } catch (e) {
      log('unsuccess..err in: $e');
    }
  }

  @override
  Future<void> loginInUser({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await fbAuth.signInWithEmailAndPassword(
          email: email, password: password);
      fbUser = userCredential.user;

      log('success');
      Get.to(() => const SplashScreen());
    } catch (e) {
      log('Error found: $e');
      Get.showSnackbar(GetSnackBar(
        messageText: Center(
          child: Text(
            'Invalid Details',
            style: GoogleFonts.roboto(
                color: kWhite, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        maxWidth: 150,
        borderRadius: 25,
        backgroundColor: kDarkRed,
        snackPosition: SnackPosition.TOP,
        snackStyle: SnackStyle.FLOATING,
        boxShadows: const [BoxShadow(blurRadius: 50, color: Colors.black54)],
        duration: const Duration(seconds: 2),
      ));
    }
  }

  @override
  Future<void> logOutUser() async {
    await fbAuth.signOut();
  }
}
