import 'package:flutter/material.dart';
class subsc extends StatefulWidget {
  const subsc({super.key});

  @override
  State<subsc> createState() => _subscState();
}

class _subscState extends State<subsc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Subscribe now",
            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        ),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Mobile",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Text("₹ 499",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Super",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Text("₹ 899",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Premium Ads Free",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Text("₹ 1499",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ],
          ),
        ],
      ),
    );
  }
}
