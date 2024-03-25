class BogVaTarmoq {
  int? id;
  String name;
  double price;
  double discount;
  int itemCount;
  double rating;
  bool isSaved = false;
  String image;
  List<String> innerDesc;

  BogVaTarmoq(
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

final List<BogVaTarmoq> bogVaTarmoqList = [
  BogVaTarmoq(id: 0, image: "assets/bog_tarmoqlar/gilam.png", name: "Yashil dekorativ panjara", price: 1447000, itemCount: 570, isSaved: false, discount: 1447000, rating: 3.5, innerDesc: ["Bir rulon 10 m2","Tel diametri-1,60g/m2","To'quv turi-ikki tomonlama","Hujayra o'lchami-40x40 mm","PVX material 100% UVdan himoyalangan","Material og'rilgi 1m2-2,5 kg","Dekorativ fextovone fazalliklari Yashil panjara","-har ikki tomonining estetik va zamonaviy ko'rinishi","hududlarni jismoniy va vizual himoyalaydi"]),
  BogVaTarmoq(id: 1, image: "assets/bog_tarmoqlar/kislota.png", name: "Kahrabo kislotasi", price: 13000, itemCount: 79, isSaved: false, discount: 13000, rating: 5.0, innerDesc: ["Gullash va meva hosil bo'lishining murakkab o'sish stimulyatori. Pishib etishni tezlashtirish va hosildorlikni oshirish, o'simliklarni sovuqdan va boshqa stressli sharoitlardan himoya qilishni ta'minlaydi."]),
  BogVaTarmoq(id: 2, image: "assets/bog_tarmoqlar/qolqop0.png", name: "Maishiy rezinali kislota uchun qo'lqop", price: 30000, itemCount: 54, isSaved: false, discount: 13000, rating: 3.7, innerDesc: ["Tarkibi - 100% tabiiy lateksQoplama rangi - sariq Ishchi qo'lqoplari bugungi kunda eng mashhur ish kiyimlari turlaridan biri bo'lib, qo'llarni salbiy omillar ta'siridan, shuningdek, ish jarayonida ularning kuchli ifloslanishidan himoya qilishga qaratilgan.Biz sotadigan ish qo'lqoplari qo'llaringizni himoya qilish imkonini beradi. kesish va o'tkir narsalar, past va yuqori haroratlar, elektr toki urishi, kimyoviy moddalar, axloqsizlik, sirpanish va boshqa omillar."]),
  BogVaTarmoq(id: 3, image: "assets/bog_tarmoqlar/shlang0.png", name: "Sug'orish uchun bog' shlangi, 45 metrgacha cho'zilishi mumkin", price: 250000, itemCount: 54, isSaved: false, discount: 150000, rating: 2.4, innerDesc: ["Tovar nomi: pengliu Model raqami: FT0339 Kelib chiqishi: Xitoy Turi: Bog 'shlangi g'altaklari Material: Plastik Sozlanishi aşınmaya bardoshli Zangdan himoya qilish Anti-UV Moslashuvchan o'ralgan Yumshoq Devorga o'rnatish: standart Plastik turi: Polipropilen Bog 'shlangi g'altakning turi: suv shlangi Birlik: 100000015 Sotish usuli: dona_sotish Miqdori: 1 Yuk tashish og'irligi: 0,900 Paket hajmi, uzunligi, sm: 30 Paket hajmi, kengligi, sm: 20 Paket hajmi, balandligi, sm: 10 "]),
  BogVaTarmoq(id: 4, image: "assets/bog_tarmoqlar/elektr_maysa0.png", name: "Elektr maysa o'rish mashinasi EGO, 10 m kabel va 1 pichoqni to'plamida", price: 1800000, itemCount: 23, isSaved: false, discount: 940000, rating: 4.9, innerDesc: ["Elektr motorining quvvati - 1500vatt","Bo'sh ish tezligi-3450 rpm","Kesish diamtri-380 mm","Kesish balandligini sozlash turi-bosqichli","Eyishni sozlash darajalari soni 3(25/45/65) mm","O'rish diskining materiali-po'lat","Hajmi-301"]),
  BogVaTarmoq(id: 5, image: "assets/bog_tarmoqlar/gugurt.png", name: "Xojalik gugurti", price: 20000, itemCount: 53, isSaved: false, discount: 9000, rating: 4.7, innerDesc: ["Asl. Kundalik foydalanish uchun yuqori sifatli gugurtlar. Gugurtlar gaz plitasi, olov, mangal, kamin va pechlarni yoqish uchun mo'ljallangan. Gugurt piknikda, lagerda, baliq ovida yoki ovda olov yoqish uchun eng yaxshi yordamchi bo'ladi."]),
  BogVaTarmoq(id: 6, image: "assets/bog_tarmoqlar/lampa0.png", name:"Chivinlarni o'ldirish uchun qurilma, chivinlarga qarshi chiroq", price: 1000000, itemCount: 1, isSaved: false, discount: 287000, rating: 4.3, innerDesc: ["Tuzoq chiroq - har qanday hasharotlar bilan kurashishning qulay, ekologik toza va iqtisodiy usuli: chivinlar, midges, mayda qo'ng'izlar. Chiroq to'plamga kiritilgan tarmoqqa ulangan USB kabelidan (shu jumladan) ishlaydi. Hasharotlarga qarshi chiroq faqat quvvat manbaidan ishlaydi: rozetka, quvvat banki yoki noutbuk. Chiroq o'z-o'zidan ishlamaydi, chunki. Batareyalar, akkumulyatorlar yoki batareyalarni o'rnatish ta'minlanmagan! Chiroq rangini tanlash yo'q, faqat aralash! Elektr hasharotlar tuzog'i ultrabinafsha nurlar yordamida chivinlar, midgelar va qo'ng'izlarni o'ziga tortadi; hasharotlar yaqinroq uchib ketganda, chiroq elektr toki bilan hasharotlarni zararsizlantiradi. Qurilmada ovoz yo'q, shuning uchun u sizning e'tiboringizni bezovta qilmaydi. U sog'liq uchun xavfli bo'lgan zararli bug'larni chiqarmaydi va kimyoviy elementlarga ega emas. Mahsulot odamlar va uy hayvonlari uchun mutlaqo xavfsizdir. Chivinlar va midgeslarning tungi uyquga xalaqit berishiga yo'l qo'ymaslik uchun qurilmani yotishdan 6 soat oldin yoqish va tun bo'yi ochiq qoldirish tavsiya etiladi. Ishlatilgandan so'ng, chiroqni cho'tka bilan ehtiyotkorlik bilan tozalash kerak, avval uni rozetkadan ajratib oling va ichkariga suv kirishiga yo'l qo'ymang. Foydalanish vaqtida qo'l bilan tegmang, bolalar tomonidan mustaqil ravishda foydalanmang."]),
  BogVaTarmoq(id: 7, image: "assets/bog_tarmoqlar/shlang1.png", name: "Simsiz mini yuqori bosimli yuvish mashinasi MDHL, universal, avtomobil uchun", price: 1500000, itemCount: 23, isSaved: false, discount: 890000, rating: 2.5, innerDesc: ["Ma'lumot yo'q"]),
  BogVaTarmoq(id: 8, image: "assets/bog_tarmoqlar/lampa1.png", name: "Chiroq Batareya va quyosh paneli bilan bog' uchun lager", price: 140000, itemCount: 32, isSaved: false, discount: 78000, rating: 4.2, innerDesc: ["USB zaryadlanuvchi yoki quyosh energiyasi bilan ishlaydigan lager chiroqi ochiq havoda sarguzashtlar uchun ideal bo'lgan ishonchli va ixcham yorug'lik manbai. U kuchli LED yorug'lik manbasiga ega, uni xiralashtirish va turli xil yoritish rejimlari o'rtasida almashtirish mumkin. Chiroq USB port orqali qulay tarzda quvvatlanadi, bu esa uni bunday portga ega bo'lgan har qanday qurilma bilan ishlatish imkonini beradi. Bunga qo'shimcha ravishda, chiroq uni shikastlanishdan himoya qiladigan mustahkam korpusga ega, shuningdek, foydalanishni osonlashtiradigan maxsus o'rnatgichlarga ega. Bularning barchasi USB-quvvatlovchi lager fonarini ochiq havoda ishqibozlar uchun ajralmas aksessuarga aylantiradi."]),
  BogVaTarmoq(id: 9, image: "assets/bog_tarmoqlar/lampa2.png", name: "Harakat sensori bilan quyoshli ko'cha chiroqi", price: 189000, itemCount: 12, isSaved: false, discount: 113000, rating: 3.7, innerDesc: ["Suv o'tkazmaydigan:IP65 (tashqi foydalanish uchun ideal)","O'rnatilgan PIP harakat sensori","Zaryadlash vaqti:4-6 (to'g'ridan-to'g'ri quyosh nurida)","Ishlash vaqti: 8 saoatdan (tanlangan rejimga qarab","Qizl chiroq ko'rsatgichi mavjud (yoqilgan xavfsizlik kamerasiga taqlid qilish)","Sozlanishi va devorga,daraxtlarga, metallga va shishaga o'rnatish oson;"]),
];
