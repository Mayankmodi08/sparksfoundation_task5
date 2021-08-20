// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'google_signin_controlller.dart';

// class G_login extends StatefulWidget {
//   G_login({required this.model, Key? key}) : super(key: key);
//   GoogleSignInController model;
//   @override
//   _G_loginState createState() => _G_loginState();
// }

// class _G_loginState extends State<G_login> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           CircleAvatar(
//             backgroundImage:
//                 Image.network(widget.model.googleAccount!.photoUrl ?? '').image,
//             radius: 50,
//           ),
//           Text(widget.model.googleAccount!.displayName ?? ''),
//           Text(widget.model.googleAccount!.email),
//           ActionChip(
//             avatar: Icon(Icons.logout),
//             label: Text("Logout"),
//             onPressed: () {
//               Provider.of<GoogleSignInController>(context, listen: false)
//                   .Logout();
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
