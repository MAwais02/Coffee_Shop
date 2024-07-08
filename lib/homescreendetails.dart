import 'package:coffe_shop/productslist.dart';
import 'package:coffe_shop/shoppingcart.dart';
import 'package:flutter/material.dart';

class Homescreendetails extends StatefulWidget {
  const Homescreendetails({super.key});

  @override
  State<Homescreendetails> createState() => _HomescreendetailsState();
}

class _HomescreendetailsState extends State<Homescreendetails> {
  late int selectedIndex;

  @override
  void initState() {
    selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildmynavigationbar(context),
      body: selectedIndex == 0 ? Productslist() : Shoppingcart(),
    );
  }

  Container buildmynavigationbar(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            icon: selectedIndex == 0
                ? Icon(
                    Icons.home,
                    color: Theme.of(context).primaryColor,
                  )
                : const Icon(Icons.home_outlined),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            icon: selectedIndex == 1
                ? Icon(
                    Icons.favorite,
                    color: Theme.of(context).primaryColor,
                  )
                : const Icon(
                    Icons.favorite_outline,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            icon: selectedIndex == 2
                ? Icon(
                    Icons.shopping_bag,
                    color: Theme.of(context).primaryColor,
                  )
                : const Icon(Icons.shopping_cart_outlined),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                selectedIndex = 3;
              });
            },
            icon: selectedIndex == 3
                ? Icon(
                    Icons.notification_add,
                    color: Theme.of(context).primaryColor,
                  )
                : const Icon(Icons.notification_add_outlined),
          )
        ],
      ),
    );
  }
}
