// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:sparksfoundation/facebook_login_controller.dart';

// import 'google_signin_controlller.dart';

// // ignore: camel_case_types
// class fb_login_page extends StatefulWidget {
//   const fb_login_page({Key? key}) : super(key: key);

//   @override
//   _fb_login_pageState createState() => _fb_login_pageState();
// }

// // ignore: camel_case_types
// class _fb_login_pageState extends State<fb_login_page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "welcome",
//           textAlign: TextAlign.center,
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.blue,
//         elevation: 0,
//       ),
//       body: fb_loginUI(),
//     );
//   }

//   // ignore: dead_code
//   // ignore: non_constant_identifier_names
//   fb_loginUI() {
//     return Consumer<FacebookSigninController>(
//       builder: (context, model, child) {
//         if (model.userdata != null) {
//           return Center(child: loggedInUI(model));
//         } else {
//           return loginControls(context);
//           // ignore: dead_code

//         }
//       },
//     );
//   }

//   loggedInUI(FacebookSigninController model) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         CircleAvatar(
//           backgroundImage:
//               Image.network(model.userdata!["picture"]["data"]["url"] ?? '')
//                   .image,
//           radius: 50,
//         ),
//         Text(model.userdata!["name"] ?? ''),
//         Text(model.userdata!["email"]),
//         ActionChip(
//           avatar: Icon(Icons.logout),
//           label: Text("Logout"),
//           onPressed: () {
//             Provider.of<FacebookSigninController>(context, listen: false)
//                 .logout();
//           },
//         )
//       ],
//     );
//   }

//   loginControls(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           GestureDetector(
//             child: Image.asset(
//               "assets/images/signin12.png",
//               width: 250,
//             ),
//             onTap: () {
//               Provider.of<GoogleSignInController>(context, listen: false)
//                   .Login();
//             },
//           ),
//           GestureDetector(
//             child: Image.asset(
//               "assets/images/fb.png",
//               width: 250,
//             ),
//             onTap: () {
//               Provider.of<FacebookSigninController>(context, listen: false)
//                   .login();
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
