class UserModel {
  late int id;
  late String name;
  late String email;
  late String username;
  late String password;
  late String profilePhotoUrl;
  late String token;


  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.password,
    required this.email,
    required this.profilePhotoUrl,
    required this.token,
  });


  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    password = json['password'];
    email = json['email'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];
  }


  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'password': password,
      'email': email,
      'profile_photo_url': profilePhotoUrl,
      'token': token
    };
  }
}