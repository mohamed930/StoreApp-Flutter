import 'package:flutter/material.dart';
import 'package:testing/Model/Catagory/CatagoryModel/BrandModel.dart';
import 'package:testing/Pages/Product.dart';
import 'package:testing/Tools/GridCell.dart';

class CatagoryViewModel {

  static CatagoryViewModel c = CatagoryViewModel();

  late List<Map> brands;
  late int index;

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

    return CatagoryCardCell(m);
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

  Widget CatagoryCardCell (BrandsModel b) {
    return Container(
      margin: EdgeInsetsDirectional.all(15),
      child: Card(
          child: Column(children: <Widget>[

            Expanded(child: Image.asset(b.BrandImageUrl ,
                fit: BoxFit.cover)),

            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(b.BrandName,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                    )))

          ])

      ),
    );
  }

}