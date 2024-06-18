import 'package:flutter/material.dart';
import 'package:bernold_application/widgets/widgets.dart';

import '../../models/models.dart';

// created the Homescreen class
class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Cart'),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder()),
                onPressed: () {},
                child: Text("GO TO CHECKOUT",
                    style: Theme.of(context).textTheme.displaySmall!),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Purchase goods worth \Kes5,000.00 for FREE Delivery',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(),
                        elevation: 0,
                      ),
                      child: Text(
                        "Add More Items",
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                CartProductCard(product: Product.products[0]),
                CartProductCard(product: Product.products[2]),
              ],
            ),

            // bottom part of screen
            Column(
              children: [
                // create Divider to divide the items to subtotal
                Divider(thickness: 2),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'SUBTOTAL',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text('\Kes400.00',
                              style: Theme.of(context).textTheme.headlineSmall),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'DELIVERY FEE',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text('\Kes200.00',
                              style: Theme.of(context).textTheme.headlineSmall),
                        ],
                      )
                    ],
                  ),
                ),
                Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black.withAlpha(50),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(5.0),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'TOTAL',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(color: Colors.white),
                            ),
                            Text('\Kes500.00',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ))
                ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
