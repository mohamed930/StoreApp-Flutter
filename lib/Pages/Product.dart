import 'package:flutter/material.dart';
import 'package:testing/Model/Products/ProductModel/ProductModel.dart';
import 'package:testing/Model/Products/ProductViewModel/ProductViewModel.dart';
import 'package:testing/Tools/GridCell.dart';

class Product extends StatelessWidget {

  final String productName;

  const Product({Key? key, required this.productName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductViewModel.t.PickedBrandName = productName;
    ProductViewModel.t.FilterDataOperation();
    return Scaffold(
        appBar: AppBar(
          title: Text("Product " + productName),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: <Widget>[IconButton(onPressed: () {} ,
              icon: Icon(Icons.search))
          ],
          elevation: 5,
          // leading: IconButton(icon: Icon(Icons.security) , onPressed: (){}),
          brightness: Brightness.light,
        ),

        body: ListView.builder(
            itemCount: ProductViewModel.t.FilteredArry.length,
             itemBuilder: (context , i) {
                ProductViewModel.t.products = ProductViewModel.t.FilteredArry;
                // return ProductViewModel.t.SetData(GetData(), i);
                return InkWell(child: ProductViewModel.t.SetData(ProductViewModel.t.FilteredArry, i), onTap: () {
                  ProductViewModel.t.pickedindex = i;

                  ProductViewModel.t.SetObject(context);
                },);
             },
        )
    );
  }
}
