import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  final productsOnCart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "price": 80,
      "size": "7",
      "color": "Red",
      "quantity": 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsOnCart.length,
      itemBuilder: (context, index) {
        return SingleCartProduct(
          cartProductName: productsOnCart[index]['name'],
          cartProductPicture: productsOnCart[index]['picture'],
          cartProductPrice: productsOnCart[index]['price'],
          cartProductSize: productsOnCart[index]['size'],
          cartProductColor: productsOnCart[index]['color'],
          cartProductQuantity: productsOnCart[index]['quantity'],
        );
      },
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final cartProductName;
  final cartProductPicture;
  final cartProductPrice;
  final cartProductSize;
  final cartProductColor;
  final cartProductQuantity;

  SingleCartProduct(
      {this.cartProductName,
      this.cartProductPicture,
      this.cartProductPrice,
      this.cartProductSize,
      this.cartProductColor,
      this.cartProductQuantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          cartProductPicture,
          width: 100,
          height: 100,
        ),
        title: Text(cartProductName),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Text('Size:'),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    cartProductSize,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                  child: Text('Color:'),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    cartProductColor,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                '\$$cartProductPrice',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              // Expanded(
              //   child: IconButton(
              //     icon: Icon(Icons.arrow_drop_up),
              //     onPressed: () {},
              //   ),
              // ),
              // Text('$cartProductQuantity'),
              // Expanded(
              //   child: IconButton(
              //     icon: Icon(Icons.arrow_drop_down),
              //     onPressed: () {},
              //   ),
              // ),
              IconButton(
                icon: Icon(
                  Icons.arrow_drop_up,
                ),
                onPressed: () {},
              ),
              Text('$cartProductQuantity'),
              IconButton(
                icon: Icon(Icons.arrow_drop_down),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
