import 'package:flutter/material.dart';

import '../OOP/drinks.dart';

class detailsPage extends StatefulWidget {
  const detailsPage({super.key});

  @override
  State<detailsPage> createState() => _detailsPageState();
}

int totalStars = 5;
int fullStars = 0;

class _detailsPageState extends State<detailsPage> {
  _build_Rating() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(totalStars, (index) {
        return IconButton(
          icon: index < fullStars
              ? Icon(
                  Icons.star_rate,
                  size: 30,
                  color: Colors.yellow.shade600,
                )
              : Icon(
                  Icons.star_rate,
                  size: 30,
                  color: Colors.grey,
                ),
          onPressed: () {
            setState(() {
              fullStars = index + 1;
            });
          },
        );
      }),
    );
  }

  int numm = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numm = 0;
  }

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
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Image.asset(
                color: null,
                "assets/icons/HeartBlack.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 0.80,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image(
                        fit: BoxFit.cover,
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.27,
                        image: AssetImage("assets/coffee/coffee4.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          products[3].product_name,
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              products[3].discribtion,
                            ),
                            Image.asset("assets/Images/Superiority.png"),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          size: 30,
                          color: Colors.yellow.shade700,
                        ),
                        Text(
                          "4.8",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "(201)",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                      indent: 20,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.25,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.11,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              textAlign: TextAlign.left,
                              "Description",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                textAlign: TextAlign.left,
                                "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              textAlign: TextAlign.left,
                              "Size",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      boxShadow: List.of([
                                        BoxShadow(
                                            color: Colors.black, blurRadius: 1)
                                      ]),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      )),
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.25,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.05,
                                  child: Text(
                                    "S",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "M",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  decoration: BoxDecoration(
                                      boxShadow: List.of([
                                        BoxShadow(
                                            color: Colors.black, blurRadius: 1)
                                      ]),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      )),
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.25,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.05,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "L",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  decoration: BoxDecoration(
                                      boxShadow: List.of([
                                        BoxShadow(
                                            color: Colors.black, blurRadius: 1)
                                      ]),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      )),
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.25,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.05,
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: null,
    );
  }
}
