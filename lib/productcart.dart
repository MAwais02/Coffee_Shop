import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Productcart extends StatelessWidget {
  final String name;
  final double price;
  final String subtitle;
  final String image;
  const Productcart(
      {super.key,
      required this.name,
      required this.price,
      required this.subtitle,
      required this.image});
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
                      image,
                      height: 130.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    subtitle,
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
                          ('\$$price'),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 42, // Adjust width as needed
                        height: 40, // Adjust height as needed
                        child: FloatingActionButton(
                          onPressed: () {
                            // Add your onPressed logic here
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
