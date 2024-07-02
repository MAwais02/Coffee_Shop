import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homescreendetails extends StatelessWidget {
  const Homescreendetails({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQ = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
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
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.white, Colors.white]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
