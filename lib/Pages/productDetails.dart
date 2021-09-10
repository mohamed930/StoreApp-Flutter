import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:testing/Model/ProductDetails/ProductDetailsViewModel/ProductDetailsViewModel.dart';
import 'package:testing/Model/Products/ProductModel/ProductModel.dart';

class ProductDetails extends StatelessWidget {

  final ProductModel picked;

  const ProductDetails({Key? key, required this.picked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsViewModel.pd.picked = picked;
    return Scaffold(
      appBar: AppBar(
        title: Text(picked.productName + " Details"),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: <Widget>[IconButton(onPressed: () {} ,
            icon: Icon(Icons.search))
        ],
        elevation: 5,
        // leading: IconButton(icon: Icon(Icons.security) , onPressed: (){}),
        brightness: Brightness.light,
      ),

      body: ListView(
        children: <Widget>[
          ProductDetailsViewModel.pd.ProductDetaislCell()
        ],
      )
    );
  }
}
