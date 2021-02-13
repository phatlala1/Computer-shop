import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:computershop/model.dart';

class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CartPageState();
  }
}

class _CartPageState extends State<CartPage> {
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("Cart"),
          actions: <Widget>[
            FlatButton(
                child: Text(
                  "Clear",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => ScopedModel.of<CartModel>(context).clearCart())
          ],
        ),
        body: ScopedModel.of<CartModel>(context, rebuildOnChange: true)
            .cart
            .length ==
            0
            ? Center(
          child: Text("Empty Cart"),


        )
            : Container(
            padding: EdgeInsets.all(8.0),
            child: Column(children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: ScopedModel.of<CartModel>(context,
                      rebuildOnChange: true)
                      .total,
                  itemBuilder: (context, index) {
                    return ScopedModelDescendant<CartModel>(
                      builder: (context, child, model) {
                        return ListTile(
                          title: Text(model.cart[index].title),
                          subtitle: Text(model.cart[index].qty.toString() +
                              " x " +
                              model.cart[index].price.toString() +
                              " = " +
                              (model.cart[index].qty *
                                  model.cart[index].price)
                                  .toString()),
                          trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () {
                                    model.updateProduct(model.cart[index],
                                        model.cart[index].qty + 1);
                                    // model.removeProduct(model.cart[index]);
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.remove),
                                  onPressed: () {
                                    model.updateProduct(model.cart[index],
                                        model.cart[index].qty - 1);
                                    // model.removeProduct(model.cart[index]);
                                  },
                                ),
                              ]),
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Total: \฿ " +
                        ScopedModel.of<CartModel>(context,
                            rebuildOnChange: true)
                            .totalCartValue
                            .toString() +
                        "",
                    style: TextStyle(
                        fontSize: 26.0, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.green[800],
                    textColor: Colors.white,
                    elevation: 0,
                    child: Text("BUY"),
                    onPressed: () {},
                  ))
            ])));
  }
}