import 'package:flutter/cupertino.dart';

import '../model/companion_post.dart';

class ContactDetailsWidget extends StatelessWidget {
  final CompanionPost companionPost;

  const ContactDetailsWidget({Key? key, required this.companionPost})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(alignment: Alignment.centerLeft,child: Text( style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900), 'The creator of the pot')),
      Container(alignment: Alignment.centerLeft,child: Text( style: TextStyle(fontSize: 15), '${companionPost.owner.ownerName} ${companionPost.owner.ownerSurname}'), padding: EdgeInsets.symmetric(vertical: 10)),
      Container(alignment: Alignment.centerLeft,child: Text( style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900), 'Contact phone')),
      Container(alignment: Alignment.centerLeft,child: Text( style: TextStyle(fontSize: 15), '${companionPost.owner.number}'), padding: EdgeInsets.symmetric(vertical: 10)),
      Container(alignment: Alignment.centerLeft,child: Text( style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900), 'Location')),
      Container(alignment: Alignment.centerLeft,child: Text( style: TextStyle(fontSize: 15), 'Location'), padding: EdgeInsets.symmetric(vertical: 10)),
      Container(alignment: Alignment.centerLeft,child: Text( style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900), 'Email')),
      Container(alignment: Alignment.centerLeft,child: Text( style: TextStyle(fontSize: 15), '${companionPost.owner.mail}'), padding: EdgeInsets.symmetric(vertical: 10))
    ]);
  }
}
