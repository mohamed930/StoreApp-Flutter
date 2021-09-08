import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './GridCell.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Mohamed Ali"),
            accountEmail: Text("mo.ali12477@gmail.com"),
            currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
            currentAccountPictureSize: Size.square(90),
            decoration: BoxDecoration(
                color: Colors.red,

                image: DecorationImage(
                  // image: NetworkImage("https://www.shutterstock.com/blog/wp-content/uploads/sites/5/2017/08/nature-design.jpg"),
                    image: AssetImage("assists/back.jpg"),
                    fit: BoxFit.cover
                )
            ),

          ),

          Tools.t.DrawerListCell("Home Page", Icons.home, onAction: () {
            Navigator.of(context).pushNamed('Home');
          }),

          Tools.t.DrawLine(),

          Tools.t.DrawerListCell("category Page", Icons.category, onAction: () {
            Navigator.of(context).pushNamed('categories');
          }),

          Tools.t.DrawLine(),

          Tools.t.DrawerListCell("Cart Page", Icons.shopping_cart_rounded, onAction: () {
            print("Cell (3) Selected");
          }),

          Tools.t.DrawLine(),

          Tools.t.DrawerListCell("Setting Page", Icons.settings, onAction: () {
            print("Cell (4) Selected");
          }),

          Tools.t.DrawLine(),

          Tools.t.DrawerListCell("About app Page", Icons.info, onAction: () {
            print("Cell (5) Selected");
          }),

          Tools.t.DrawLine(),

          Tools.t.DrawerListCell("Logout Page", Icons.logout, onAction: () {
            print("Cell (6) Selected");
          })

        ],
      ),
    );
  }
}