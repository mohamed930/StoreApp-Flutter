import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/Model/ProductModel.dart';
import 'package:testing/Pages/Product.dart';

class Tools {

  static Tools t = Tools();

  // get the text in the TextField and start the Second Screen
  void sendDataToSecondScreen(BuildContext context , StatelessWidget page) {
    // String textToSend = Test;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ));
  }

  Widget GridCell (String title,String imageUrl , double fontSize) {
    return GridTile(
          child:
          Image.asset(imageUrl ,
              fit: BoxFit.fill),
          footer: Container(
            height: 30,
            color: Colors.black.withOpacity(0.5),
            padding: EdgeInsets.all(5),
            child:  Text(title , textAlign: TextAlign.center, style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w800,
                color: Colors.white
            ),),
          ),
        );
  }

  Widget ListCell (String imageUrl , String title) {

    return Container(
            height: 100 ,
            width: 130,

          child: ListTile(
                title: Image.asset(imageUrl ,fit: BoxFit.fill , width: double.infinity, height: 95,),
                subtitle: Container( child:
                Text( title,
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


  Widget ContainerLabelText(String name) {
    return Container(child:
          Text(name ,
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              fontStyle: FontStyle.normal,
            ),

            textAlign: TextAlign.left
          ),

          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 35.0)

        );
        // end
  }


  Widget DrawerListCell(String title, IconData iconm, {required Function onAction}) {
    return ListTile(
        title: Text(title, style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16
        )),

        leading: Icon(iconm , color:  Colors.blue),

        trailing: Icon(Icons.navigate_next),
        onTap: () {
          onAction();
        },
    );
  }


  Widget DrawLine () {
    return Divider(color: Colors.black26);
  }


  Widget CatagoryCardCell (String imageName , String BrandTitle) {
    return Container(
      margin: EdgeInsetsDirectional.all(15),
      child: Card(
        child: Column(children: <Widget>[

          Expanded(child: Image.asset(imageName ,
              fit: BoxFit.cover)),

          Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(BrandTitle,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700
                                )))

        ])

      ),
    );
  }


  Widget ProductCell(ProductModel p) {
    return Container(
      width: double.infinity - 10,
      height: 185,
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

              Container(margin: EdgeInsets.only(top: 0),child: Text("Camera: "+ p.productCamera +"pxl")),
              Container(margin: EdgeInsets.only(top: 7),child: Text("Processor: " + p.productProcessor)),
              Container(margin: EdgeInsets.symmetric(horizontal: 0,vertical: 18),child: Text("Price: "+ p.productPrice +"\$", style: TextStyle(fontWeight: FontWeight.w700 , color: Colors.amber, fontSize: 20)))

            ])

          ),


          Expanded(flex: 1, child: Icon(Icons.navigate_next))
        ]),

      ),
    );
  }

}