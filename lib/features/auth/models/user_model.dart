class UserModel {
  String email;
  String name;
  String image;
  String uid;

  UserModel({
    required this.email,
    required this.name,
    required this.image,
    required this.uid,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'image': image,
      'uid': uid,
    };
  }
}
