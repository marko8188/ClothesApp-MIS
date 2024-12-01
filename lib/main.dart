import 'package:flutter/material.dart';
import 'package:clothes_app/clothes.dart';
import 'clothes_card.dart';

void main() {
  runApp(const MaterialApp(
    home: ClothesList(),
  ));
}

class ClothesList extends StatefulWidget {
  const ClothesList({super.key});

  @override
  State<ClothesList> createState() => _ClothesListState();
}

class _ClothesListState extends State<ClothesList> {
  List<Clothes> clothes = [
    Clothes(
      name: 'Woman Jacket',
      pictureUrl: 'https://static.zara.net/assets/public/c348/6af5/df5f42029bfe/d13fd73b3b47/04749740800-e1/04749740800-e1.jpg?ts=1729241978542&w=316',
      description: 'Collared jacket with long sleeves. Pockets at the front. Contrast faux shearling interior. Button fastening at the front.',
      price: 4000.0,
    ),
    Clothes(
      name: 'Black Shirt',
      pictureUrl: 'https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2Fb4%2Faf%2Fb4afaf982d489cd3670d0c8d285fb2b98597374f.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B2%5D&call=url[file:/product/main]',
      description: 'Relaxed fit T-shirt with a round neck and short sleeves. Featuring contrast prints on the front and back.',
      price: 499.0,
    ),
    Clothes(
      name: 'Green Sweater',
      pictureUrl: 'https://static.zara.net/assets/public/cd3a/540d/751342a8b23d/d659bedb09fe/05536004500-e1/05536004500-e1.jpg?ts=1732793352176&w=316',
      description: 'A cozy navy sweater made from premium knit fabric, offering warmth and style. Designed with a classic fit, ribbed cuffs, and a crew neckline, it’s perfect for layering or wearing on its own for a polished yet comfortable look.',
      price: 2100.0,
    ),
    Clothes(
      name: 'Woman Jeans',
      pictureUrl: 'https://static.zara.net/assets/public/2562/d7ab/f2e24b468722/1bc90b917f0b/06688331800-e1/06688331800-e1.jpg?ts=1727005992282&w=316',
      description: 'Mid-rise jeans with a five-pocket design. Featuring extra-long wide legs and zip fly and metal button fastening.',
      price: 1700.0,
    ),
    Clothes(
      name: 'Blue Woman Hoodie',
      pictureUrl: 'https://static.zara.net/assets/public/c0a4/3b52/77084a7182a0/d24135ee513a/02142261418-e1/02142261418-e1.jpg?ts=1730389573605&w=750',
      description: 'Loose-fitting sweatshirt with adjustable drawstring hood and long sleeves. Front patch pocket. Ribbed trims.',
      price: 2000.0,
    ),
    Clothes(
      name: 'Black Woman Boots',
      pictureUrl: 'https://static.zara.net/assets/public/ef4b/6ff0/be80446cb9a5/d339f4d0aeb5/13046410800-e1/13046410800-e1.jpg?ts=1729594313691&w=316',
      description: 'Split suede heeled boots. High leg with sheepskin-effect turn-up detail. Round toe.',
      price: 3900.0,
    ),
    Clothes(
      name: 'Brown Shoes',
      pictureUrl: 'https://static.zara.net/assets/public/9bb0/9cfa/d4694af2a117/03c15ff8cd54/15215410183-e1/15215410183-e1.jpg?ts=1724843799679&w=316',
      description: 'Flat sheepskin derby shoes. Lace-up fastening.',
      price: 6500.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Light cream background for coziness
      appBar: AppBar(
        title: Text('213160'),
        centerTitle: true,
        backgroundColor: Colors.blue, // Warm brown for the app bar
      ),
      body: ListView.builder(
        itemCount: clothes.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8.0), // Add some spacing
            child: ItemCard(
                item: clothes[index]), // Ensure ItemCard is cozy too
          );
        },
      ),
    );
  }
}
