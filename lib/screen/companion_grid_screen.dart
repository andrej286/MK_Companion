import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../model/companion_post.dart';
import '../provider/companion_provider.dart';
import '../widget/componion_tile.dart';

class CompanionGridScreen extends StatefulWidget {
  const CompanionGridScreen({super.key});

  @override
  _CompanionGridScreen createState() => _CompanionGridScreen();
}

class _CompanionGridScreen extends State<CompanionGridScreen> {

  List<CompanionPost> posts = [];

  List<CompanionTile> myWidgets = [];

  @override
  void initState() {
    super.initState();

    final companionProvider = Provider.of<CompanionProvider>(context, listen: false);

    companionProvider.posts.forEach((companionPost) => myWidgets.add(CompanionTile(companionPost)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Companions'), backgroundColor: customGreen),
        backgroundColor: Colors.white,
        body: GridView.builder(
          itemCount: myWidgets.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 0.68,
          ),
          itemBuilder: (BuildContext context, int index) {
            return myWidgets[index];
          },
          padding: const EdgeInsets.only(left: 10, right: 5),
        ));
  }
}
