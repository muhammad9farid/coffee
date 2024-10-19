import 'package:coffee_shop/Pages/Details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/coffee_cubit.dart';
import '../cubit/coffee_state.dart';
import 'Main_page.dart';

class All extends StatelessWidget {
  const All({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return BlocProvider(
      create: (context) => CoffeeCubit(),
      child: BlocConsumer<CoffeeCubit, CoffeeState>(
        listener: (context, state) {
          if (state is ControlPageState) {
            // If you need to react to a state change (e.g., navigation), handle it here
          //  pageController.jumpToPage(state.pageIndex); // Example navigation control
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: PageView(physics: NeverScrollableScrollPhysics(),
              onPageChanged: (index) {
               // BlocProvider.of<CoffeeCubit>(context).updateCurrentIndex(index);
              },
              controller: pageController,
              children: [
                MainPage(),
                detailsPage(), // Correct name for your Details page
              ],
            ),
          );
        },
      ),
    );
  }
}
