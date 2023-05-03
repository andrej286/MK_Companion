
import 'package:flutter/cupertino.dart';

import '../model/companion_post.dart';
import '../model/owner.dart';

class CompanionProvider extends ChangeNotifier {

  List<CompanionPost> _posts = [
    CompanionPost(id: '1', owner: Owner(id: '1', ownerName: 'Kjamil', ownerSurname: 'Kakaleski', number: '07123456', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Marko', description: 'a pet',location: "Skopje", imageUrl: 'https://publish.purewow.net/wp-content/uploads/sites/2/2021/06/smallest-dog-breeds-toy-poodle.jpg?fit=728%2C524'),
    CompanionPost(id: '2', owner: Owner(id: '1', ownerName: 'Kjamil', ownerSurname: 'Kakaleski', number: '07123456', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Darko', description: 'a pet',location: "Skopje", imageUrl: 'https://cdn.mos.cms.futurecdn.net/ASHH5bDmsp6wnK6mEfZdcU.jpg'),
    CompanionPost(id: '3', owner: Owner(id: '1', ownerName: 'Kjamil', ownerSurname: 'Kakaleski', number: '07123456', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Sharko', description: 'a pet',location: "Skopje", imageUrl: 'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/streams/2013/May/130522/6C7536084-g-hlt-120105-puppy-423p.jpg'),
    CompanionPost(id: '4', owner: Owner(id: '1', ownerName: 'Kjamil', ownerSurname: 'Kakaleski', number: '07123456', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Pafi', description: 'a pet',location: "Skopje", imageUrl: 'https://image.petmd.com/files/styles/863x625/public/2022-10/pug-dog-breed.jpeg'),
    CompanionPost(id: '5', owner: Owner(id: '1', ownerName: 'Kjamil', ownerSurname: 'Kakaleski', number: '07123456', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Bleki', description: 'a pet',location: "Skopje", imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKr5wT7rfkjkGvNeqgXjBmarC5ZNoZs-H2uMpML8O7Q4F9W-IlUQibBT6IPqyvX45NOgw&usqp=CAU'),
    CompanionPost(id: '6', owner: Owner(id: '1', ownerName: 'Kjamil', ownerSurname: 'Kakaleski', number: '07123456', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Prcko', description: 'a pet',location: "Skopje", imageUrl: 'https://media.wired.co.uk/photos/60c8730fa81eb7f50b44037e/16:9/w_2560%2Cc_limit/1521-WIRED-Cat.jpeg'),
    CompanionPost(id: '7', owner: Owner(id: '1', ownerName: 'Kjamil', ownerSurname: 'Kakaleski', number: '07123456', mail: 'kjamil.kakaleski@students.finki.ukim.mk'), companionName: 'Dora', description: 'a pet',location: "Skopje", imageUrl: 'https://i2-prod.chroniclelive.co.uk/incoming/article22724472.ece/ALTERNATES/s1200c/1_dog-on-beach.jpg'),
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