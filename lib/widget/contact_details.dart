import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/companion_post.dart';

class ContactDetailsWidget extends StatelessWidget {
  final CompanionPost companionPost;

  const ContactDetailsWidget({Key? key, required this.companionPost})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(alignment: Alignment.centerLeft,
          child: Text( style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900), 'The creator of the pot'),
        ),
      Container(alignment: Alignment.centerLeft,child: Text( style: TextStyle(fontSize: 15), '${companionPost.owner.ownerName} ${companionPost.owner.ownerSurname}'), padding: EdgeInsets.symmetric(vertical: 10)),
      Container(alignment: Alignment.centerLeft,child: Text( style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900), 'Contact phone')),
      Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(vertical: 10),
          child: InkWell(
              onTap: () async {
                final phoneNumber = 'tel:+${companionPost.owner.number}';
                if (await canLaunch(phoneNumber)) {
                  await launch(phoneNumber);
                } else {
                  throw 'Could not launch $phoneNumber';
                }
              },
              child: Text(
                  style: TextStyle(fontSize: 15),
                  '${companionPost.owner.number}'))),
      Container(alignment: Alignment.centerLeft,child: Text( style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900), 'Location')),
      Container(alignment: Alignment.centerLeft,child: Text( style: TextStyle(fontSize: 15), 'Location'), padding: EdgeInsets.symmetric(vertical: 10)),
      Container(alignment: Alignment.centerLeft,child: Text( style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900), 'Email')),
      Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(vertical: 10),
          child: InkWell(
              onTap: () async {
                final recipient = '${companionPost.owner.mail}';
                final subject = 'Conmapnion request';
                final body = 'Hi can we talk about your post';
                final url = 'mailto:$recipient?subject=$subject&body=$body';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                  style: TextStyle(fontSize: 15),
                  '${companionPost.owner.mail}')))
    ]);
  }
}
