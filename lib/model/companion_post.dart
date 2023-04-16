
import 'package:mis_project/model/owner.dart';

class CompanionPost {

  final String id;
  final Owner owner;
  final String companionName;
  final String description;
  final String imageUrl;
  final String? location;
  double? subjectLatitude;
  double? subjectLongitude;

  CompanionPost({
    required this.id,
    required this.owner,
    required this.companionName,
    required this.description,
    required this.imageUrl,
    this.subjectLatitude,
    this.subjectLongitude,
    this.location
  });
}