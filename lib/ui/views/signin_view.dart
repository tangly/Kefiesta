import 'package:flutter/material.dart';
import 'package:kefiesta/core/services/auth/auth_service.dart';
import 'package:provider/provider.dart';

class SignInView extends StatelessWidget {
  SignInView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final AuthService auth = Provider.of<AuthService>(context);

    return Container(
      color: Colors.green,
      child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[RaisedButton(
          child: Text("Login with Google"),
          onPressed: () {
              auth.signInWithGoogle();
          },
        ),
        RaisedButton(
          child: Text("Anonymous"),
          onPressed: () {
              auth.signInAnonymously();
          },
        ),
        RaisedButton(
          child: Text("Facebook"),
          onPressed: () {
              auth.signInWithFacebook();
          },
        )],
      ),
    );
  }
}
