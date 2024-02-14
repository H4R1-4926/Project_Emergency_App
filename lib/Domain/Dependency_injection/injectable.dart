import 'package:emergency_app/Domain/Dependency_injection/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getit = GetIt.instance;

@InjectableInit()
Future<void> configureInjectable() async {
  $initGetIt(getit, environment: Environment.prod);
}
