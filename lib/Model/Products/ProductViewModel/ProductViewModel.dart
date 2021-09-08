import 'dart:io';

import 'package:testing/Model/Products/ProductModel/ProductModel.dart';
import 'package:flutter/material.dart';

class ProductViewModel {

  final p = ProductModel();

  static ProductViewModel t = ProductViewModel();

  Widget SetData (List<Map<String, String>> arr , int i) {

      ProductViewModel.t.p.productName = arr[i]['productName']!;
      ProductViewModel.t.p.productPrice = arr[i]['productprice']!;
      ProductViewModel.t.p.productCamera = arr[i]['productCamer']!;
      ProductViewModel.t.p.productProcessor = arr[i]['productProcessor']!;
      ProductViewModel.t.p.productImageUrl = arr[i]['productImage']!;
      ProductViewModel.t.p.productBattary = arr[i]['productBattary']!;
      ProductViewModel.t.p.productStorage = arr[i]['productStorage']!;

      return ProductCell();
  }

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

      ),
    );
  }

}