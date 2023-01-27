import 'package:flutter/material.dart';

import '../theme.dart';

class Kategori extends StatelessWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Text('Kategori',style: secondystyle.copyWith(fontSize: 20),),
        ),
      ),
    );
  }
}
