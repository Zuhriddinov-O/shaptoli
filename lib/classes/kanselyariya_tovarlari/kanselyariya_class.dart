class Kanselyariya {
  int id;
  String name;
  double price;
  double discount;
  int itemCount;
  double rating;
  bool isSaved = false;
  String image;
  List<String> innerDesc;

  Kanselyariya(
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

final List<Kanselyariya> kanselyariyaList = [
  Kanselyariya(id: 0, image: "assets/kanselyariya/qalamlazer.png", name: "Qalam-lazer, taqdimotlar uchun ko'rsatgich, chiroq, magnit, ko'rsatkich", price: 100000, itemCount: 102, isSaved: false, discount: 29000, rating: 4.7, innerDesc: ["Lazer-qalam 5 tasi 1 da","Taqdimotlar va mushuk o'yinlari uchun lazer ko'rsatgichi","3 ta batareya kiritilgan"]),
  Kanselyariya(id: 1, image: "assets/kanselyariya/kozoynak.png", name: "Kozoynak lupa Big Vision, kattalashtiruvchi", price: 280000, itemCount: 50, isSaved: false, discount: 55000, rating: 4.2, innerDesc: ["Big Vision kattaytiruvchi ko’zoynaklar mayda narsalar bilan ishlovchilar yoki mayda xarfli matnlarni o’qiydiganlar uchun juda zarur.","Chunki bu qulay ko’zoynaklar barcha harf va detallarni qiyinchiliksiz ko’rib chiqishda asqotadi.","Dioptriya: 2,5."]),
  Kanselyariya(id: 2, image: "assets/kanselyariya/magnitlikapalak.png", name: "Magnitdagi kapalaklar, 3D effekti", price: 30000, itemCount: 5, isSaved: false, discount: 18000, rating: 3.0, innerDesc: ["Paket 12 dona rangli kapalaklardan iborat.","Metall yuzada mukammal ushlab turing (muzlatgich, stol chiroqchasi va boshqalar). Yoki siz eshiklarga, derazalarga, devorga biriktirilishi bilan birga keladigan ikki tomonlama lentadan foydalanishingiz mumkin.","Qanotlar ikki baravar, 3D effekti."]),
  Kanselyariya(id: 3, image: "assets/kanselyariya/qogoz.png", name: "Ofis jihozlari uchun qog'oz list Snigurochka Svetocopy A4", price: 50000, itemCount: 16, isSaved: false, discount: 8000, rating: 2.4, innerDesc: ["Svetocopy ofis qog'ozi kundalik ish yuritish uchun ideal iqtisodiy qog'oz bo'lib, u funksionalligidan, funktsiyalari to'plamidan va operatsion faoliyat davridan qat'i nazar, har qanday printer va nusxa ko'chirish moslamasiga mos keladi.Oqlik, struktura va varaqning bir xilligining optimal qiymatlari yuqori bosim sifatini kafolatlaydi."]),
  Kanselyariya(id: 4, image: "assets/kanselyariya/qalam0.png", name: "Oddiy abadiy qalam, o'chirg'ichi bilan birga, qalam, kanstovar", price: 50000, itemCount: 43, isSaved: false, discount: 12000, rating: 4.2, innerDesc: ["O'tkirlashni talab qilmaydi","Maslahat o'zgaradi","Oddiy silgi bilan o'chiriladi (shu jumladan)","Qo'rg'oshinning qattiqligi-HB (qattiq yumshoq)","Uzunligi 14 sm"]),
  Kanselyariya(id: 5, image: "assets/kanselyariya/bloknot0.png", name: "Kundalik, daftar, bloknot, 150 varoqli", price: 65000, itemCount: 12, isSaved: false, discount: 39000, rating: 4.5, innerDesc: ["Muqovasi-qattiq","Bo'yi-21 sm","150 varoq","Yaqin insonlaringiz va hamkorlaringiz uchun ajoyib sovg'a","Eni-14.5 sm"]),
  Kanselyariya(id: 6, image: "assets/kanselyariya/lotok0.png", name: "Lotok, qog'oz solish uchun vertikal holda to'rli yig'iladigan, 3-4 bo'linma tanlash uchun", price: 148000, itemCount: 23, isSaved: false, discount: 59000, rating: 4.2, innerDesc: ["Vertikal qog'oz laganda, to'r, yig'iladigan, 3-4 bo'linma. Ikkala tomondan yozish uchun stikerlar bilan."]),
  Kanselyariya(id: 7, image: "assets/kanselyariya/savat0.png", name: "Tutqich savati, qog'oz qisqichlari, o'chirish uchun elastik tasma, stend", price: 48000, itemCount: 1, isSaved: false, discount: 48000, rating: 5.0, innerDesc: ["Ish stolingizda tartibni tashkil qilish uchun kerak","Flomasterlar, qalamlar hammasi bir joyda","Qog'oz qisqichlari yo'qolmaydi"]),
  Kanselyariya(id: 8, image: "assets/kanselyariya/qalam1.png", name: "", price: 20000, itemCount: 43, isSaved: false, discount: 20000, rating: 4.3, innerDesc: ["Sifatli va arzon"]),
  Kanselyariya(id: 9, image: "assets/kanselyariya/xarita.png", name: "Dunyo xaritasi, O'zbekiston devor xaritasi, devoriy plakat, Toshkent xaritasi dunyo atlasi", price: 55000, itemCount: 54, isSaved: false, discount: 28000, rating: 4.7, innerDesc: ["Bolalar xonasini yoki har qanday devorni bezatadi. Bu 2 sentyabr kuni maktabga, bitiruvchi bolaga va butun oila uchun foydali o'yin-kulgiga zarur va qiziqarli sovg'adir","Dunyoning siyosiy xaritasida dunyoning zamonaviy siyosiy va ma'muriy tuzilishi: davlatlar va ularning poytaxtlari nomlari, mamlakatlarning eng yirik shaharlari va chegaralari ko'rsatilgan. Quyida davlat bayroqlari joylashgan","1: 59,000,000 masshtabli dunyo devor xaritasi 100X70 sm o'lchamga ega","Xarita kvartira yoki uyni bezashda yorqin dekor elementiga, bolalar xonasi yoki yashash xonasi dizaynining foydali tafsilotiga, ofisda yoki ish xonasida qiziqish uyg'otadigan ma'lumot maydoniga aylanadi","Ushbu plakat o'qish va maktab kunlarida ajoyib yordamchi bo'ladi, shuningdek, o'smirlar uchun maktab, universitet, universitet, kollej, ish uchun juda mos keladi"]),
];
