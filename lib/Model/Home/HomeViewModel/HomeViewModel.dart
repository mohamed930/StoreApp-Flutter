import 'dart:core';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:testing/Model/Catagory/CatagoryModel/BrandModel.dart';
import 'package:testing/Model/Home/Home%20Model/HomeModel.dart';
import 'package:testing/Model/Products/ProductModel/ProductModel.dart';
import 'package:testing/Pages/Product.dart';
import 'package:testing/Pages/productDetails.dart';
import 'package:testing/Tools/GridCell.dart';

class HomeViewModel {

  static HomeViewModel h = HomeViewModel();

  late List<Map> brands;
  late int index;

  late List<Map> products;

  List<Map> GetOffersOperation() {
    var i = [
      {
        "imageID": 12,
        "imageUrl": "assists/1.jpeg"
      },
      {
        "imageID": 13,
        "imageUrl": "assists/2.webp"
      }
    ];

    return i;
  }


  // MARK:- TODO:- This Section For Brands Operation.
  // MARK:- TODO:- This Method For Getting Brands from API.
  List<Map> GetBrandsOperation() {

    var i = [
      {
        "BrandId": 1,
        "BrandName": "Xioami",
        "BrandImage": "assists/Catagory/d.jpg"

      },
      {
        "BrandId": 2,
        "BrandName": "Apple",
        "BrandImage": "assists/Catagory/d1.jpg"

      },
      {
        "BrandId": 3,
        "BrandName": "Oppo",
        "BrandImage": "assists/Catagory/d3.jpg"

      },
      {
        "BrandId": 4,
        "BrandName": "Huawei",
        "BrandImage": "assists/Catagory/d4.png"

      },
      {
        "BrandId": 5,
        "BrandName": "Samsung",
        "BrandImage": "assists/Catagory/d5.png"
      }

    ];

    return i;
  }
  //TODO:- Endl.

  // MARK:- TODO:- This Method for initialise Draw Cell for Brands Section using data from API in HomeView.
  Widget DrawCell(int i, List<Map> arr) {
    BrandsModel m = BrandsModel();

    m.BrandId = arr[i]['BrandId'];
    m.BrandName = arr[i]['BrandName'];
    m.BrandImageUrl = arr[i]['BrandImage'];

    return ListCell(m);
  }
  // TODO:- Endl

  // MARK:- TODO:- This Method For Selected Brand Operation Function in HomeView.
  void SelectedBrandOperation(BuildContext context) {

    brands = GetBrandsOperation();

    BrandsModel b = BrandsModel();

    b.BrandName = brands[index]['BrandName'];
    b.BrandId = brands[index]['BrandId'];
    b.BrandImageUrl = brands[index]['BrandImage'];

    // print("ProductSelected "+ b.BrandName);
    Tools.t.sendDataToSecondScreen(context, Product(productName: b.BrandName));
  }
  // TODO:- Endl

  // MARK:- TODO:- This Method For Draw UI for Brands.
  Widget ListCell (BrandsModel b) {

    return Container(
        height: 100 ,
        width: 130,

        child: ListTile(
            title: Image.asset(b.BrandImageUrl ,fit: BoxFit.fill , width: double.infinity, height: 95,),
            subtitle: Container( child:
            Text( b.BrandName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                )
            ),
            ),

            isThreeLine: true

        )
    );
  }
  // TODO:- Endl.
  // -----------------------------------------------------


  // MARK:- TODO:- This Section For Prooducts Operation.

  // MARK:- TODO:- This Method For Getting Most Products From API
  List<Map> GetProductsOperation() {
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
  // TODO:- Endl

  // MARK:- TODO:- This Method for initialise Grid Cell for Products Section using data from API in HomeView.
  Widget DrawGridCell(int i, List<Map> arr) {

    ProductModel p = ProductModel();

    p.productName = arr[i]['productName']!;
    p.productPrice = arr[i]['productprice']!;
    p.productCamera = arr[i]['productCamer']!;
    p.productProcessor = arr[i]['productProcessor']!;
    p.productImageUrl = arr[i]['productImage']!;
    p.productBattary = arr[i]['productBattary']!;
    p.productStorage = arr[i]['productStorage']!;


    return GridCell(16, p);

  }
  // TODO:- Endl

  // MARK:- TODO:- This Method For Selected Products Operation Function in HomeView.
  void SelectedProductOperation(BuildContext context) {
    products = GetProductsOperation();

    ProductModel p = ProductModel();

    p.productName = products[index]['productName']!;
    p.productPrice = products[index]['productprice']!;
    p.productCamera = products[index]['productCamer']!;
    p.productProcessor = products[index]['productProcessor']!;
    p.productImageUrl = products[index]['productImage']!;
    p.productBattary = products[index]['productBattary']!;
    p.productStorage = products[index]['productStorage']!;

    // print("Selected Product Name " + p.productName);
    Tools.t.sendDataToSecondScreen(context, ProductDetails(picked: p));
  }
  // TODO:- Endl

  // MARK:- TODO:- This Method For Draw UI for Products.
  Widget GridCell (double fontSize , ProductModel p) {
    return GridTile(
      child:
      Image.asset(p.productImageUrl ,
          fit: BoxFit.fill),
      footer: Container(
        height: 30,
        color: Colors.black.withOpacity(0.5),
        padding: EdgeInsets.all(5),
        child:  Text(p.productName , textAlign: TextAlign.center, style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w800,
            color: Colors.white
        ),),
      ),
    );
  }
  // TODO:- Endl
  // ---------------------------------------------------------------

}