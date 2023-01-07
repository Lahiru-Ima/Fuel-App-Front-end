// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:fuel_app/DashBoardPage/product.dart';
// import 'package:fuel_app/theme.dart';

// class DetailsScreen extends StatelessWidget {
//   final Product product;

//   const DetailsScreen({required Key key, required this.product})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimaryColor,
//       appBar: buildAppBar(context),
//       // body: Body(
//       //   product: product,
//       // ),
//     );
//   }

//   AppBar buildAppBar(BuildContext context) {
//     return AppBar(
//       backgroundColor: kSecondaryColor,
//       // elevation: 0,
//       // leading: IconButton(
//       //   padding: const EdgeInsets.only(left:20),
//       //   icon: SvgPicture.asset("assets/icons/back.svg"),
//       //   onPressed: () {
//       //     Navigator.pop(context);
//       //   },
//       // ),
//       centerTitle: false,
//       title: Text(
//         'Back'.toUpperCase(),
//         style: Theme.of(context).textTheme.bodyText2,
//       ),
//       actions: <Widget>[
//         // IconButton(
//         //   icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
//         //   onPressed: () {},
//         // ),
//       ],
//     );
//   }
// }
