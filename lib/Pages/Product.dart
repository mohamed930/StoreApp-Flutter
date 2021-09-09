import 'package:flutter/material.dart';
import 'package:testing/Model/Products/ProductModel/ProductModel.dart';
import 'package:testing/Model/Products/ProductViewModel/ProductViewModel.dart';
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

        body: ListView.builder(
            itemCount: GetData().length,
             itemBuilder: (context , i) {
                ProductViewModel.t.products = GetData();
                // return ProductViewModel.t.SetData(GetData(), i);
                return InkWell(child: ProductViewModel.t.SetData(GetData(), i), onTap: () {
                  ProductViewModel.t.pickedindex = i;

                  ProductViewModel.t.SetObject(context);
                },);
             },
        )
    );
  }

  List<Map<String, String>> GetData() {

    var item = [
      {
        "productName": "Samsung s21 Ultra",
        "productprice": "1200",
        "productCamer": "108",
        "productProcessor": "snapdragon 888",
        "productImage": "assists/products/2.png",
        "productBattary": "5000",
        "productStorage": "128/512"
      },
      {
        "productName": "Samsung s20 Ultra",
        "productprice": "1000",
        "productCamer": "108",
        "productProcessor": "snapdragon 878",
        "productImage": "assists/products/3.jpg",
        "productBattary": "5100",
        "productStorage": "128/512"
      },
      {
        "productName": "Samsung Note20 Ultra",
        "productprice": "1400",
        "productCamer": "108",
        "productProcessor": "snapdragon 878",
        "productImage": "assists/products/d5.jpg",
        "productBattary": "4500",
        "productStorage": "128/512"
      }
    ];

    return item;
  }
}
