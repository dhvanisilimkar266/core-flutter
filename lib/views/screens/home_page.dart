import 'package:flutter/material.dart';
import 'package:fudy_pro/utils/color_page.dart';
import 'package:fudy_pro/utils/product_page.dart';
import 'package:fudy_pro/utils/raouts_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                  child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_rounded),
                  Text(
                    "Surat",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  Icon(Icons.menu),
                ],
              )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Find The",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 33,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "Best",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Food",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Around you",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 33,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade300),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search),
                    Text(
                      "search your favouirte food ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.close),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 650,
                padding: EdgeInsets.all(5),
                color: myCR,
                width: double.infinity,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 3 / 4),
                    itemCount: allProducts.length,
                    itemBuilder: (context, i) {
                      return Container(
                        color: Colors.amber,
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                        MyRouts.detail_page,
                                        arguments: allProducts[i]);
                                  },
                                  child: Container(
                                    color: Colors.white,
                                    child: Image.network(
                                      allProducts[i]['thumbnail'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )),
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Text(
                                            allProducts[i]['title'],
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Text(
                                            "&${allProducts[i]['price']}",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: FloatingActionButton.small(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed(MyRouts.cart_page);
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
