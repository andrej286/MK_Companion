import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mis_project/model/companion_post.dart';

import '../constants.dart';

class CompanionTile extends StatelessWidget {
  CompanionPost companionPost;

  CompanionTile(this.companionPost);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              padding: EdgeInsets.only(top: 10),
              child: Ink.image(
                image: NetworkImage(companionPost.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(companionPost.companionName),
            ),
            ButtonBar(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text(
                    'Details',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(customGreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
