import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sparksfoundation/facebook_login_controller.dart';

import 'Homepage.dart';
import 'google_signin_controlller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GoogleSignInController(),
          child: Signin_page(),
        ),
        ChangeNotifierProvider(
          create: (context) => FacebookSigninController(),
          child: Signin_page(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "flutter",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Signin_page(),
      ),
    );
  }
}
