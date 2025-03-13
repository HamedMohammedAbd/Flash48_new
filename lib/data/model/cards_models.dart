class CardsModels {
  int? _id;
  String? _name;
  String? _details;
  String? _price;
  int? _duration;
  String? _unit;
  int? _numOfAds;
  String? _createdAt;
  String? _updatedAt;

  CardsModels(
      {int? id,
      String? name,
      String? details,
      String? price,
      int? duration,
      String? unit,
      int? numOfAds,
      String? createdAt,
      String? updatedAt}) {
    if (id != null) {
      _id = id;
    }
    if (name != null) {
      _name = name;
    }
    if (details != null) {
      _details = details;
    }
    if (price != null) {
      _price = price;
    }
    if (duration != null) {
      _duration = duration;
    }
    if (unit != null) {
      _unit = unit;
    }
    if (numOfAds != null) {
      _numOfAds = numOfAds;
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
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get details => _details;
  set details(String? details) => _details = details;
  String? get price => _price;
  set price(String? price) => _price = price;
  int? get duration => _duration;
  set duration(int? duration) => _duration = duration;
  String? get unit => _unit;
  set unit(String? unit) => _unit = unit;
  int? get numOfAds => _numOfAds;
  set numOfAds(int? numOfAds) => _numOfAds = numOfAds;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;

  CardsModels.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _details = json['details'];
    _price = json['price'];
    _duration = json['duration'];
    _unit = json['unit'];
    _numOfAds = json['numOfAds'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['name'] = _name;
    data['details'] = _details;
    data['price'] = _price;
    data['duration'] = _duration;
    data['unit'] = _unit;
    data['numOfAds'] = _numOfAds;
    data['created_at'] = _createdAt;
    data['updated_at'] = _updatedAt;
    return data;
  }
}
