import 'package:flutter/material.dart';

import '../theme.dart';

class Akun extends StatelessWidget {
  const Akun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Text('Akun',style: secondystyle.copyWith(fontSize: 20),),
        ),
      ),
    );
  }
}
