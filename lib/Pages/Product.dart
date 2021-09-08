import 'package:flutter/material.dart';
import 'package:testing/Model/ProductModel.dart';
import 'package:testing/Tools/GridCell.dart';

class Product extends StatelessWidget {

  final String productName;

  const Product({Key? key, required this.productName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Product " + productName),
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
                SetCell("Samsung s21 ultra", "1200", "108", "snapdragon 888 7 nano meter", "assists/products/2.png"),
                SetCell("Samsung s20 ultra", "1000", "108", "snapdragon 878 8 nano meter", "assists/products/3.jpg"),
                SetCell("Samsung s21 ultra", "1200", "108", "snapdragon 888 7 nano meter", "assists/products/2.png"),
                SetCell("Samsung s20 ultra", "1000", "108", "snapdragon 878 8 nano meter", "assists/products/3.jpg"),
                SetCell("Samsung s21 ultra", "1200", "108", "snapdragon 888 7 nano meter", "assists/products/2.png"),
                SetCell("Samsung s20 ultra", "1000", "108", "snapdragon 878 8 nano meter", "assists/products/3.jpg"),
                SetCell("Samsung s21 ultra", "1200", "108", "snapdragon 888 7 nano meter", "assists/products/2.png"),
                SetCell("Samsung s20 ultra", "1000", "108", "snapdragon 878 8 nano meter", "assists/products/3.jpg"),
            ],
        )
    );
  }

  Widget SetCell(String title , String Price , String pxl, String processor , String ImageUrl) {
    var p = ProductModel(title, Price,pxl, processor, ImageUrl);
    return Tools.t.ProductCell(p);

  }
}
