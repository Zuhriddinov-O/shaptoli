class Aksessuarlar {
  int id;
  String name;
  double price;
  double discount;
  int itemCount;
  double rating;
  bool isSaved = false;
  String image;
  List<String> innerDesc;

  Aksessuarlar(
      {required this.id,
      required this.image,
      required this.name,
      required this.price,
      required this.itemCount,
      required this.isSaved,
      required this.discount,
      required this.rating,
      required this.innerDesc});
}

final List<Aksessuarlar> aksessuralarList = [
  Aksessuarlar(id: 0, image: "assets/aksessuarlar/chamadon.jpg", name: "Chamadon Fashion polipropilendan", price: 380000, itemCount: 46, isSaved: false, discount: 320000, rating: 5.0, innerDesc: ["Material:Polipropilen","Teleskopik tutqich","Roliklar ovozsiz","Buklanishi oson","Yengillik va chaqqonlik: harakat qilish qulay","Ularni sindirish juda qiyin","360 daraja aylanish","Qulflar ikki barobar, ammo kengayishsiz","TSA - kodli qulf"]),
  Aksessuarlar(id: 1, image: "assets/aksessuarlar/romol.png", name: "Ayollar uchun milliy ro'mol sharf GoldSilk", price: 99000, itemCount: 24, isSaved: false, discount: 49000, rating: 4.3, innerDesc: ["Ishlab chiqaruvchi: GoldSilk","Materiali: 100% ingichka tolali harir","Yaqinlaringizga sovg’a uchun ham ajoyib tanlov","Uzunligi: 2 m","Kengligi: 51 sm","Ishlab chiqarilgan davlat: O’zbekiston","Zamonaviylikni uyg’unlashtira olgan milliy sharf"]),
  Aksessuarlar(id: 2, image: "assets/aksessuarlar/kepka.png", name: "Kepka beysbolka, bambukdan", price: 200000, itemCount: 13, isSaved: false, discount: 49000, rating: 14, innerDesc: ["Kepka beysbolka, bambukdan"]),
  Aksessuarlar(id: 3, image: "assets/aksessuarlar/sumka.png", name: "Sayohat sumkasi, yig'iladigan, sport, qo'l yuki, erkaklar, ayollar", price: 300000, itemCount: 59, isSaved: false, discount: 149000, rating: 4.7, innerDesc: ["Qo'l yuki sifatida mos keladi","Material - yuqori quvvatli, aşınmaya bardoshli Oksford mato","Yukxalta trolleybus yoki chamadonga biriktirilishi mumkin","O'lchamlari: uzunligi 53 sm, balandligi 30 sm, kengligi 19 sm","Sayohat va sport zal uchun zamonaviy keng sumka","Xaltaning og'irligi taxminan 0,5 kg"]),
  Aksessuarlar(id: 4, image: "assets/aksessuarlar/soat0.png", name: "Erkaklar uchun qo'l soati, kvarts soatlari, oltin rang, zanglamaydigan po'latdir", price: 800000, itemCount: 17, isSaved: false, discount: 139000, rating: 3.8, innerDesc: ["Sevimli eringiz, otangiz, do'stingiz yoki hamkasbingiz uchun ajoyib sovg'a","Soat zamonaviy va oqlangan ko'rinish uchun yaratilgan klassik dizaynga ega","Soat turi-kvarts"]),
  Aksessuarlar(id: 5, image: "assets/aksessuarlar/uzuk0.png", name: "Musulmonlar uzuki, Tavhid yozuvi bilan arabcha duo bilan", price: 65000, itemCount: 67, isSaved: false, discount: 6000, rating: 57, innerDesc: ["Material zanglamas po'lat","Ranglar-5 xil","Tavhid yozuvli zamonaviy uzuk","Barmoqlar o'lchamini o'lchash tavsifda","O'lchamlar 17-21 gacha"]),
  Aksessuarlar(id: 6, image: "assets/aksessuarlar/soat1.png", name: "Pandora-аyollar qo'l soati, aylanadigan markaz bilan, charm tasma", price: 650000, itemCount: 17, isSaved: false, discount: 179000, rating: 4.4, innerDesc: ["Bilaguzuk material turi:charm","Sovg'a o'ramida","Harakat turi:kvarts harakati","Quvvat manbai:batareya","Shisha turi:mineral shisha","Korpus materiali:zanglamaydigan po'lat"]),
  Aksessuarlar(id: 7, image: "assets/aksessuarlar/uzuk1.png", name: "Kumush qirrali zanglamaydigan po'latdan yasalgan erkaklar uzuk,'Matt Back'", price: 60000, itemCount: 69, isSaved: false, discount: 10000, rating: 3.8, innerDesc: ["Noyob dizayndagi uzuk","Material: zanglamaydigan po'lat","Suvda qoralamaydi","Yuqori sifatli","erkaklar va ayollar uchun"]),
  Aksessuarlar(id: 8, image: "assets/aksessuarlar/uzuk2.png", name: "Uzuk 'Yurak pulsi,juftlik uzuklar", price: 60000, itemCount: 26, isSaved: false, discount: 25000, rating: 3.1, innerDesc: ["Yuqori sifatli","Suvdan qo'rmaydi","Ikkinchi yarimigiz uchun ajoyib sovg'a","Material:zanglamaydigan po'lat"]),
  Aksessuarlar(id: 9, image: "assets/aksessuarlar/soyabon.png", name: "Soyabon unisex, qatlanuvchan, ikkita rangli", price: 99000, itemCount: 68, isSaved: false, discount: 51000, rating: 5.0, innerDesc: ["Naqsh oddiy klassik soyabon","Qora soyabon unisex","Soyabon tutqichi material sirpanishga qarshi plastik","Dekorativ elementlar 8ta naqshli igna","Sevgilingizga sovg'a tayinlash; do'st;ota","Yig'iladigan soyabon turi"]),
];
