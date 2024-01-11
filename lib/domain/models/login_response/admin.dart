class Admin {
  int? id;
  String? name;
  String? email;

  Admin({this.id, this.name, this.email});

  factory Admin.fromJson(Map<String, dynamic> json) => Admin(
        id: json['id'] as int?,
        name: json['name'] as String?,
        email: json['email'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}
