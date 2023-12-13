class PhotoModel {
  String name;
  String image;
  String uid;
  String avatar;

  PhotoModel({
    required this.name,
    required this.image,
    required this.uid,
    required this.avatar,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'avatar': avatar,
      'name': name,
      'image': image,
      'uid': uid,
    };
  }
}
