import 'dart:io';

import 'package:testing/Model/Products/ProductModel/ProductModel.dart';
import 'package:flutter/material.dart';
import 'package:testing/Pages/productDetails.dart';
import 'package:testing/Tools/GridCell.dart';

class ProductViewModel {

  static ProductViewModel t = ProductViewModel();

  final p = ProductModel();
  late var PickedBrandName;

  late List<Map<String, String>> FilteredArry = [];

  late List<Map<String, String>> products;
  late int pickedindex;

  List<Map<String, String>> GetData() {

    var item = [
      {
        "productName": "Samsung s21 Ultra",
        "productprice": "1200",
        "productCamer": "108",
        "productProcessor": "snapdragon 888",
        "productImage": "assists/products/2.png",
        "productBattary": "5000",
        "productStorage": "128/512",
        "productType": "Samsung"
      },
      {
        "productName": "Samsung s20 Ultra",
        "productprice": "1000",
        "productCamer": "108",
        "productProcessor": "snapdragon 878",
        "productImage": "assists/products/3.jpg",
        "productBattary": "5100",
        "productStorage": "128/512",
        "productType": "Samsung"
      },
      {
        "productName": "Samsung Note20 Ultra",
        "productprice": "1400",
        "productCamer": "108",
        "productProcessor": "snapdragon 878",
        "productImage": "assists/products/d5.jpg",
        "productBattary": "4500",
        "productStorage": "128/512",
        "productType": "Samsung"
      },
      {
        "productName": "iPhone 12 pro max",
        "productprice": "1100",
        "productCamer": "12",
        "productProcessor": "A 14 Bonic",
        "productImage": "assists/products/1.webp",
        "productBattary": "4000",
        "productStorage": "128/256",
        "productType": "Apple"
      },
      {
        "productName": "Huawei P30 pro",
        "productprice": "1400",
        "productCamer": "15",
        "productProcessor": "Kirin 1100",
        "productImage": "assists/products/d6.jpg",
        "productBattary": "5000",
        "productStorage": "128/256",
        "productType": "Huawei"
      }
    ];

    return item;
  }

  List<Map<String, String>> FilterDataOperation() {
    
    FilteredArry.removeRange(0, FilteredArry.length);
    
    var arr = GetData();

    for (int i=0;i<arr.length;i++) {
      if (arr[i]['productType'] == PickedBrandName) {
        FilteredArry.add(arr[i]);
      }
    }

    if (FilteredArry.length == 0) {
      FilteredArry = [];
    }

    return FilteredArry;
  }

  // MARK:- TODO:- This Method For Set Object and view it.
  Widget SetData (List<Map<String, String>> arr , int i) {
    p.productName = arr[i]['productName']!;
    p.productPrice = arr[i]['productprice']!;
    p.productCamera = arr[i]['productCamer']!;
    p.productProcessor = arr[i]['productProcessor']!;
    p.productImageUrl = arr[i]['productImage']!;
    p.productBattary = arr[i]['productBattary']!;
    p.productStorage = arr[i]['productStorage']!;
    p.productType = arr[i]['productType']!;

    return ProductCell();
  }
  // TODO:- endl.

  // MARK:- TODO:- This Method For View Cell and show it for user.
  Widget ProductCell() {
    return Container(
      width: double.infinity - 10,
      height: 195,
      child: Card(
        child: Row(children: <Widget>[
          Expanded(flex: 1
            ,child: Image.asset(p.productImageUrl , fit: BoxFit.cover),
          ),
          Expanded(flex: 2, child: Column(crossAxisAlignment: CrossAxisAlignment.start ,children: <Widget>[

            Container(margin: EdgeInsets.symmetric(horizontal: 0,vertical: 20),
              /*height: double.infinity - 30,*/
              alignment: Alignment.topLeft,
              child: Container(margin: EdgeInsets.only(bottom: 0),child: Text(p.productName,
                  style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w700)
              )),
            ),

            Row(children: <Widget>[ Text("Camera: " , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w700),) , Text(p.productCamera + "pxl",style: TextStyle(color: Colors.blueAccent))]),
            Row(children: <Widget>[ Text("Processor: " , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w700),), Text(p.productProcessor,style: TextStyle(color: Colors.blueAccent))]),
            Row(children: <Widget>[ Text("Battary: ", style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w700)) , Text(p.productBattary + "mla",style: TextStyle(color: Colors.blueAccent))]),
            Row(children: <Widget>[ Text("Storage: ", style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w700)), Text(p.productStorage +"Gb",style: TextStyle(color: Colors.blueAccent)) ]),

            Container(margin: EdgeInsets.symmetric(horizontal: 0,vertical: 18),child: Text("Price: "+ p.productPrice +"\$", style: TextStyle(fontWeight: FontWeight.w700 , color: Colors.amber, fontSize: 20)))

          ])

          ),


          Expanded(flex: 1, child: Icon(Icons.navigate_next))
        ]),

      )
    );
  }
  // TODO:- endl.


  // MARK:- TODO:- Set Object For Selected and move it to the next Page.
   void SetObject(BuildContext context) {
     ProductModel p1 = ProductModel();

     p1.productName = products[pickedindex]['productName']!;
     p1.productPrice = products[pickedindex]['productprice']!;
     p1.productCamera = products[pickedindex]['productCamer']!;
     p1.productProcessor = products[pickedindex]['productProcessor']!;
     p1.productImageUrl = products[pickedindex]['productImage']!;
     p1.productBattary = products[pickedindex]['productBattary']!;
     p1.productStorage = products[pickedindex]['productStorage']!;

     Tools.t.sendDataToSecondScreen(context, ProductDetails(picked: p1));
  }
  // TODO:- endl.

}