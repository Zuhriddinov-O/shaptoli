class Uzum {
  String? image;
  String? name;
  int? price;
  int? discount;
  bool? isSaved;
  String? id;
  String? description;

  Uzum({this.image, this.name, this.price, this.discount, this.isSaved, this.id,this.description});

  Uzum.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    price = json['price'];
    discount = json['discount'];
    isSaved = json['isSaved'];
    id = json['id'];
    description=json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = image;
    data['name'] = name;
    data['price'] = price;
    data['discount'] = discount;
    data['isSaved'] = isSaved;
    data['id'] = id;
    data['description']=description;
    return data;
  }
}
