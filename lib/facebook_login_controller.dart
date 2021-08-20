import 'package:flutter/foundation.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

// ignore: camel_case_types
class FacebookSigninController with ChangeNotifier {
  Map? userdata;

  login() async {
    var result =
        await FacebookAuth.i.login(permissions: ["public_profile", "email"]);

    // ignore: unrelated_type_equality_checks
    if (result.status == LoginStatus.success) {
      final requestdata = await FacebookAuth.i.getUserData(
        fields: "email, name, picture",
      );

      userdata = requestdata;
      notifyListeners();
    }
  }

  logout() async {
    await FacebookAuth.i.logOut();
    userdata = null;
    notifyListeners();
  }
}
