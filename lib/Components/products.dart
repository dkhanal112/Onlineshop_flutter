import 'package:OnlineBepar/pages/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Blazer",
      "picture": "images/c1.jpg",
      "old price": "100",
      "price": "50",
    },
    {
      "name": "Shirt",
      "picture": "images/m1.jpeg",
      "old price": "500",
      "price": "400",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount: productList.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (BuildContext context,int index){
      return Single_prod(
        product_name: productList[index]['name'],
        product_picture: productList[index]['picture'],
        old_price: productList[index]['old price'],
        price: productList[index]['price'],
      );
      },);
  }
}

class Single_prod extends StatelessWidget {
  Single_prod(
      {this.product_name, this.product_picture, this.old_price, this.price});

  final product_name;
  final product_picture;
  final old_price;
  final price;

  @override
  Widget build(BuildContext context) {
    return Card(
  child: Hero(
      tag: product_name,
      child: Material(
    child: InkWell(
      onTap: (){
    Navigator.push(context, MaterialPageRoute(builder:(context){
      return ProductDetails(
        product_details_name: product_name,
        product_details_oldprice: old_price,
        product_details_newprice: price,
        product_details_picture: product_picture,
      );
    }));
      },
      child: GridTile(
        footer: Container(
          color: Colors.white70,
          child: ListTile(
            leading: Text(product_name,
              style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
            title: Text("\$$price", style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w800,
            ),),
            subtitle: Text("\$$old_price", style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w800,
              decoration:TextDecoration.lineThrough,
            ),
            ),
          ),
        ),
        child: Image.asset(product_picture,
        fit: BoxFit.cover,),

      ),
    ),
  ),),
    );
  }
}
