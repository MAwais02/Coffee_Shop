import 'package:coffe_shop/global_var.dart';
import 'package:coffe_shop/productcart.dart';
import 'package:coffe_shop/productdetailspage.dart';
import 'package:flutter/material.dart';

class Productslist extends StatefulWidget {
  const Productslist({super.key});

  @override
  State<Productslist> createState() => _ProductslistState();
}

class _ProductslistState extends State<Productslist> {
  final List<String> list = [
    'All Coffees',
    'American',
    'Capacino',
    'Cold Coffee',
    'Sugar Free'
  ];

  late String seletedlist;

  @override
  void initState() {
    super.initState();
    seletedlist = list[0];
  }

  @override
  Widget build(BuildContext context) {
    var mediaQ = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: mediaQ.height * 0.40,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 40, 39, 39), Colors.black],
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Location",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Lahore , Pakistan",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 19,
                                  color: Colors.white),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print("object");
                            },
                            child: const Icon(
                              Icons.arrow_drop_down_rounded,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                      hintText: ("Search Coffee"),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.coffee),
                    ),
                  ),
                ),
                Card(
                    elevation: 10,
                    color: Colors.brown,
                    child: SizedBox(
                      width: mediaQ.width * 0.80,
                      height: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 20,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    "Promo",
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Buy one Get one free",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: mediaQ.height * 0.35,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(249, 249, 249, 1),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      final filter = list[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              seletedlist = filter;
                            });
                          },
                          child: Chip(
                            backgroundColor: (seletedlist == filter)
                                ? Theme.of(context).colorScheme.primary
                                : const Color.fromARGB(255, 238, 233, 233),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 0.0,
                            ),
                            padding: const EdgeInsets.symmetric(),
                            label: Center(child: Text(filter)),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns
                      crossAxisSpacing: 0.0,
                      mainAxisSpacing: 0.0, // Vertical spacing between cells
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final product = products[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Productdetailspage(),
                              ));
                        },
                        child: Productcart(
                          // name: product['name'] as String,
                          // price: product['price'] as double,
                          // subtitle: product['discription'] as String,
                          // image: product['imageUrl'] as String,
                          product: product,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
