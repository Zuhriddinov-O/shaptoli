class Kitoblar {
  int id;
  String name;
  double price;
  double discount;
  int itemCount;
  double rating;
  bool isSaved = false;
  String image;
  List<String> innerDesc;

  Kitoblar(
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

final List<Kitoblar> kitoblarList = [
  Kitoblar(id: 0, image: "assets/kitoblar/ibodat.png", name: "Ibodati islomiya, Ahmad Hodiy Maqsudiy, Islom Dini ga umumiy ta'rif Ali Tantoviy", price: 120000, itemCount: 23, isSaved: false, discount: 59000, rating: 4.9, innerDesc: ["Yashil: Krill - Yumshoq Muqova","Laym: Lotin - Yumshoq muqova","Qizil: Krill - Qattiq muqova","Och Yashil: Lotin - Qattiq muqovada","Lotin va krill alifbosida","Oq: Krill - Yumshoq muqova"]),
  Kitoblar(id: 1, image: "assets/kitoblar/ayollari.png", name: "Rasululloh sollallohu alayhi vasallamning ahli ayollari", price: 170000, itemCount: 53, isSaved: false, discount: 102000, rating: 5.0, innerDesc: ["O'zbek tilida","Kitob","Diniy kitob"]),
  Kitoblar(id: 2, image: "assets/kitoblar/quron.png", name: "Qur'oni Karim o'zbek tilida, tavsiri tarjimasi, Abdulaziz Mansur", price: 195000, itemCount: 34, isSaved: false, discount: 117000, rating: 5.0, innerDesc: ["Quroni karim uzbek tilida - bu o'zbek tilida yaratilgan muqaddas kitob. Bu kitob Islom diniy matnlarni o'z ichiga olgan holda o'zbek tilida tarjima qilgan bo'lib, musulmonlar uchun muhim ahamiyatga ega. Quroni karimning o'zbek tilida tarjimasi o'qilishi va tushunilishi osonligi sababli, o'zbekiston fuqarolari uchun qadrli bir imkoniyatdir. Bu kitob musulmonlar uchun yo'l ko'rsatuvchi, hidoyat beruvchi va ruhoniy qo'llab-quvvatlayuvchi xususiyatlarga ega."]),
  Kitoblar(id: 3, image: "assets/kitoblar/atom.png", name: "Atomic Habits - James Clear (A5)", price: 53000, itemCount: 42, isSaved: false, discount: 23000, rating: 4.7, innerDesc: ["Atomic Habits - James Clear (A5)"]),
];