import 'package:flutter/material.dart';
import 'package:testing/Model/Products/ProductModel/ProductModel.dart';

class ProductDetailsViewModel {

  static ProductDetailsViewModel pd = ProductDetailsViewModel();

  late ProductModel picked;

  Widget ProductDetaislCell () {
    return Container(
      height: 400,
      child: GridTile(
              child: Image.asset(picked.productImageUrl , fit: BoxFit.cover),
              footer: Container(width: double.infinity ,
                                height: 55 ,
                                padding: EdgeInsets.all(13) ,
                                color: Colors.black.withOpacity(0.3) ,
                                child: Row(
                                      children: <Widget>[
                                      Expanded(
                                               child: Text(
                                                           picked.productName ,
                                                           style: TextStyle(color: Colors.white,
                                                           fontWeight:  FontWeight.w700,
                                                           fontSize: 22)
                                                           ),
                                              ),
                                      Text(
                                            picked.productPrice + "\$",
                                            style: TextStyle(color: Colors.blueAccent,
                                                             fontWeight:  FontWeight.w800,
                                                             fontSize: 26
                                                            ),
                                          )
                                ])
                              )
              )

    );

  }

}