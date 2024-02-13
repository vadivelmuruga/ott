import 'package:flutter/material.dart';
import 'package:ott/homeott.dart';
import 'package:ott/listviewott.dart';
import 'package:ott/watchlistott.dart';
class down extends StatefulWidget {
  const down({super.key});

  @override
  State<down> createState() => _downState();
}

class _downState extends State<down> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>home()));
            },
            child: Icon(Icons.arrow_back)),
        title: Text("Downloads",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      ),
      body:SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.top,
            ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  width: MediaQuery.of(context).size.width*0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/nodown.jpg"),
                          fit: BoxFit.fill)
                  ),
                ),
              ),
              Text("No Downloads Available",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Explore and download your favourite movies \n          and shows to watch on the go"),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>watchl()));
              },
                child: Text("Go To Home",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.black, fontSize: 16),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                ),)
            ],
          ),
        ),
      )
    );
  }
}
