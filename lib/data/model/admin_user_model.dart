class AdminUserModels {
  int? _id;
  String? _username;
  String? _email;
  String? _type;
  String? _phone;
  int? _active;
  String? _createdAt;
  String? _updatedAt;
  Seller? _seller;

  AdminUserModels(
      {int? id,
      String? username,
      String? email,
      String? type,
      String? phone,
      int? active,
      String? createdAt,
      String? updatedAt,
      Seller? seller}) {
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
    if (seller != null) {
      _seller = seller;
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
  Seller? get seller => _seller;
  set seller(Seller? seller) => _seller = seller;

  AdminUserModels.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _username = json['username'];
    _email = json['email'];
    _type = json['type'];
    _phone = json['phone'];
    _active = json['active'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _seller = json['seller'] != null ? Seller.fromJson(json['seller']) : null;
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
    if (_seller != null) {
      data['seller'] = _seller!.toJson();
    }
    return data;
  }
}

class Seller {
  int? _id;
  int? _userId;
  int? _bouquetId;
  String? _name;
  String? _type;
  int? _numOfOffers;
  String? _bankAccountNum;
  String? _address;
  String? _contacts;
  String? _images;
  String? _special;
  int? _real;
  String? _createdAt;
  String? _updatedAt;
  int? _activityId;

  Seller(
      {int? id,
      int? userId,
      int? bouquetId,
      String? name,
      String? type,
      int? numOfOffers,
      String? bankAccountNum,
      String? address,
      String? contacts,
      String? images,
      String? special,
      int? real,
      String? createdAt,
      String? updatedAt,
      int? activityId}) {
    if (id != null) {
      _id = id;
    }
    if (userId != null) {
      _userId = userId;
    }
    if (bouquetId != null) {
      _bouquetId = bouquetId;
    }
    if (name != null) {
      _name = name;
    }
    if (type != null) {
      _type = type;
    }
    if (numOfOffers != null) {
      _numOfOffers = numOfOffers;
    }
    if (bankAccountNum != null) {
      _bankAccountNum = bankAccountNum;
    }
    if (address != null) {
      _address = address;
    }
    if (contacts != null) {
      _contacts = contacts;
    }
    if (images != null) {
      _images = images;
    }
    if (special != null) {
      _special = special;
    }
    if (real != null) {
      _real = real;
    }
    if (createdAt != null) {
      _createdAt = createdAt;
    }
    if (updatedAt != null) {
      _updatedAt = updatedAt;
    }
    if (activityId != null) {
      _activityId = activityId;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  int? get userId => _userId;
  set userId(int? userId) => _userId = userId;
  int? get bouquetId => _bouquetId;
  set bouquetId(int? bouquetId) => _bouquetId = bouquetId;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get type => _type;
  set type(String? type) => _type = type;
  int? get numOfOffers => _numOfOffers;
  set numOfOffers(int? numOfOffers) => _numOfOffers = numOfOffers;
  String? get bankAccountNum => _bankAccountNum;
  set bankAccountNum(String? bankAccountNum) =>
      _bankAccountNum = bankAccountNum;
  String? get address => _address;
  set address(String? address) => _address = address;
  String? get contacts => _contacts;
  set contacts(String? contacts) => _contacts = contacts;
  String? get images => _images;
  set images(String? images) => _images = images;
  String? get special => _special;
  set special(String? special) => _special = special;
  int? get real => _real;
  set real(int? real) => _real = real;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  int? get activityId => _activityId;
  set activityId(int? activityId) => _activityId = activityId;

  Seller.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _userId = json['user_id'];
    _bouquetId = json['bouquet_id'];
    _name = json['name'];
    _type = json['type'];
    _numOfOffers = json['numOfOffers'];
    _bankAccountNum = json['bankAccountNum'];
    _address = json['address'];
    _contacts = json['contacts'];
    _images = json['images'];
    _special = json['special'];
    _real = json['real'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _activityId = json['activity_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['user_id'] = _userId;
    data['bouquet_id'] = _bouquetId;
    data['name'] = _name;
    data['type'] = _type;
    data['numOfOffers'] = _numOfOffers;
    data['bankAccountNum'] = _bankAccountNum;
    data['address'] = _address;
    data['contacts'] = _contacts;
    data['images'] = _images;
    data['special'] = _special;
    data['real'] = _real;
    data['created_at'] = _createdAt;
    data['updated_at'] = _updatedAt;
    data['activity_id'] = _activityId;
    return data;
  }
}
