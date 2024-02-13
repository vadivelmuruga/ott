import 'package:flutter/material.dart';
import 'package:ott/flic%20videoott.dart';
import 'package:ott/homeott.dart';

import 'listviewott.dart';
class watchl extends StatefulWidget {
  const watchl({super.key});

  @override
  State<watchl> createState() => _watchlState();
}

class _watchlState extends State<watchl> {
  List a =[
    "assets/captainmiller.jpg",
    "assets/caro1.jpg",
    "assets/mahan.jpg",
    "assets/joe1.jpg",
    "assets/goodnyt.jpg",
    "assets/dada.jpg",
  ];
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.30,
                        width: MediaQuery.of(context).size.width*0.95,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage("assets/captainmiller.jpg"),
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: IconButton(
                            icon: Icon(Icons.play_arrow,
                              color: Colors.grey,
                              size: 50,
                            ),
                              onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>video()));
                              },
                          ),
                        )
                    ),
                  ],
                ),
              ],
            ),
            Text("Captain Miller",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18),),
            SizedBox(height: 10,),
            Text("2024 . Tamil . U/A 16+",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 16),),
            SizedBox(height: 20,),
            ElevatedButton.icon(
                onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => video()));
              },
                icon: Icon(Icons.play_arrow),
                label: Text("Watch Latest Free ",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color:Colors.black,fontSize: 16),),
            style: ElevatedButton.styleFrom(
                backgroundColor:Colors.green ,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
            ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Action | Drama | Emotional | Movie",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 16),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Captain Miller, who is reeling from a heartbreak by his village sweetheart,reluctantly enters an arranged to war.",
                style: TextStyle(
                    fontSize: 16),),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: [
                        Icon(Icons.add),
                        Text("Watchlist",
                          style: TextStyle(fontSize: 16),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              Icon(Icons.screen_share),
                              Text("Share",
                                style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              Icon(Icons.download),
                              Text("Download",
                                style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("More Like This",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18),),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.20,
              width: MediaQuery.of(context).size.width*1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: a.length,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.50,
                        width: MediaQuery.of(context).size.width*0.37,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(a[index]),
                              fit: BoxFit.fill,
                            )
                        ),
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Trailers & More",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18),),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.20,
              width: MediaQuery.of(context).size.width*1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: a.length,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.50,
                        width: MediaQuery.of(context).size.width*0.37,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(a[index]),
                              fit: BoxFit.fill,
                            )
                        ),
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
