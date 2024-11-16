import 'package:flutter/cupertino.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes
  List<Shoe> shoeShop = [
    Shoe(
        name: "Navy",
        price: "236",
        description:
            "The forward-thinking design of his latest signature shoe.",
        imagePath: "assets/images/navy.png"),
    Shoe(
        name: "Dargre",
        price: "240",
        description:
            "You've got the hops and the speed-lace up in shoes that enhance what you bring to the court",
        imagePath: "assets/images/dargre.png"),
    Shoe(
        name: "Henna",
        price: "220",
        description:
            "A secure midfoot strap is suited for scoring binges and defensive stands, so that you can lock in and keep winning.",
        imagePath: "assets/images/henna.png"),
    Shoe(
        name: "Neo",
        price: "210",
        description:
            "The forward-thinking design of his latest signature shoe.",
        imagePath: "assets/images/neo.png"),
  ];

  //list of items in user cart
  List<Shoe> userCart= [];

  //get list of items for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
