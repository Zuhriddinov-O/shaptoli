class Gozallik {
  int id;
  String name;
  double price;
  double discount;
  int itemCount;
  double rating;
  bool isSaved = false;
  String image;
  List<String>innerDesc;

  Gozallik(
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

final List<Gozallik> gozallikList = [
  Gozallik(id: 0, image: "assets/gozallik/niqob.png", name: "Yuz uchun matoli niqob", price: 50000, itemCount: 50, isSaved: false, discount: 4000, rating: 3.9, innerDesc: ["Gilos (rangi: qip-qizil): Acerola ekstrakti bo'lgan yuz niqobi faol antioksidant va ko'taruvchi ta'sirga ega, yangilaydi va namlaydi, ajinlar chuqurligini kamaytiradi va teshiklarni siqadi. Yog 'bezlarining sekretsiyasini tartibga soladi va teriga matlik beradi, uning muvozanatini normallashtiradi. Acerola gilosning o'ziga xos navi bo'lib, tarkibidagi S vitamini apelsinnikidan 30-100 baravar ko'p, u B guruhi vitaminlariga ham boy, teriga namlovchi va ogohlantiruvchi ta'sir ko'rsatadi. Ilova: niqobni paketdan olib tashlang, toza yuzga qo'llang, tekislang. 20-30 daqiqaga qoldiring, keyin olib tashlang. Haftada 3-4 marta foydalanish tavsiya etiladi."]),
  Gozallik(id: 1, image: "assets/gozallik/dezodarant.png", name: "Rexona dezodorant sprey erkaklar uchun 3 turda, 150 ml", price:36000, itemCount: 45, isSaved: false, discount: 32000, rating: 4.6, innerDesc:["- 99% gacha bakteriyalarni yo'q qiladi","-Ertalabdan kechgacha uzluksiz tazelik hissi beradi"]),
  Gozallik(id: 2, image: "assets/gozallik/podvodka.png", name: "Ko'z uchun podvodka", price: 89000, itemCount: 47, isSaved: false, discount: 29000, rating: 5.0, innerDesc: ["Ko'z uchun podvodka"]),
  Gozallik(id: 3, image: "assets/gozallik/krem.png", name: "Yuz uchun krem L'Oreal Paris Revitalift, kunduzgi, 50 ml", price: 97000, itemCount: 46, isSaved: false, discount: 91000, rating: 5.0, innerDesc: ["Teri turi: barcha teri turlari uchun","Parvarish kosmetikasidan foydalanish ta'siri: qarishga qarshi parvarish"]),
  Gozallik(id: 4, image: "assets/gozallik/namlovchikrem.png", name: "Yuz uchun namlovchi krem Nive Care, 100 ml", price: 62000, itemCount: 2, isSaved: false, discount: 46000, rating: 4.1, innerDesc: ["Turi: terini parvarish qilish uchun krem","Variant: shea yog'i bilan","Foydalanish maydoni: yuz","Fydalanish: kunduzgi parvarish","Hajmi: 100 ml"]),
  Gozallik(id: 5, image: "assets/gozallik/sovun.png", name: "Sovun Fax, krem va kokos suti, 70 g dan, 5 dona", price: 17000, itemCount: 1, isSaved: false, discount: 12000, rating: 4.9, innerDesc: ["FAX liniyasi - bu glitserin qo'shilgan formula tufayli terini yumshoq tozalaydigan va namlaydigan hojatxona sovunlarining keng assortimenti.","Tasdiqlangan sifat va jahon yetakchisi sifatida ko‘p yillik tajriba va arzon narx FAX mahsulotlarini butun oila uchun kundalik parvarish va tozalik uchun birinchi raqamli tanlovga aylantiradi."]),
  Gozallik(id: 6, image: "assets/gozallik/sochboyoq.png", name: "Soch uchun bo'yoq Garnier Color Naturals, to'q kashtan, ton 3, 110 ml", price: 37000, itemCount: 2, isSaved: false, discount: 33000, rating: 4.6, innerDesc: ["Bo'yash jarayonida sochni oziqlantiradigan 5 ta qimmatbaho yog'lar bilan krem ​​bo'yoq"]),
  Gozallik(id: 7, image: "assets/gozallik/shampun.png", name: "Shampun Wash&Go, 360 ml", price: 33000, itemCount: 120, isSaved: false, discount: 27000, rating: 5.0, innerDesc: ["Wash&Go kepekka qarshi shampun 360 ml sochlaringizga muloyimlik bilan g'amxo'rlik qiladi, ularga hayotiy yorqinlik va yorqinlik beradi!","Maxsus formula soch va bosh terisini muloyimlik bilan tozalaydi, quruq va yog'li kepekka qarshi kurashishga yordam beradi."]),
  Gozallik(id: 8, image: "assets/gozallik/labbalzam.png", name: "Lablar uchun gigienik balzam", price: 39000, itemCount: 12, isSaved: false, discount: 11000, rating: 3.2, innerDesc: ["Gigienik balzam lablarni muloyimlik bilan namlaydi, terini davolaydi va uni yovvoyi mevalarning nozik xushbo'yligi bilan o'rab oladi.","Terining elastikligi va mustahkamligini yaxshilaydi, shu bilan uni haddan tashqari quritishdan va boshqa salbiy holatlardan himoya qiladi."]),
  Gozallik(id: 9, image: "assets/gozallik/tishchotkasi.png", name: "Elektr tovushli tish cho'tkasi to'plami Philips HX9914/57", price: 7935000, itemCount: 2, isSaved: false, discount: 7935000, rating: 5.0, innerDesc: ["Elektr tovushli tish cho'tkasi to'plami Philips HX9914/57"]),

];
