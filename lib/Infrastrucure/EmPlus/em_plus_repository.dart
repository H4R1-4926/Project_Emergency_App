import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emergency_app/Domain/Emergency_plus/Model/em_plus_model/em_plus_model.dart';

import 'package:emergency_app/Domain/Emergency_plus/i_emplus_repo.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IEmPlusRepo)
class EmPlusController implements IEmPlusRepo {
  User? users;
  @override
  Future<void> sndEmRequest() async {
    try {
      users = FirebaseAuth.instance.currentUser;
      log(users.toString());

      final userSnapshot = await FirebaseFirestore.instance
          .collection('user')
          .doc(users!.uid)
          .get();

      // for (QueryDocumentSnapshot userDetails in userSnapshot.data()) {
      //   log(userSnapshot.docs.toString());
      final result = userSnapshot.data() as Map<String, dynamic>;

      EmPlusModel user = EmPlusModel.fromJson(result);
      final newUser = EmPlusModel(
              id: users!.uid,
              name: user.name,
              phone: user.phone,
              secondaryPhone: user.secondaryPhone,
              location: user.location,
              email: user.email,
              date: DateTime.now().toString())
          .toJson();

      await FirebaseFirestore.instance
          .collection('emergency_plus')
          .doc(users!.uid)
          .set(newUser);
      // }
      log('success');
    } catch (e) {
      log('err in: $e');
    }
  }
}
