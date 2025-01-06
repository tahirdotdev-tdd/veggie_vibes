import 'package:flutter/material.dart';
import 'package:veggie_vibes/models/vegetables.dart';

class VeggieTile extends StatelessWidget {
  final Vegetables vegetables;
  final Widget Icon;
  void Function()? onPressed;
  VeggieTile(
      {super.key,
      required this.vegetables,
      required this.onPressed,
      required this.Icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green[200], borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(vegetables.name),
        subtitle: Text(vegetables.price),
        leading: Image.asset(vegetables.imagePath),
        trailing: IconButton(
          icon: Icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
