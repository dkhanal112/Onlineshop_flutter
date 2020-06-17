import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:OnlineBepar/Components/products.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_newprice;
  final product_details_oldprice;
  final product_details_picture;

  ProductDetails({
    this.product_details_name,
    this.product_details_newprice,
    this.product_details_oldprice,
    this.product_details_picture,
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      elevation: 0.0,
      backgroundColor: Colors.red,
      title: Text(
        'OnlineBepar',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
    ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            color: Colors.black,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(widget.product_details_name+":",
                    style: TextStyle(
                      fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child:Text("\$${widget.product_details_oldprice}",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w800,
                            fontSize: 25.0,
                          ),),
                      ),
                      Expanded(
                        child: Text("\$${widget.product_details_newprice}",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            fontSize: 25.0,
                            decoration:TextDecoration.lineThrough,
                          ),),
                      ),


                    ],
                  ),

                ),

              ),

            ),
          )
        ],
      )
    );


  }
}
