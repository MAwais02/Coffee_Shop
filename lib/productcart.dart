import 'dart:convert';

import 'package:coffe_shop/cartprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Productcart extends StatefulWidget {
  final Map<String, dynamic> product;
  const Productcart({super.key, required this.product});

  @override
  State<Productcart> createState() => _ProductcartState();
}

class _ProductcartState extends State<Productcart> {
  void ontap() {
    Provider.of<Cartprovider>(context, listen: false).addproducts({
      'name': widget.product['name'],
      'brand': widget.product['brand'],
      'price': widget.product['price'],
      'imageUrl': widget.product['imageUrl'],
      'discription': widget.product['discription'],
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      widget.product['imageUrl'],
                      height: 130.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    widget.product['name'] as String,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    widget.product['discription'] as String,
                    style: const TextStyle(
                        color: Color.fromRGBO(225, 219, 219, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '\$${widget.product['price']}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 42, // Adjust width as needed
                        height: 40, // Adjust height as needed
                        child: FloatingActionButton(
                          onPressed: () {
                            ontap();
                          },
                          child: Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
