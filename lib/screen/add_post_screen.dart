import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../model/companion_post.dart';
import '../model/owner.dart';
import '../provider/companion_provider.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  _AddPostScreen createState() => _AddPostScreen();
}

class _AddPostScreen extends State<AddPostScreen> {
  final _ownerNameController = TextEditingController();
  final _ownerSurnameController = TextEditingController();
  final _ownerNumberController = TextEditingController();
  final _ownerMailController = TextEditingController();
  final _companionNameController = TextEditingController();
  final _companionLocationController = TextEditingController();
  final _companionDescriptionController = TextEditingController();
  final _companionImageController = TextEditingController();

  Future<void> _submitData() async {
    if (_ownerNameController.text.isEmpty) {
      return;
    }

    final ownerName = _ownerNameController.text;
    final ownerSurname = _ownerSurnameController.text;
    final ownerNumber = _ownerNumberController.text;
    final ownerMail = _ownerMailController.text;
    final companionName = _companionNameController.text;
    final companionLocation = _companionLocationController.text;
    final companionDescription = _companionDescriptionController.text;
    final companionImage = _companionImageController.text;

    final companionProvider =
        Provider.of<CompanionProvider>(context, listen: false);

    var postId = companionProvider.getSize();

    var newPost = CompanionPost(
        id: postId,
        owner: Owner(
            id: postId,
            ownerName: ownerName,
            ownerSurname: ownerSurname,
            number: ownerNumber,
            mail: ownerMail),
        companionName: companionName,
        location: companionLocation,
        description: companionDescription,
        imageUrl: companionImage);

    companionProvider.addPost(newPost);

    Navigator.pushNamed(context, '/companions');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Text('Add Companion'), backgroundColor: customGreen),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(8),
                child: Column(children: [
                  Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextField(
                        controller: _ownerNameController,
                        decoration: InputDecoration(
                            labelText: "Name", border: OutlineInputBorder()),
                        onSubmitted: (_) => _submitData(),
                      )),
                  Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextField(
                          controller: _ownerSurnameController,
                          decoration: InputDecoration(
                              labelText: "Surname",
                              border: OutlineInputBorder()),
                          onSubmitted: (_) => _submitData())),
                  Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextField(
                          controller: _ownerNumberController,
                          decoration: InputDecoration(
                              labelText: "Phone number",
                              border: OutlineInputBorder()),
                          onSubmitted: (_) => _submitData())),
                  Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextField(
                          controller: _ownerMailController,
                          decoration: InputDecoration(
                              labelText: "Mail", border: OutlineInputBorder()),
                          onSubmitted: (_) => _submitData())),
                  Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextField(
                          controller: _companionLocationController,
                          decoration: InputDecoration(
                              labelText: "Location",
                              border: OutlineInputBorder()),
                          onSubmitted: (_) => _submitData())),
                  Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextField(
                          controller: _companionNameController,
                          decoration: InputDecoration(
                              labelText: "Pet name",
                              border: OutlineInputBorder()),
                          onSubmitted: (_) => _submitData())),
                  Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextField(
                          controller: _companionImageController,
                          decoration: InputDecoration(
                              labelText: "Pet Image Url",
                              border: OutlineInputBorder()),
                          onSubmitted: (_) => _submitData())),
                  Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextField(
                          controller: _companionDescriptionController,
                          decoration: InputDecoration(
                              labelText: "Description",
                              border: OutlineInputBorder()),
                          onSubmitted: (_) => _submitData())),
                  TextButton(
                    child: Text("Add"),
                    onPressed: _submitData,
                  )
                ]))));
  }
}
