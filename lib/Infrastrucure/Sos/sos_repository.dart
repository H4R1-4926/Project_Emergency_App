import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emergency_app/Domain/Sos/Model/sos_model/sos_model.dart';
import 'package:emergency_app/Domain/Sos/i_sos_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISosRepo)
class SosController implements ISosRepo {
  @override
  Future<void> sndSosDetails(SosModel details) async {
    try {
      // await FirebaseFirestore.instance.collection('sos').add(details.toJson());
      final usercol = FirebaseFirestore.instance.collection('sos');
      String id = usercol.doc().id;
      final newDetails = SosModel(
              id: id,
              date: DateTime.now().toString(),
              name: details.name,
              phone: details.phone,
              location: details.location,
              extra: details.extra,
              call: details.call)
          .toJson();
      await usercol.doc(id).set(newDetails);
    } catch (e) {
      log('error in: $e');
    }
  }
}
