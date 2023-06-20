import 'package:flutter/material.dart';
import 'package:fudy_pro/utils/raouts_utils.dart';
import 'package:fudy_pro/views/components/my_back_buttan.dart';

import '../../utils/color_page.dart';
import '../../utils/product_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    //Catch data in named routing
    Map data = ModalRoute.of(context)!.settings.arguments as Map;

    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: const MyBackButtan(),
        title: const Text("Detail page"),
        centerTitle: true,
        backgroundColor: myCR,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MyRouts.cart_page);
            },
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: h * 0,
              right: w * 0.1,
              // bottom: h * 0.23,
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: Colors.green,
                    blurRadius: 30,
                  )
                ]),
                child: CircleAvatar(
                  radius: 150 - 0.700,
                  foregroundImage: NetworkImage(
                    data['thumbnail'],
                    scale: 20,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: h * 0.50,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Text(
                              data['title'],
                              style: const TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "\$ ${data['price']}",
                              style: TextStyle(
                                fontSize: 28,
                                color: themeColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Column(
                              children: [
                                Text(
                                  data['brand'],
                                  style: const TextStyle(
                                    fontSize: 29,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  data['description'],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  "${data['rating']}",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: DV,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.of(context).pushNamed(MyRouts.cart_page);
          if (!cartItems.contains(data)) {
            cartItems.add(data);
          }
        },
        child: const Icon(
          Icons.add_shopping_cart_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
