import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widget/componion_tile.dart';

class CompanionGridScreen extends StatefulWidget {
  const CompanionGridScreen({super.key});

  @override
  _CompanionGridScreen createState() => _CompanionGridScreen();
}

class _CompanionGridScreen extends State<CompanionGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Companions'), backgroundColor: customGreen),
        backgroundColor: customGreen,
        body: CompanionTile());
  }
}
