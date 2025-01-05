import 'package:flutter/cupertino.dart';
import 'package:veggie_vibes/models/vegetables.dart';

class VegetablesShop extends ChangeNotifier {
  //veggies for sale list

  final List<Vegetables> _shop = [
    //Potato
    Vegetables(
        name: "Potato",
        price: "200/- per Kg",
        imagePath: 'lib/images/potato.png'
    ),
    //Carrot
    Vegetables(
        name: "Carrots",
        price: "150/- per Kg",
        imagePath: 'lib/images/carrots.jpeg'
    ),
    //Peas
    Vegetables(
        name: "Peas",
        price: "250/- per Kg",
        imagePath: 'lib/images/peas.jpeg'
    ),
    //Coriander
    Vegetables(
        name: "Coriander",
        price: "300/- per Kg",
        imagePath: 'lib/images/dhania.jpeg'
    ),
    //Cucumber
    Vegetables(
        name: "Cucumber",
        price: "100/- per Kg",
        imagePath: 'lib/images/cucumber.jpeg'
    ),
    //Turnip
    Vegetables(
        name: "Turnip",
        price: "250/- per Kg",
        imagePath: 'lib/images/turnips.jpeg'

    )
  ];

  //user cart
 List<Vegetables> _userCart = [];
//get vegetables list
 List<Vegetables> get vegetablesShop => _shop;
//get user cart
  List<Vegetables> get userCart => _userCart;
  //add items to cart
void addItemToCart (Vegetables vegetables){
  _userCart.add(vegetables);
  notifyListeners();
  //remove items from cart
  void removeItemFromCart (Vegetables vegetables){
    _userCart.remove(vegetables);
    notifyListeners();
  }
}
}
