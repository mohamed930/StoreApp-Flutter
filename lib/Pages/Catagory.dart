import 'package:flutter/material.dart';
import 'package:testing/Model/Catagory/CatagoryViewModel/CatagoryViewModel.dart';
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

      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: CatagoryViewModel.c.GetBrandsOperation().length,
          itemBuilder: (context,i) {
            return InkWell(child: CatagoryViewModel.c.DrawCell(i, CatagoryViewModel.c.GetBrandsOperation()), onTap: () {
              CatagoryViewModel.c.index = i;

              CatagoryViewModel.c.SelectedBrandOperation(context);
            });
          })
    );
  }
}
