import 'package:flutter/material.dart';
import 'package:mis_project/screen/companion_grid_screen.dart';
import 'package:mis_project/screen/details_screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MK-Companion',
      initialRoute: '/home',
      routes: {
        '/companions': (context) => const CompanionGridScreen(),
        '/home': (context) => const MyHomePage(),
        '/detail': (context) => const DetailScreen(),
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customGreen,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'MK-Companion',
            style: TextStyle(
                fontSize: 36, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/companions');
            },
            child: Text(
              'Continue',
              style: TextStyle(
                  fontSize: 20,
                  color: customGreen,
                  fontWeight: FontWeight.w900),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(vertical: 7, horizontal: 20),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
