import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'facebook_login_controller.dart';
import 'google_signin_controlller.dart';

// ignore: camel_case_types
class Signin_page extends StatefulWidget {
  const Signin_page({Key? key}) : super(key: key);

  @override
  _Signin_pageState createState() => _Signin_pageState();
}

// ignore: camel_case_types
class _Signin_pageState extends State<Signin_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "welcome",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/facebooklogo.jpg",
                width: 150,
                height: 200,
              ),
              Image.asset(
                "assets/images/googlelogo.jpg",
                width: 150,
                height: 200,
              ),
            ],
          ),
          loginUI(),
          fb_loginUI()
        ],
      ),
    );
  }

  // ignore: dead_code
  loginUI() {
    return Consumer<GoogleSignInController>(
      builder: (context, model, child) {
        if (model.googleAccount != null) {
          return Center(child: loggedInUI(model));
        } else {
          return loginControls(context);
          // ignore: dead_code

        }
      },
    );
  }

  loggedInUI(GoogleSignInController model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage:
              Image.network(model.googleAccount!.photoUrl ?? '').image,
          radius: 50,
        ),
        Text(model.googleAccount!.displayName ?? ''),
        Text(model.googleAccount!.email),
        ActionChip(
          avatar: Icon(Icons.logout),
          label: Text("Logout"),
          onPressed: () {
            Provider.of<GoogleSignInController>(context, listen: false)
                .Logout();
          },
        )
      ],
    );
  }

  loginControls(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Image.asset(
              "assets/images/signin12.png",
              width: 250,
            ),
            onTap: () {
              Provider.of<GoogleSignInController>(context, listen: false)
                  .Login();
            },
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  fb_loginUI() {
    return Consumer<FacebookSigninController>(
      builder: (context, model, child) {
        if (model.userdata != null) {
          return Center(child: fb_loggedInUI(model));
        } else {
          return fb_loginControls(context);
          // ignore: dead_code

        }
      },
    );
  }

  // ignore: non_constant_identifier_names
  fb_loggedInUI(FacebookSigninController model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage:
              Image.network(model.userdata!["picture"]["data"]["url"] ?? '')
                  .image,
          radius: 50,
        ),
        Text(model.userdata!["name"] ?? ''),
        Text(model.userdata!["email"]),
        ActionChip(
          avatar: Icon(Icons.logout),
          label: Text("Logout"),
          onPressed: () {
            Provider.of<FacebookSigninController>(context, listen: false)
                .logout();
          },
        )
      ],
    );
  }

  // ignore: non_constant_identifier_names
  fb_loginControls(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Image.asset(
              "assets/images/fb.png",
              width: 250,
            ),
            onTap: () {
              Provider.of<FacebookSigninController>(context, listen: false)
                  .login();
            },
          ),
        ],
      ),
    );
  }
}
