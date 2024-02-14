import 'package:emergency_app/Domain/Police/Model/police_model/police_model.dart';

abstract class IPoliceRepo {
  Future<void> sndPoliceDetails(PoliceModel details);
}
