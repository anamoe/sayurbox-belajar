import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sayurbox/provider/page_provider.dart';
import 'package:sayurbox/screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        ),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => SplashScreen(),

        },
      ),
    );
  }
}



