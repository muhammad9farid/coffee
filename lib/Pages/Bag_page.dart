import 'package:coffee_shop/cubit/coffee_cubit.dart';
import 'package:flutter/material.dart';

class BagPage extends StatelessWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF4EE),
      appBar: AppBar(
        toolbarHeight: MediaQuery.sizeOf(context).height * 0.1,
        title: Text(
          "Detail",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFFFF4EE),
        leading: IconButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Image.asset(
                "assets/icons/HeartBlack.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            // Delivery Address Container
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Address",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  // Delivery Address Details
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cairo, Ain Shams",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "61/hassan elsayed ahmed",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Image.asset("assets/Images/Edit.png"),
                        Divider(color: Colors.grey, indent: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Bag Items List
            Expanded(
              child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  child: ListView.builder(
                    itemCount: CoffeeCubit.get(context).cartLength, // Set to cart length
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "(name)",
                            // Display product name and count
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
