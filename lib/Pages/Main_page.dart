import 'package:coffee_shop/Pages/Home_page.dart';
import 'package:coffee_shop/Pages/Notif_page.dart';
import 'package:coffee_shop/Pages/Favorite_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/coffee_cubit.dart';
import '../cubit/coffee_state.dart';
import 'Bag_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    double iconSize = 35;

    // List of Navigation Icons
    List<String> navIcons = [
      "assets/icons/Home.png",
      "assets/icons/Heart.png",
      "assets/icons/Bag.png",
      "assets/icons/Notification.png",
    ];

    return BlocProvider(
      create: (context) => CoffeeCubit(),
      child: BlocConsumer<CoffeeCubit, CoffeeState>(
        listener: (context, state) {
          // Listen for page changes to update the page view accordingly
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
        builder: (context, state) {
          int selectedIndex = 0;

          // Determine which page is selected
          if (state is HomePageState) {
            selectedIndex = 0;
          } else if (state is FavoritePageState) {
            selectedIndex = 1;
          } else if (state is BagPageState) {
            selectedIndex = 2;
          } else if (state is NotifPageState) {
            selectedIndex = 3;
          }

          return Scaffold(
            body: Stack(
              children: [
                PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: pageController,
                  children: [
                    HomePage(),
                    FavoritePage(),
                    BagPage(),
                    NotifPage(),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemExtent: MediaQuery.of(context).size.width / 4,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              // Call Cubit to change the selected page
                              BlocProvider.of<CoffeeCubit>(context)
                                  .selectPage(index);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.transparent,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FittedBox(
                                      child: Badge(
                                        label: Center(child: Text("10")),
                                        alignment: Alignment.topRight,
                                        isLabelVisible: index == 2 ? true : false,
                                        child: Image.asset(
                                          fit: BoxFit.contain,
                                          width: 28,
                                          height: 28,
                                          navIcons[index],
                                          color: selectedIndex == index
                                              ? Color(0xFFC67C4E)
                                              : null,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: selectedIndex == index
                                              ? Color(0xFFC67C4E)
                                              : Colors.white,
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(100)),
                                        ),
                                        height: 7,
                                        width: MediaQuery.of(context).size.width * 0.03,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
