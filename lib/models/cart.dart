import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // List of Shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      imagePath: 'assets/images/shoe1.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse accumsan.',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '220',
      imagePath: 'assets/images/shoe2.png',
      description:
          'Augue eu maximus lobortis, odio quam porta elit, eu faucibus sem enim eu felis. Pellentesque ante urna.',
    ),
    Shoe(
      name: 'KD Treys',
      price: '240',
      imagePath: 'assets/images/shoe3.png',
      description:
          'Posuere id lacus ac, tempor elementum sapien. Vestibulum sodales at sapien interdum interdum.',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '190',
      imagePath: 'assets/images/shoe4.png',
      description:
          'Praesent bibendum felis ante, et efficitur mauris mollis eu.',
    )
  ];

  // List of Items in User Cart
  List<Shoe> userCart = [];

  // Get List of Shoes for Sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // Get Cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // Add Items to Cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // Remove Item from Cart
  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
