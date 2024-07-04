import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});
  @override
  Widget build(BuildContext context) {
    var mediaQ = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            'assetss/coffee_beans.jpg',
            height: mediaQ.height * 1.0,
            width: mediaQ.width * 1.0,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: mediaQ.height / 5,
            left: 0,
            right: 0,
            child: const Center(
              child: Column(
                children: [
                  Text(
                    "Fall in Love with",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                  Text(
                    "Coffee in Blissfull",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        color: Colors.white),
                  ),
                  Center(
                    child: Text(
                      "Delight!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      "Welcom to our crazy Coffee shop where every Cup ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Is delights for you!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Theme.of(context)
                              .colorScheme
                              .primary)), // trying to move to the bottom
                  child: const Text(
                    'Get Started ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
