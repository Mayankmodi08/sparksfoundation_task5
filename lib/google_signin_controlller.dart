import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInController with ChangeNotifier {
  var _goolgeSignIn = GoogleSignIn(); //import GoogleSignIn Package
  GoogleSignInAccount? googleAccount; //Create variable of googleSignInAccount
  //This GoogleSignInAccount Use to get the detail google acoountlike email,name,picture

  // ignore: non_constant_identifier_names
  Login() async {
    this.googleAccount = await _goolgeSignIn.signIn();
    notifyListeners();
  }

  // ignore: non_constant_identifier_names
  Logout() async {
    this.googleAccount = await _goolgeSignIn.signOut();
    notifyListeners();
  }
}
