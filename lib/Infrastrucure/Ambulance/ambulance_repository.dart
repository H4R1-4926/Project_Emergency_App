import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emergency_app/Domain/Ambulance/Model/ambulance_model/ambulance_model.dart';
import 'package:emergency_app/Domain/Ambulance/i_ambu_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAmbulanceRepo)
class AmbulanceController implements IAmbulanceRepo {
  @override
  Future<void> sndAmbulanceDetails(AmbulanceModel details) async {
    try {
      // await FirebaseFirestore.instance
      //     .collection('ambulance')
      //     .add(details.toJson());
      final usercol = FirebaseFirestore.instance.collection('ambulance');
      String id = usercol.doc().id;
      final newDetails = AmbulanceModel(
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
