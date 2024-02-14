import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emergency_app/Domain/Police/Model/police_model/police_model.dart';
import 'package:emergency_app/Domain/Police/i_police_repo.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IPoliceRepo)
class PoliceController implements IPoliceRepo {
  @override
  Future<void> sndPoliceDetails(PoliceModel details) async {
    try {
      // await FirebaseFirestore.instance
      //     .collection('police')
      //     .add(details.toJson());
      final usercol = FirebaseFirestore.instance.collection('police');
      String id = usercol.doc().id;
      final newDetails = PoliceModel(
              id: id,
              date: DateTime.now().toString(),
              name: details.name,
              phone: details.phone,
              location: details.location,
              extra: details.extra)
          .toJson();
      await usercol.doc(id).set(newDetails);
    } catch (e) {
      log('error in: $e');
    }
  }
}
