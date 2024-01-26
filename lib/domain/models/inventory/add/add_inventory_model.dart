// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class AddInventoryModel {
  String brandId;
  String productName;
  String size;
  String price;
  String stock;
  File image;
  AddInventoryModel({
    required this.brandId,
    required this.productName,
    required this.size,
    required this.price,
    required this.stock,
    required this.image,
  });
}
