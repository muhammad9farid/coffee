import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

List num = [];
List<Map<String, dynamic>> dynamicFinal = [];
var r;
var Price;
double totalPrice = 0;
final cobouninput = TextEditingController();
var coboun1 = cobouninput.text;
String cobounn = '';
int orderd = 0;

class _CartScreenState extends State<CartScreen> {
  /*_buildCartItem(Cart cart, index) {
    List<Widget> CartList = [];

    void _incrementCounter() {
      setState(() {
        int count = quant[cart.tag];
        count++;
        print('Add more');
        quant.setAll(cart.tag, [count]);
        dynamicFinal.setAll(num.indexOf(cart.tag), [
          {'name': cart.product_name, 'price': cart.price, 'quantity': count}
        ]);
        print('Quant $quant');
        print('p $p');
        print('${index}');
      });
    }

    void _decrementCounter() {
      setState(() {
        int count = quant[cart.tag];
        count--;
        print('remove one');
        print('${cart.tag}');
        quant.setAll(cart.tag, [count]);
        print('Quant $quant');
        print('p $p');
        print('${count}');
        dynamicFinal.setAll(num.indexOf(cart.tag), [
          {'name': cart.product_name, 'price': cart.price, 'quantity': count}
        ]);
        if (count <= 0) {
          quant[cart.tag] = 0;
          print(cart.tag);
          currentUser.cart.removeAt(num.indexOf(cart.tag));
          num.removeAt(num.indexOf(cart.tag));
          dynamicFinal.removeAt(p.indexOf(cart.tag));
          p.removeAt(p.indexOf(cart.tag));
          context.read<Counter>().decrement();
        }
      });
    }

    Price = quant[cart.tag] * cart.price;
    CartList.add(Container(
      padding: EdgeInsets.all(20.0),
      height: 170.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Container(
                  width: 150.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(cart.imageUrl),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          cart.product_name,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 10.0),
                        FittedBox(
                          child: Container(
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                width: 0.8,
                                color: Colors.black54,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    _decrementCounter();
                                  },
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20.0),
                                Text(
                                  '${quant[cart.tag]}',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 20.0),
                                GestureDetector(
                                  onTap: () {
                                    _incrementCounter();
                                  },
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
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
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Text(
                      'LE ${Price.toInt()}',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentUser.cart.removeAt(num.indexOf(cart.tag));
                          num.removeAt(num.indexOf(cart.tag));
                          dynamicFinal.removeAt(p.indexOf(cart.tag));
                          p.removeAt(p.indexOf(cart.tag));
                          quant.setAll(cart.tag, [0]);
                          context.read<Counter>().decrement();
                        });
                      },
                      icon: Icon(Icons.delete)),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
    return Column(children: CartList);
  }*/

  @override
  Widget build(BuildContext context) {
    totalPrice = 0;
    /*  currentUser.cart.forEach((Cart cart) {
      totalPrice += quant[cart.tag] * cart.price;
      if (num.length < 1) {
        num.add(cart.tag);
      }
      if (num.length >= 1) {
        for (int i = 0; i < num.length; i++) {
          if (num[i] == cart.tag) {
            r = 1;
          }
        }
        if (r != 1) {
          num.add(cart.tag);
        }
      }
      print('${r}');
      r = 0; //for repeated
      print('object${num}');
    });
*/
    return Scaffold(
      body: ListView.separated(
        itemCount: //currentUser.cart.length + 1,
            5,
        itemBuilder: (BuildContext context, int index) {
          /*if (index < currentUser.cart.length) {
            Cart cart = currentUser.cart[index];
            return _buildCartItem(cart, index);
          }*/
          return Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Estimated Delivery Time:',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '25 min',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /* Container(
                      width: 200,
                      child: MyTextFeild(
                        onChanged: (coboun) {
                          setState(() {
                            coboun1 = coboun;
                            cobounn = coboun;
                          });
                        },
                        controller: cobouninput,
                        // Color:Colors.white,
                        hintText: 'Coboun',
                        obscureText: false,
                        Color: cobounn == 'Egypt'
                            ? Colors.green.shade600
                            : Colors.red,
                        Text: 'Coboun',
                      ),
                    ),*/
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          child: Text(
                        'Please enter a valid coboun',
                        style: TextStyle(
                          fontSize: 10,
                          color: cobounn == 'Egypt'
                              ? Colors.transparent
                              : Colors.red,
                        ),
                      )),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total Cost:',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      cobounn == 'Egypt'
                          ? 'LE ${(totalPrice * (0.8)).toStringAsFixed(2)}'
                          : 'LE ${totalPrice.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Colors.green[700],
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80.0),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 1.0,
            color: Colors.grey,
          );
        },
      ),
      bottomSheet: Container(),
      /*Container(
        color: Colors.transparent,
        height: 70.0,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Flat3dButton(
            color: Colors.green,
            onPressed: () {
              print('clicked');
              print('${dynamicFinal}');
              post();
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'CHECKOUT',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
            ),
          ),
        ),
      ),*/
    );
  }
}
