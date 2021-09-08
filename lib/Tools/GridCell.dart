import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/Model/Products/ProductModel/ProductModel.dart';
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

}