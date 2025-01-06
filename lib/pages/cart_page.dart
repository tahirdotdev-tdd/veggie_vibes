import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veggie_vibes/components/veggie_tile.dart';
import 'package:veggie_vibes/models/vegetables.dart';
import 'package:veggie_vibes/models/vegetables_shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Vegetables vegetables) {
    Provider.of<VegetablesShop>(context, listen: false)
        .removeItemFromCart(vegetables);
  }

  void payNow() {
    // Add functionality to handle payment here
    print("Payment initiated");
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<VegetablesShop>(
        builder: (context, value, child) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const Text(
                  "Your Cart",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10,),
                Expanded(
                    child: ListView.builder(
                        itemCount: value.userCart.length,
                        itemBuilder: (context, index) {
                          Vegetables eachVeggie = value.userCart[index];

                          return VeggieTile(
                              vegetables: eachVeggie,
                              onPressed: () => removeFromCart(eachVeggie),
                              Icon: const Icon(Icons.delete));
                        })),
                GestureDetector(
                  onTap: payNow,
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        "Pay Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
