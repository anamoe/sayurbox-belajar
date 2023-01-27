import 'package:flutter/material.dart';

import '../theme.dart';

class Pesanan extends StatelessWidget {
  const Pesanan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Text('Pesanan',style: secondystyle.copyWith(fontSize: 20),),
        ),
      ),
    );
  }
}
