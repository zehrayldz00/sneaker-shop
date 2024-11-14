import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 25,
      ),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 2
          )]
      ),
      child: Column( //2:13:55
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(13),
              child: Image.asset(shoe.imagePath)),

          //description
          Text(shoe.description, style: TextStyle(color: Colors.grey[600],),),

          //price + details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // shoe name
                  Text(shoe.name),
                  // price
                  Text(shoe.price),
              ],),

            // plus button
              Icon(Icons.add),
          ],)

        ],
      ),
    );
  }
}
