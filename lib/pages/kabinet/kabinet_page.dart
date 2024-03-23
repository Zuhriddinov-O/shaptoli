import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../home/home_page.dart';

class KabinetPage extends StatefulWidget {
  const KabinetPage({super.key});

  @override
  State<KabinetPage> createState() => _KabinetPageState();
}

class _KabinetPageState extends State<KabinetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blueGrey.shade50,
          title: const Text(
            "Shaxsiy Kabinet",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
          ),
          centerTitle: true),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Image.asset(
            "assets/images/uzum_logo.png",
            color: const Color.fromARGB(255, 124, 50, 221),
            width: 100,
          ),
          const Text(
            "Savat va akkauntingizdagi charlatanism ro'yxatini ochish uchun tizimga airing",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
           SizedBox(height: MediaQuery.of(context).size.height/30),
           const CupertinoListTile(leading: Icon(Icons.location_on_outlined),title: Text("Shahar"),trailing: Icon(Icons.arrow_forward_ios_sharp,color: CupertinoColors.systemGrey),backgroundColor: CupertinoColors.white),
          const Gap(5),
          const CupertinoListTile(leading: Icon(Icons.notifications_none_outlined),title: Text("Birldirishnomalar"),trailing: Icon(Icons.arrow_forward_ios_sharp,color: CupertinoColors.systemGrey),backgroundColor: CupertinoColors.white),
          const Gap(5),
          const CupertinoListTile(leading: Icon(CupertinoIcons.info),title: Text("Ma'lumot"),trailing: Icon(Icons.arrow_forward_ios_sharp,color: CupertinoColors.systemGrey),backgroundColor: CupertinoColors.white),
          const Gap(5),
          const CupertinoListTile(leading: Icon(Icons.email_outlined),title: Text("Biz bilan bog'lanish"),trailing: Icon(Icons.arrow_forward_ios_sharp,color: CupertinoColors.systemGrey),backgroundColor: CupertinoColors.white),
          const Gap(10),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(horizontal: 175),
              height: 40,
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ), (route) => false);
              },
              color: const Color.fromARGB(255, 124, 50, 221),
              child: const Text(
                "Kirish",
                style: TextStyle(color: CupertinoColors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
