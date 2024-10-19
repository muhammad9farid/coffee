import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../OOP/Category.dart';
import '../OOP/drinks.dart';
import '../cubit/coffee_cubit.dart';
import '../cubit/coffee_state.dart';
import 'Details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    final TextEditingController searchController;
    final Function(String)? onChanged;
    final String hintText;
    return BlocProvider(
      create: (context) => CoffeeCubit(),
      child: BlocConsumer<CoffeeCubit, CoffeeState>(
        listener: (context, state) {
          if (state is HomePageState) {
            pageController.jumpToPage(0);
          } else if (state is FavoritePageState) {
            pageController.jumpToPage(1);
          } else if (state is BagPageState) {
            pageController.jumpToPage(2);
          } else if (state is NotifPageState) {
            pageController.jumpToPage(3);
          }
        },
        builder: (
          context,
          state,
        ) {
          if (state is DetailsPageState) {
            return detailsPage();
          }
          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            color: Color(0xFF313131),
                            height: MediaQuery.sizeOf(context).height * 0.4,
                            width: MediaQuery.sizeOf(context).width,
                          ),
                          SafeArea(
                            child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.25,
                              width: MediaQuery.sizeOf(context).width,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.13,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Location",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  child: Text(
                                                    "Cairo, Egypt ",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: Colors.white,
                                                  size: 25,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.08,
                                      width: MediaQuery.sizeOf(context).width,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.7,
                                            padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.05,
                                              vertical:
                                                  MediaQuery.sizeOf(context)
                                                          .height *
                                                      0.01,
                                            ),
                                            decoration: BoxDecoration(
                                              boxShadow: List.of([
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 0.5)
                                              ]),
                                              color: Color(0xFF2A2A2A),
                                              // Fill the container with grey shade
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              // Border radius of 15
                                              border: Border.all(
                                                color: Color(0xFF313131),
                                                // Set the border color to grey
                                                width: 1.5, // Border width
                                              ),
                                            ),
                                            child: TextField(
                                              controller: SearchController(),
                                              onChanged: (value) {},
                                              decoration: InputDecoration(
                                                hintText: "Search coffee",
                                                hintStyle: TextStyle(
                                                    fontSize: 20,
                                                    color:
                                                        Colors.grey.shade400),
                                                // Hint text color
                                                border: InputBorder.none,
                                                // Removes default underline
                                                icon: Icon(
                                                  Icons.search,
                                                  color: Colors.grey,
                                                  size: 40,
                                                ), // Search icon color
                                              ),
                                              style: TextStyle(
                                                  color: Colors
                                                      .white), // Text color inside the search bar
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFC67C4E),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(20),
                                                  )),
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.069,
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.15,
                                              child: Image.asset(
                                                "assets/icons/Filet.png",
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        color: Color(0xFFFFF4EE),
                        height: MediaQuery.sizeOf(context).height * 0.8,
                        width: MediaQuery.sizeOf(context).width,
                        child: Container(
                          color: Color(0xFFFFF4EE),
                          height: MediaQuery.sizeOf(context).height * 0.70,
                          width: MediaQuery.sizeOf(context).width,
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.06,
                                child: ListView.builder(
                                  itemCount: Categories.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    int selectedIndex = 0;

                                    if (state is cat1State) {
                                      selectedIndex = 0;
                                    } else if (state is cat2State) {
                                      selectedIndex = 1;
                                    } else if (state is cat3State) {
                                      selectedIndex = 2;
                                    } else if (state is cat4State) {
                                      selectedIndex = 3;
                                    }
                                    return GestureDetector(
                                      onTap: () {
                                        BlocProvider.of<CoffeeCubit>(context)
                                            .selectPageNav(index);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: index == selectedIndex
                                                ? Color(0xFFC67C4E)
                                                : Colors.grey.withOpacity(0.2),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(6),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 2.0, horizontal: 4.0),
                                            child: Container(
                                              child: Text(
                                                "${Categories[index].name}",
                                                style: TextStyle(
                                                    color:
                                                        index == selectedIndex
                                                            ? Colors.white
                                                            : Colors.black,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width,
                                height: MediaQuery.sizeOf(context).height * 0.4,
                                child: PageView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: Categories.length,
                                  controller: pageController,
                                  itemBuilder: (context, index) {
                                    int selectedIndex = 0;

                                    if (state is cat1State) {
                                      selectedIndex = 0;
                                    } else if (state is cat2State) {
                                      selectedIndex = 1;
                                    } else if (state is cat3State) {
                                      selectedIndex = 2;
                                    } else if (state is cat4State) {
                                      selectedIndex = 3;
                                    }
                                    return Container(
                                      width: MediaQuery.sizeOf(context).width,
                                      height: double.infinity,
                                      child: GridView.builder(
                                        padding: EdgeInsets.only(
                                            bottom: 65,
                                            top: 15,
                                            right: 10,
                                            left: 10),
                                        itemCount: selectedIndex == 0
                                            ? products.length
                                            : products
                                                .where((product) =>
                                                    product.tag ==
                                                    selectedIndex)
                                                .length,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.33,
                                                mainAxisSpacing: 10,
                                                crossAxisSpacing: 15,
                                                crossAxisCount: 2),
                                        itemBuilder: (context, index) {
                                          final filteredProducts =
                                              selectedIndex == 0
                                                  ? products
                                                  : products
                                                      .where((product) =>
                                                          product.tag ==
                                                          selectedIndex)
                                                      .toList();
                                          return GestureDetector(
                                              onTap: () {
                                                print(filteredProducts);
                                                BlocProvider.of<CoffeeCubit>(
                                                        context)
                                                    .navigateToDetails();
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(20),
                                                  ),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 5.0,
                                                              left: 5.0,
                                                              right: 5.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(20),
                                                        ),
                                                        child: Image.asset(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.2,
                                                            alignment: Alignment
                                                                .center,
                                                            fit: BoxFit.cover,
                                                            filteredProducts[
                                                                    index]
                                                                .imageUrl),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Container(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.06,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  filteredProducts[
                                                                          index]
                                                                      .product_name,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                                Text(
                                                                  filteredProducts[
                                                                          index]
                                                                      .discribtion,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .grey),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.05,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  "\$ ${filteredProducts[index].price}",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                                GestureDetector(
                                                                  onTap: () {
                                                                    CoffeeCubit.get(
                                                                            context)
                                                                        .AddProduct(
                                                                            filteredProducts[index].id);
                                                                  },
                                                                  /* onTap: () {
                                                                    print(
                                                                        "${filteredProducts[index].imageUrl}");
                                                                    cubit
                                                                        .openDB();

                                                                    cubit
                                                                        .insertData(
                                                                      id: filteredProducts[
                                                                              index]
                                                                          .id,
                                                                      imageUrl:
                                                                          "${filteredProducts[index].imageUrl}",
                                                                      name:
                                                                          "${filteredProducts[index].product_name}",
                                                                      discribtion:
                                                                          "${filteredProducts[index].discribtion}",
                                                                      Rate: filteredProducts[
                                                                              index]
                                                                          .Rate,
                                                                      price: filteredProducts[
                                                                              index]
                                                                          .price,
                                                                      tag: filteredProducts[
                                                                              index]
                                                                          .tag,
                                                                    );
                                                                  },*/
                                                                  child:
                                                                      Container(
                                                                    decoration: BoxDecoration(
                                                                        color: Color(
                                                                            0xFFC67C4E),
                                                                        borderRadius:
                                                                            BorderRadius.all(Radius.circular(5))),
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.1,
                                                                    height: MediaQuery.sizeOf(context)
                                                                            .height *
                                                                        0.04,
                                                                    child: Icon(
                                                                      Icons.add,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ));
                                        },
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          child: Image.asset(
                            height: MediaQuery.sizeOf(context).height * 0.18,
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            "assets/Images/Banner.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.sizeOf(context).width * 0.08,
                            vertical: MediaQuery.sizeOf(context).height * 0.015,
                          ),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.18,
                            width: MediaQuery.sizeOf(context).width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.045,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.04,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.18,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFED5151),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        )),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "Promo",
                                      style: TextStyle(
                                          shadows: List.of([
                                            Shadow(
                                                color: Colors.black,
                                                blurRadius: 2)
                                          ]),
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.12,
                                  width: MediaQuery.sizeOf(context).width,
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    "Buy one get\none FREE",
                                    style: TextStyle(
                                      shadows: [
                                        BoxShadow(
                                          blurStyle: BlurStyle.outer,
                                          color: Colors.black,
                                          blurRadius: 3,
                                          // No blur, so it looks like a solid shadow
                                          offset: Offset(0,
                                              3), // Adjust the offset for the straight line effect
                                        ),
                                      ],
                                      fontFamily: "Lobester",
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 35,
                                      // Highlight color
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
