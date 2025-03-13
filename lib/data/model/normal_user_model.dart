class NormaUserModel {
  int? _id;
  String? _username;
  String? _email;
  String? _type;
  String? _phone;
  int? _active;
  String? _createdAt;
  String? _updatedAt;
  NormaUserModel({
    int? id,
    String? username,
    String? email,
    String? type,
    String? phone,
    int? active,
    String? createdAt,
    String? updatedAt,
  }) {
    if (id != null) {
      _id = id;
    }
    if (username != null) {
      _username = username;
    }
    if (email != null) {
      _email = email;
    }
    if (type != null) {
      _type = type;
    }
    if (phone != null) {
      _phone = phone;
    }
    if (active != null) {
      _active = active;
    }
    if (createdAt != null) {
      _createdAt = createdAt;
    }
    if (updatedAt != null) {
      _updatedAt = updatedAt;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get username => _username;
  set username(String? username) => _username = username;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get type => _type;
  set type(String? type) => _type = type;
  String? get phone => _phone;
  set phone(String? phone) => _phone = phone;
  int? get active => _active;
  set active(int? active) => _active = active;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;

  NormaUserModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _username = json['username'];
    _email = json['email'];
    _type = json['type'];
    _phone = json['phone'];
    _active = json['active'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['username'] = _username;
    data['email'] = _email;
    data['type'] = _type;
    data['phone'] = _phone;
    data['active'] = _active;
    data['created_at'] = _createdAt;
    data['updated_at'] = _updatedAt;

    return data;
  }
}
