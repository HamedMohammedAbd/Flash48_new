class ActivitiesModel {
  int? _id;
  String? _name;
  String? _details;
  String? _createdAt;
  String? _updatedAt;
  String? _image;

  ActivitiesModel(
      {int? id,
      String? name,
      String? details,
      String? createdAt,
      String? updatedAt,
      String? image}) {
    if (id != null) {
      _id = id;
    }
    if (name != null) {
      _name = name;
    }
    if (details != null) {
      _details = details;
    }
    if (createdAt != null) {
      _createdAt = createdAt;
    }
    if (updatedAt != null) {
      _updatedAt = updatedAt;
    }
    if (image != null) {
      _image = image;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get details => _details;
  set details(String? details) => _details = details;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  String? get image => _image;
  set image(String? image) => _image = image;

  ActivitiesModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _details = json['details'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['name'] = _name;
    data['details'] = _details;
    data['created_at'] = _createdAt;
    data['updated_at'] = _updatedAt;
    data['image'] = _image;
    return data;
  }
}
