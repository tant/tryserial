import 'package:flutter/material.dart';
import 'package:mydebug/screens/add_new_order_screen.dart';
import 'package:mydebug/screens/homepage.dart';
import 'package:mydebug/screens/new_screen.dart';
import 'package:mydebug/screens/new_screen_2.dart';
import 'package:mydebug/screens/payment_screen.dart';
import 'package:mydebug/screens/qr_screen.dart';
import 'package:mydebug/screens/state_mana/page1.dart';
import 'package:mydebug/screens/state_mana/page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NewSreen2(),
      routes: {
        '/payment': (context) => const PaymentScreen(),
        '/qr': (context) => const QrScreen(),
        '/page2': (context) => const PageTwo(),
        // '/page3': (context) => const PageThree(),
      },
    );
  }
}
