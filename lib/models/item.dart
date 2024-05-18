// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Item {
  int? id;
  IconData? icon;
  String? itemName;
  String? price;
  double? priceValue;
  String? category;

  Item({
    this.id,
    this.icon,
    this.itemName,
    this.price,
    this.priceValue,
    this.category,
  });
}
