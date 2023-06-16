import 'package:flutter/material.dart';

class MyBackButtan extends StatelessWidget {
  const MyBackButtan ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: Icon(Icons.arrow_back_ios_new_outlined),
    );
  }
}
