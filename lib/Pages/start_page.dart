import 'package:coffee_shop/Pages/page_management.dart';
import 'package:coffee_shop/Widgets/My_signin%20button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/coffee_cubit.dart';
import '../cubit/coffee_state.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoffeeCubit(),
      child: BlocConsumer<CoffeeCubit, CoffeeState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is ControlPageState) {
            return All();
          }
          var cubit = BlocProvider.of<CoffeeCubit>(context);

          return Scaffold(
            backgroundColor: Colors.black,
            body: Stack(
              children: [
                Image.asset(
                  "assets/Images/start.png",
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.65,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.4,
                        width: MediaQuery.sizeOf(context).width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  "Fall in Love with\n Coffee in Blissfil \nDelight!",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  "Welcom to our crazy coffee corner, where\n every cup is a delightful for you.",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ],
                            ),
                            LoginButton(
                                onTap: () {
                                  BlocProvider.of<CoffeeCubit>(context)
                                      .navigateToControl();
                                },
                                radius: 15,
                                String: "Get Started",
                                Color: Colors.white,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.08,
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                List: [Color(0xFFC67C4E), Color(0xFFC67C4E)])
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
