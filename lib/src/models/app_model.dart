import 'package:stefanini_app/src/models/user_model.dart';

class AppModel {
  final String name;
  final String developer;
  final String category;
  final int rank;
  final double cost;
  final String description;
  final String avatar;
  final String image;
  final bool installed;
  final List<UserModel> users;

  AppModel({
    required this.name,
    required this.developer,
    required this.category,
    required this.rank,
    required this.cost,
    required this.description,
    required this.avatar,
    required this.image,
    required this.installed,
    required this.users,
  });

  factory AppModel.fromJson(Map<String, dynamic> json) => AppModel(
      name: json["name"],
      developer: json["developer"],
      category: json["category"],
      rank: json["rank"],
      cost: json["cost"],
      description: json["description"],
      avatar: json["avatar"],
      image: json["image"],
      installed: json["installed"],
      users: json["users"].isNotEmpty
          ? (json["users"] as List).map((an) => UserModel.fromJson(an)).toList()
          : []);

  Map<String, dynamic> toJson() => {
        "name": name,
        "developer": developer,
        "category": category,
        "rank": rank,
        "cost": cost,
        "description": description,
        "avatar": avatar,
        "image": image,
        "installed": installed,
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
      };
}
