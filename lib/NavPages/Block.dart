import 'package:flutter/material.dart';

class Bolck extends StatelessWidget {
  const Bolck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
          child: Text('Not currently available, Almost...',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    );
  }
}
