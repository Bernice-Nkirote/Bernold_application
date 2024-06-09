import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bernold_application/widgets/widgets.dart';

import '../../models/models.dart';
import '../../models/product_model.dart';

// created the Homescreen class
class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ProductScreen(product: product),
    );
  }

  final Product product;

  const ProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: Icon(Icons.share, color: Colors.white),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.favorite, color: Colors.white),
                  onPressed: () {}),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: Text("ADD TO CART",
                    style: Theme.of(context).textTheme.headline3!),
              ),
            ],
          ),
        ),
      ),
      body: ListView(children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1.5,
            viewportFraction: 0.9,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
          ),
          items: [
            HeroCarouselCard(
              product: product,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.bottomCenter,
                color: Colors.black.withAlpha(50),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width - 10,
                height: 50,
                alignment: Alignment.center,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        '${product.price}',
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ExpansionTile(
              title: Text('Product Information',
                  style: Theme.of(context).textTheme.headline3),
              children: [
                ListTile(
                  title: Text(
                      'This is a product that can make your life easier and keep your vehicle running for longer.',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ExpansionTile(
              title: Text('Delivery Information',
                  style: Theme.of(context).textTheme.headline3),
              children: [
                ListTile(
                  title: Text(
                      'This is a product that can make your life easier and keep your vehicle running for longer.',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ]),
        )
      ]),
    );
  }
}
