import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kefiesta/core/services/auth/auth_service.dart';
import 'signin_view.dart';
import 'package:provider/provider.dart';

import 'home_view.dart';

class SplashView extends StatefulWidget {
  SplashView({Key key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool isLoading;

  // If all goes well, when you launch the app
  // you'll see a loading spinner for 2 seconds
  // Then the HomeScreen main view will appear
  Future<Null> startCountdown() async {
    const timeOut = const Duration(seconds: 3);

    if (isLoading == null) {
      isLoading = true;

      new Timer(timeOut, () {
        setState(() => isLoading = false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    
    startCountdown();

    if (isLoading) {
      return Container(
        color: Colors.yellow,
        child: Center(child: CircularProgressIndicator()),
      );
    } else {
      final AuthService auth = Provider.of<AuthService>(context);
      return StreamBuilder<User>(
        stream: auth.onAuthStateChanged,
        builder: (_, AsyncSnapshot<User> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User user = snapshot.data;
            print("SplasView: user : $user");

            if (user == null) {
              return SignInView();
            } else {
              return Provider<User>.value(
                value: user,
                child: HomeView(),
              );
            }
          }
          return Container(
            color: Colors.yellow,
            child: Center(child: CircularProgressIndicator()),
          );
        },
      );
    }
  }
}
