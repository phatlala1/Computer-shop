import 'package:flutter/material.dart';
import 'package:computershop/model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:computershop/cart.dart';
import 'package:computershop/item.dart';

void main() => runApp(MyApp(
  model: CartModel(),
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final CartModel model;
  const MyApp({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CartModel>(
      model: model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping Cart',
        home: ListScreen(),
        routes: {'/cart': (context) => CartPage()},
      ),
    );
  }
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[300],
        title: Text('ComputerShop'+'Total:'+ ScopedModel.of<CartModel>(context,rebuildOnChange: true).totalCartValue.toString()+'฿' ),
        actions: <Widget>[
          FlatButton(
              child: Text(
                "Clear",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => ScopedModel.of<CartModel>(context).clearCart()),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
        ],
      ),
      body: ListView.builder(
        itemExtent: 80,
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
                return ListTile(
                    leading: Image.network(itemList[index].imageUrl),
                    title: Text(itemList[index].title),
                    subtitle: Text("\฿"+itemList[index].price.toString()),
                    trailing: OutlineButton(
                        child: Text("Add"),
                        onPressed: () => model.addProduct(itemList[index])));
              });
        },
      ),
    );
  }
}



