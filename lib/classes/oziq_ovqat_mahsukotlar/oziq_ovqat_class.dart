class OziqOvqat {
  int? id;
  String? name;
  double? price;
  double? discount;
  int? itemCount;
  double? rating;
  bool? isLiked = false;
  String? image;
  String? innerDesc;

  OziqOvqat(
      {required this.id,
      required this.image,
      required this.name,
      required this.price,
      required this.itemCount,
      required this.isLiked,
      required this.discount,
      required this.rating,
      required this.innerDesc});
}

final List<OziqOvqat> oziqOvqatList = [];