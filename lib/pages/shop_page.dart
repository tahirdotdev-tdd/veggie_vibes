import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veggie_vibes/components/veggie_tile.dart';
import 'package:veggie_vibes/models/vegetables.dart';
import 'package:veggie_vibes/models/vegetables_shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Vegetables vegetables) {
    Provider.of<VegetablesShop>(context, listen: false)
        .addItemToCart(vegetables);

    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text("Successfully added to the cart!", style: TextStyle(fontSize: 15),),
            ));
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
                      "What would you like to order?",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    //list of veggies to buy

                    Expanded(
                        child: ListView.builder(
                            itemCount: value.vegetablesShop.length,
                            itemBuilder: (context, index) {
                              //get indi vegi
                              Vegetables eachVeggie =
                                  value.vegetablesShop[index];

                              //return tile

                              return VeggieTile(
                                vegetables: eachVeggie,
                                onPressed: () => addToCart(eachVeggie),
                                Icon: const Icon(Icons.add),
                              );
                            }))
                  ],
                ),
              ),
            ));
  }
}
