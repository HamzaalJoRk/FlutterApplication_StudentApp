import 'package:flutter/material.dart';
import 'package:test_project/AppBarTop.dart';
import 'package:test_project/BodyPage.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBarTop(),
        BodyPage(),
      ],
    );
  }
}





