import 'package:coffe_shop/cartprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shoppingcart extends StatelessWidget {
  const Shoppingcart({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cartprovider>(context).cart;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cart"),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartitem = cart[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(cartitem['imageUrl'] as String),
              radius: 40,
            ),
            title: Text(cartitem['name']),
            subtitle: Text(cartitem['discription']),
            trailing: IconButton(
                onPressed: () {
                  Provider.of<Cartprovider>(context, listen: false)
                      .removeproducts(cartitem);
                },
                icon: Icon(Icons.delete)),
          );
        },
      ),
    );
  }
}
