import 'package:emergency_app/Domain/Emergency/Model/emergency_model/emergency_model.dart';

abstract class IEmergencyRepo {
  Future<void> sndEmergencyDetails(EmergencyModel details);
}
