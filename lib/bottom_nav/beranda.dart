import 'package:flutter/material.dart';
import 'package:sayurbox/theme.dart';

class Beranda extends StatelessWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Text('Beranda',style: secondystyle.copyWith(fontSize: 20),),
        ),
      ),
    );
  }
}
