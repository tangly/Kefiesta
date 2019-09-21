import 'package:kefiesta/core/services/auth/auth_service.dart';
import 'package:provider/provider.dart';

import 'core/services/auth/auth_service_firebase.dart';

final AuthService authService = AuthServiceFirebase();

List<SingleChildCloneableWidget> providers = [
  ...independentServices,
  ...dependentServices
];

List<SingleChildCloneableWidget> independentServices = [
  Provider.value(value: authService)
];

List<SingleChildCloneableWidget> dependentServices = [];