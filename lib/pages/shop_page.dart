import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(Icons.search, color: Colors.grey),
            ],
          ),
        ),
        // message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            "Everyone files.. some fly longer than others",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        // hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                "See all",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // create a shoe
              Shoe shoe = Shoe(
                  name: "Dargre",
                  price: "240",
                  description: "cool shoe",
                  imagePath: "assets/images/dargre.png");
              return ShoeTile(
                shoe: shoe,
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:25.0, left:25, right: 25 ),
          child: Divider(
            color: Colors.grey[300],
          ),
        )
      ],
    );
  }
}
