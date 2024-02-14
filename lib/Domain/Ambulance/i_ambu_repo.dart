import 'package:emergency_app/Domain/Ambulance/Model/ambulance_model/ambulance_model.dart';

abstract class IAmbulanceRepo {
  Future<void> sndAmbulanceDetails(AmbulanceModel details);
}
