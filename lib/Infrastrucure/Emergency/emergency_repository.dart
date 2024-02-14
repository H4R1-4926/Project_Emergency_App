import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emergency_app/Domain/Emergency/Model/emergency_model/emergency_model.dart';
import 'package:emergency_app/Domain/Emergency/i_emergency_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IEmergencyRepo)
class EmergencyController implements IEmergencyRepo {
  @override
  Future<void> sndEmergencyDetails(EmergencyModel details) async {
    try {
      // await FirebaseFirestore.instance
      //     .collection('emergency')
      //     .add(details.toJson());
      final usercol = FirebaseFirestore.instance.collection('emergency');
      String id = usercol.doc().id;
      final newDetails = EmergencyModel(
              id: id,
              date: DateTime.now().toString(),
              name: details.name,
              phone: details.phone,
              location: details.location,
              extra: details.extra,
              call: details.call,
              level: details.level)
          .toJson();
      await usercol.doc(id).set(newDetails);
    } catch (e) {
      log('error in: $e');
    }
  }
}
