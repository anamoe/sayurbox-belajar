import 'package:flutter/material.dart';
import 'package:sayurbox/theme.dart';


class CustomButtonGreen extends StatelessWidget {
  final String text;
  final Function() function;
  const CustomButtonGreen(
      {super.key, required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          backgroundColor: greencolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
