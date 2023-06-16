import 'package:flutter/material.dart';
import 'package:fudy_pro/utils/color_page.dart';
import 'package:fudy_pro/utils/product_page.dart';
import 'package:fudy_pro/utils/raouts_utils.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Favourite 😍",
          style: TextStyle(
            color: Colors.green,
            fontSize: 29,
            fontWeight: FontWeight.w300,
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed(MyRouts.cart_page);
          },
              icon: Icon(Icons.shopping_cart_outlined,
              color: Colors.white,
              ),
          ),
        ],
        backgroundColor: myCR,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: favourite.length,
          itemBuilder: (context, index)=> Card(
          child: ListTile(
            leading: CircleAvatar(
              foregroundImage: NetworkImage(
                allPro[index].thumbnail,
              ),
            ),
            title: Text(
              "${allPro[index].price}",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23,
                color: Colors.black,
              ),
            ),
          ),
        ),
        ),
      ),
    );
  }
}
