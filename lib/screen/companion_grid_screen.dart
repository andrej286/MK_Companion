import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../provider/companion_provider.dart';
import '../widget/componion_tile.dart';

class CompanionGridScreen extends StatefulWidget {
  const CompanionGridScreen({super.key});

  @override
  _CompanionGridScreen createState() => _CompanionGridScreen();
}

class _CompanionGridScreen extends State<CompanionGridScreen> {
  List<CompanionTile> myWidgets = [];
  List<CompanionTile> filterWidgets = [];

  @override
  void initState() {
    super.initState();

    final companionProvider =
        Provider.of<CompanionProvider>(context, listen: false);

    companionProvider.posts.forEach(
        (companionPost) => myWidgets.add(CompanionTile(companionPost)));

    _filterItems("");
  }

  void _filterItems(value) {
    setState(() {
      filterWidgets = myWidgets
          .where((myWidget) =>
          myWidget.companionPost.companionName.toLowerCase().contains(value.toString().toLowerCase()) ||
              myWidget.companionPost.location.toLowerCase().contains(value.toString().toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Companions'),
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/add');
                  },
                  icon: Icon(Icons.add))
            ],
            backgroundColor: customGreen),
        backgroundColor: Colors.white,
        body: Column(children: [
          TextField(
            onChanged: (value) => _filterItems(value),
            decoration: InputDecoration(
              hintText: 'Search by name or location...',
            ),
          ),
          Expanded(
              child: GridView.builder(
            itemCount: filterWidgets.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.68,
            ),
            itemBuilder: (BuildContext context, int index) {
              return filterWidgets[index];
            },
            padding: const EdgeInsets.only(left: 10, right: 5),
          ))
        ]));
  }
}
