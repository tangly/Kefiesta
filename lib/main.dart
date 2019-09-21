import 'package:flutter/material.dart';
import 'package:kefiesta/provider_setup.dart';
import 'package:kefiesta/ui/router.dart';
import 'package:provider/provider.dart';

import 'core/constants/app_constant.dart';

void main(){
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'La Comission',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RoutePaths.Splash,
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
