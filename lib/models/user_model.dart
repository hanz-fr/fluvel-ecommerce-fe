class UserModel {
  late int? id;
  late String? name;
  late String? email;
  late String? username;
  late String? password;
  late String? profilePhotoUrl;
  late String? token;


  UserModel({
    this.id,
    this.name,
    this.username,
    this.password,
    this.email,
    this.profilePhotoUrl,
    this.token,
  });


  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];
  }


  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'email': email,
      'profile_photo_url': profilePhotoUrl,
      'token': token
    };
  }
}