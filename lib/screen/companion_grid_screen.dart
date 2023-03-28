import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/companion_post.dart';
import '../model/owner.dart';
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

    Owner owner2 = Owner(id: '1', ownerName: 'ownerName', ownerSurname: 'ownerSurname', number: 'number', mail: 'kjamil.kakaleski@students.finki.ukim.mk');

    List<CompanionPost> posts = [
      CompanionPost(id: '1', owner: owner2, companionName: 'Kjamil1', description: 'a pet', imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
      CompanionPost(id: '2', owner: owner2, companionName: 'Kjamil2', description: 'a pet', imageUrl: 'https://cdn.mos.cms.futurecdn.net/ASHH5bDmsp6wnK6mEfZdcU.jpg'),
      CompanionPost(id: '3', owner: owner2, companionName: 'Kjamil3', description: 'a pet', imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
      CompanionPost(id: '4', owner: owner2, companionName: 'Kjamil4', description: 'a pet', imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
      CompanionPost(id: '5', owner: owner2, companionName: 'Kjamil5', description: 'a pet', imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
      CompanionPost(id: '6', owner: owner2, companionName: 'Kjamil6', description: 'a pet', imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
      CompanionPost(id: '7', owner: owner2, companionName: 'Kjamil7', description: 'a pet', imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
    ];

    posts.forEach((companionPost) => myWidgets.add(CompanionTile(companionPost)));
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
