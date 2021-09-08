import 'package:flutter/material.dart';
import 'package:testing/Pages/Product.dart';
import 'package:testing/Tools/Drawer.dart';
import 'package:testing/Tools/GridCell.dart';

class catagories extends StatefulWidget {
  const catagories({Key? key}) : super(key: key);

  @override
  _catagoriesState createState() => _catagoriesState();
}

class _catagoriesState extends State<catagories> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Catagory"),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: <Widget>[IconButton(onPressed: () {} ,
            icon: Icon(Icons.search))
        ],
        elevation: 5,
        // leading: IconButton(icon: Icon(Icons.security) , onPressed: (){}),
        brightness: Brightness.light,
      ),

      drawer: MyDrawer(),

      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

        children: <Widget>[
          InkWell(child: Tools.t.CatagoryCardCell("assists/Catagory/d.jpg", "Xiaomi") , onTap: () {
              Tools.t.sendDataToSecondScreen(context, Product(productName: "Xiaomi"));
          }),
          InkWell(child: Tools.t.CatagoryCardCell("assists/Catagory/d1.jpg", "Apple"), onTap: () {
              Tools.t.sendDataToSecondScreen(context, Product(productName: "Apple"));
          }),
          InkWell(child: Tools.t.CatagoryCardCell("assists/Catagory/d3.jpg", "Oppo"), onTap: () {
              Tools.t.sendDataToSecondScreen(context, Product(productName: "Oppo"));
          }),
          InkWell(child: Tools.t.CatagoryCardCell("assists/Catagory/d4.png", "Huawei"), onTap: () {
              Tools.t.sendDataToSecondScreen(context, Product(productName: "Huawei"));
          }),
          InkWell(child: Tools.t.CatagoryCardCell("assists/Catagory/d5.png", "Samsung"), onTap: () {
              Tools.t.sendDataToSecondScreen(context, Product(productName: "Samsung"));
          })
        ],

      )
    );
  }
}
