import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veggie_vibes/models/vegetables.dart';

class VeggieTile extends StatelessWidget {
  final Vegetables vegetables;
  const VeggieTile({super.key, required this.vegetables});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(vegetables.name),
      subtitle: Text(vegetables.price),
      leading: Image.asset(vegetables.imagePath),
    );
  }
}
