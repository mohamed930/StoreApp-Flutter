import 'package:flutter/material.dart';

class ProductModel {
  late String productName;
  late String productPrice;
  late String productCamera;
  late String productProcessor;
  late String productImageUrl;

  ProductModel(String productName,String productPrice,String productCamera,String productProcessor, String productImageUrl) {
    this.productName = productName;
    this.productPrice = productPrice;
    this.productCamera = productCamera;
    this.productProcessor = productProcessor;
    this.productImageUrl = productImageUrl;
  }

  // int(String productName,String productPrice,String productCamera,String productProcessor, String productImageUrl) {
  //   this.productName = productName;
  //   this.productPrice = productPrice;
  //   this.productCamera = productCamera;
  //   this.productProcessor = productProcessor;
  //   this.productImageUrl = productImageUrl;
  // }
}