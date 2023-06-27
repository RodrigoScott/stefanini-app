class UserModel {
  final String user;
  final String comments;
  final String avatar;

  UserModel({
    required this.user,
    required this.comments,
    required this.avatar,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    user: json["user"],
    comments: json["comments"],
    avatar: json["avatar"],
  );

  Map<String, dynamic> toJson() => {
    "user": user,
    "comments": comments,
    "avatar": avatar,
  };
}