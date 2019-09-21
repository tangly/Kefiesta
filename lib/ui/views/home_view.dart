import 'package:flutter/material.dart';
import 'package:kefiesta/core/services/auth/auth_service.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final AuthService auth = Provider.of<AuthService>(context);
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        IconButton(onPressed: ()=> auth.signOut(), icon: Icon( Icons.exit_to_app),)
      ],),
       body: Container(color: Colors.red,),
    );
  }
}