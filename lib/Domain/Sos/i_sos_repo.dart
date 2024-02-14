import 'package:emergency_app/Domain/Sos/Model/sos_model/sos_model.dart';

abstract class ISosRepo {
  Future<void> sndSosDetails(SosModel details);
}
