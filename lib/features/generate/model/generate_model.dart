import 'package:cloud_firestore/cloud_firestore.dart';

class PhotoModel {
  final String name;
  final String image;
  final String uid;
  final String avatar;
  final bool isForAll;

  PhotoModel({
    required this.name,
    required this.image,
    required this.uid,
    required this.avatar,
    required this.isForAll,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'avatar': avatar,
      'name': name,
      'image': image,
      'uid': uid,
      'isForAll': isForAll,
    };
  }

  factory PhotoModel.fromQuerySnapshot(QueryDocumentSnapshot json) =>
      PhotoModel(
        avatar: json["avatar"],
        name: json["name"],
        image: json["image"],
        uid: json["uid"],
        isForAll: json["isForAll"],
      );
}
