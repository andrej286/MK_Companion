
import 'package:flutter/cupertino.dart';

import '../model/companion_post.dart';
import '../model/owner.dart';

class CompanionProvider extends ChangeNotifier {

  List<CompanionPost> _posts = [
    CompanionPost(id: '1', owner: Owner(id: '1', ownerName: 'ownerName', ownerSurname: 'ownerSurname', number: 'number', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Kjamil1', description: 'a pet',location: "Skopje", imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
    CompanionPost(id: '2', owner: Owner(id: '1', ownerName: 'ownerName', ownerSurname: 'ownerSurname', number: 'number', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Kjamil2', description: 'a pet',location: "Skopje", imageUrl: 'https://cdn.mos.cms.futurecdn.net/ASHH5bDmsp6wnK6mEfZdcU.jpg'),
    CompanionPost(id: '3', owner: Owner(id: '1', ownerName: 'ownerName', ownerSurname: 'ownerSurname', number: 'number', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Kjamil3', description: 'a pet',location: "Skopje", imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
    CompanionPost(id: '4', owner: Owner(id: '1', ownerName: 'ownerName', ownerSurname: 'ownerSurname', number: 'number', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Kjamil4', description: 'a pet',location: "Skopje", imageUrl: 'https://cdn.mos.cms.futurecdn.net/ASHH5bDmsp6wnK6mEfZdcU.jpg'),
    CompanionPost(id: '5', owner: Owner(id: '1', ownerName: 'ownerName', ownerSurname: 'ownerSurname', number: 'number', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Kjamil5', description: 'a pet',location: "Skopje", imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
    CompanionPost(id: '6', owner: Owner(id: '1', ownerName: 'ownerName', ownerSurname: 'ownerSurname', number: 'number', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Kjamil6', description: 'a pet',location: "Skopje", imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
    CompanionPost(id: '7', owner: Owner(id: '1', ownerName: 'ownerName', ownerSurname: 'ownerSurname', number: 'number', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Kjamil7', description: 'a pet',location: "Skopje", imageUrl: 'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg'),
  ];

  List<CompanionPost> get posts => _posts;

  set posts(List<CompanionPost> post) {
    _posts = post;
    notifyListeners();
  }

  void addPost(CompanionPost post) {
    _posts.add(post);
    notifyListeners();
  }

  void removePost(CompanionPost post) {
    _posts.remove(post);
    notifyListeners();
  }

  String getSize() {
    return (_posts.length + 1).toString();
  }
}