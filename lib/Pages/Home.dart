import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:testing/Model/Home/HomeViewModel/HomeViewModel.dart';
import 'package:testing/Tools/Drawer.dart';
import 'package:testing/Tools/GridCell.dart';

class Home extends StatefulWidget {

  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      // MARK:- TODO:- This Configure App Bar to page.
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          actions: <Widget>[IconButton(onPressed: () {} ,
              icon: Icon(Icons.search))
          ],
          centerTitle: true,
          elevation: 5,
          // leading: IconButton(icon: Icon(Icons.security) , onPressed: (){}),
          brightness: Brightness.light,

        ),
        // TODO:- endl

        // MARK:- TODO:- This Configure Drawer to this page.
        drawer: MyDrawer(),
        // TODO:- endl

        // MARK:- TODO:- This Configure Body to this page.
        body: ListView(
          // scrollDirection: Axis.horizontal,
          children: <Widget>[

            // MARK:- TODO:- This Section For Adding Crusoal for new offers.
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Carousel(
                images: [
                  AssetImage("assists/1.jpeg"),
                  AssetImage("assists/2.webp")
                ],
                dotSize: 8,
                dotIncreaseSize: 1.6,
                dotColor: Colors.white,
                dotBgColor: Colors.black26.withOpacity(0.5),
                indicatorBgPadding: 10,
                boxFit: BoxFit.cover,
                overlayShadowSize: 2,
                dotIncreasedColor: Colors.black26,
              ),
            ),
            // TODO:- endl

            // MARK:- TODO:- This Configure For Adding Catagory label.
            Tools.t.ContainerLabelText("Catagory"),
            // TODO:- endl

            // MARK:- TODO:- Catagory List View
            Container(height:  135 ,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: HomeViewModel.h.GetBrandsOperation().length,
                  itemBuilder: (context, i) {
                    return InkWell(child: HomeViewModel.h.DrawCell(i, HomeViewModel.h.GetBrandsOperation()), onTap: () {
                        HomeViewModel.h.index = i;
                        HomeViewModel.h.SelectedBrandOperation(context);
                    });
                  },
                  scrollDirection: Axis.horizontal
                )),
            // TODO:- endl

            // MARK:- TODO:- This Configure For Adding Catagory label.
            Tools.t.ContainerLabelText("Latest Products"),
            // TODO:- endl

            // MARK:- TODO:- This is For Making Grid View For Latest Products.
            Container(height: 400, child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: HomeViewModel.h.GetProductsOperation().length ,
                itemBuilder: (context, i) {
                  return  InkWell(child: HomeViewModel.h.DrawGridCell(i, HomeViewModel.h.GetProductsOperation()), onTap: () {
                    HomeViewModel.h.index = i;
                    HomeViewModel.h.SelectedProductOperation(context);
                  });
            }))
            // TODO:- endl
          ],
        )


    );
  }
}