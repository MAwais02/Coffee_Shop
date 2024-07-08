import 'package:flutter/material.dart';

class Productdetailspage extends StatefulWidget {
  const Productdetailspage({super.key});

  @override
  State<Productdetailspage> createState() => _ProductdetailspageState();
}

class _ProductdetailspageState extends State<Productdetailspage> {
  late int indexofSize;
  late Icon icon;
  String discription =
      'lfishfsjkhfjksdhf shfjkhdsg  sdgh sdjghs kghs dghsjk gsjkg shjkg sjhkg hsjkdg hsjkg skgh';
  @override
  void initState() {
    super.initState();
    indexofSize = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomPriceContainer(),
      backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new),
                    ),
                    const Text(
                      "Details",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const Icon(Icons.favorite_border_outlined),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14.0),
                      child: Image.asset(
                        "assetss/coffee.jpg",
                        height: 200.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Caffe Moacha",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "ice/hot",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          "4.8",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "(433)",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                      ],
                    ),
                    const Divider(),
                    const Text(
                      "Description",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      discription,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: Colors.grey),
                    ),
                    const Text(
                      "Size",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 100, // Adjust width as needed
                          height: 40, // Adjust height as needed
                          child: FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                indexofSize = 1;
                              });
                            },
                            backgroundColor: (indexofSize == 1)
                                ? Colors.amber
                                : Colors.white,
                            child: const Text('S'),
                          ),
                        ),
                        SizedBox(
                          width: 100, // Adjust width as needed
                          height: 40, // Adjust height as needed
                          child: FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                indexofSize = 2;
                              });
                            },
                            backgroundColor: (indexofSize == 2)
                                ? Colors.amber
                                : Colors.white,
                            child: const Text('M'),
                          ),
                        ),
                        SizedBox(
                          width: 100, // Adjust width as needed
                          height: 40, // Adjust height as needed
                          child: FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                indexofSize = 3;
                              });
                            },
                            backgroundColor: (indexofSize == 3)
                                ? Colors.amber
                                : Colors.white,
                            child: const Text('L'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container bottomPriceContainer() {
    return Container(
      padding: EdgeInsets.all(25),
      height: 140,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey),
              ),
              Text(
                "\t\$4.35",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 150, // Adjust width as needed
            height: 60, // Adjust height as needed
            child: FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {},
              child: const Text(
                "Buy now",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
