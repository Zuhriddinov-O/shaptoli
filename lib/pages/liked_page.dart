import 'package:flutter/material.dart';
import '../classes/products.dart';


class LikedPage extends StatefulWidget {
  const LikedPage({super.key,});

  @override
  State<LikedPage> createState() => _LikedPageState();
}

class _LikedPageState extends State<LikedPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:Colors.blueGrey.shade50,
          title: const Text(
            //ffsaojos
            "Istaklarim",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
          ),
          centerTitle: true),
      body: productList.first.isLiked == true ? _successField() : const Center(child: Text("Istaklar hali yo'q"),),
    );
  }
  Widget _successField() {
    return Container(
      color: Colors.transparent,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 320,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (BuildContext context, index) {
          final items = productList[index];
          return InkWell(
            onTap: () {},
            child: Ink(
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.network(items.image,fit: BoxFit.fill,width: MediaQuery.of(context).size.width)),
                  Text(items.name,overflow:TextOverflow.ellipsis),
                  Text(items.rating.toString()),
                  Text(items.price.toString(), style: const TextStyle(decoration: TextDecoration.lineThrough, fontSize: 12),),
                  Text(items.discount.toString()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
