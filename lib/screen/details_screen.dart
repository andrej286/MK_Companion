import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../model/companion_post.dart';
import '../provider/companion_provider.dart';
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

    final companionProvider = Provider.of<CompanionProvider>(context, listen: false);

    posts = companionProvider.posts;
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
              ],
            )));
  }
}
