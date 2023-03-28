import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/companion_post.dart';
import '../model/owner.dart';
import '../widget/contact_details.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  _DetailScreen createState() => _DetailScreen();
}

class _DetailScreen extends State<DetailScreen> {

  List<CompanionPost> posts = [];

  @override
  void initState() {
    super.initState();

    Owner owner2 = Owner(id: '1', ownerName: 'ownerName', ownerSurname: 'ownerSurname', number: '071234567', mail: 'kjamil.kakaleski@students.finki.ukim.mk');

    posts = [
      CompanionPost(id: '1', owner: owner2, companionName: 'Kjamil1', description: 'a pet', imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
      CompanionPost(id: '2', owner: owner2, companionName: 'Kjamil2', description: 'Little Laura loves to be petted, she is very sweet and positive. He likes to play and socialize with other dogs, loves fun outdoor activities and knows how to walk on a leash.', imageUrl: 'https://cdn.mos.cms.futurecdn.net/ASHH5bDmsp6wnK6mEfZdcU.jpg'),
      CompanionPost(id: '3', owner: owner2, companionName: 'Kjamil3', description: 'a pet', imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
      CompanionPost(id: '4', owner: owner2, companionName: 'Kjamil4', description: 'a pet', imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
      CompanionPost(id: '5', owner: owner2, companionName: 'Kjamil5', description: 'a pet', imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
      CompanionPost(id: '6', owner: owner2, companionName: 'Kjamil6', description: 'a pet', imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
      CompanionPost(id: '7', owner: owner2, companionName: 'Kjamil7', description: 'a pet', imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    String postId = ModalRoute.of(context)?.settings.arguments as String;

    CompanionPost post = posts[int.parse(postId) - 1];

    return Scaffold(
        appBar: AppBar(
            title: Text('Companion Details'), backgroundColor: customGreen),
        backgroundColor: Colors.white,
        body: Card(
            elevation: 8.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 300.0,
                  width: 355.0,
                  padding: EdgeInsets.only(top: 10),
                  child: Ink.image(
                    image: NetworkImage(post.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    post.companionName,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10, left: 16, right: 16),
                  alignment: Alignment.centerLeft,
                  child: Text(post.description, style: TextStyle(fontSize: 15)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  alignment: Alignment.centerLeft,
                  child: ContactDetailsWidget(companionPost: post),
                  color: Colors.grey.shade300,
                ),
                // Container(
                //   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                //   alignment: Alignment.centerLeft,
                //   child: Text('${post.owner.ownerName} ${post.owner.ownerSurname}' , style: TextStyle(fontSize: 15)),
                //   color: Colors.grey.shade400
                // ),
                // ButtonBar(
                //   children: [
                //     ElevatedButton(
                //       onPressed: () {
                //         Navigator.pushNamed(context, '/detail',
                //             arguments: post.id);
                //       },
                //       child: Text(
                //         'Details',
                //         style: TextStyle(
                //             fontSize: 17,
                //             color: Colors.white,
                //             fontWeight: FontWeight.w900),
                //       ),
                //       style: ButtonStyle(
                //         backgroundColor:
                //             MaterialStatePropertyAll<Color>(customGreen),
                //         shape:
                //             MaterialStateProperty.all<RoundedRectangleBorder>(
                //           RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(20),
                //           ),
                //         ),
                //         padding: MaterialStateProperty.all<EdgeInsets>(
                //           EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                //         ),
                //       ),
                //     )
                //   ],
                // )
              ],
            )));
  }
}
