import 'package:flutter/material.dart';

import '../itemDesigns/elctronics_categories.dart';

import '../itemDesigns/mobile_categories.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('All Categories'),
            Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 20),
                Icon(Icons.keyboard_voice),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 4 / 5.4,
                  crossAxisCount: 4,
                ),
                itemCount: cat_items.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => navigaPage[index]));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(cat_items[index])),
                        ),
                        Text(
                          cat_name[index],
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  );
                }),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'More on Flipkart',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                )),
            SizedBox(height: 20),
            GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 4 / 5.4,
                  crossAxisCount: 4,
                ),
                itemCount: catMore_name.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 38,
                        backgroundColor: Colors.pink[50],
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Image(
                            image: AssetImage(catMore_items[index]),
                          ),
                        ),
                      ),
                      Text(
                        catMore_name[index],
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }

  List cat_items = [
    'images/offerzone.jpeg',
    'images/grocat.jpg',
    'images/iphone.jpg',
    'images/fashion.jpg',
    'images/electronics.jpeg',
    'images/toys.jpg',
    'images/sports.jpg',
    'images/furniture.jpg',
    'images/flight.jpg',
    'images/bike and cars.jpg',
    'images/appliances.jpg',
    'images/health.jpg',
    'images/gift cards.jpg'
  ];
  List navigaPage = [
    Mobile(),
    Electronic(),
    Mobile(),
    Mobile(),
    Electronic(),
    Electronic(),
    Mobile(),
    Electronic(),
    Mobile(),
    Electronic(),
    Mobile(),
    Electronic(),
    Mobile()
  ];
  List cat_name = [
    'Offer Zone',
    'Grocery',
    'Mobile',
    'Fashion',
    'Electronics',
    'Toys',
    'Sports',
    'Furniture',
    'Flight',
    'Bikes&Cars',
    'Appliances',
    'Health',
    'Gift Cards'
  ];
  List catMore_items = [
    'images/lightning.png',
    'images/discount.png',
    'images/rss.png',
    'images/credit-card.png',
    'images/photo.png',
    'images/joystick.png',
    'images/live.png',
    'images/add.png',
    'images/seller.jpg'
  ];
  List catMore_name = [
    'Super Coin',
    'Coupons',
    'Feed',
    'Credit',
    'Camera',
    'Games',
    'Live',
    'Plus Zone',
    'Seller'
  ];
}
