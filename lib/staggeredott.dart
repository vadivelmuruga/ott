import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ott/homeott.dart';
import 'package:ott/listviewott.dart';
class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  List a =[
    "assets/captainmiller.jpg",
    "assets/joe1.jpg",
    "assets/goodnyt.jpg",
    "assets/dada.jpg",
    "assets/lovetoday.jpg",
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
        title: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,),
              hintText: "Movies,Shows and more",
              filled: true,
              // fillColor: Colors.white,
              suffixIcon: Icon(Icons.mic_none_outlined),
              border: OutlineInputBorder(
                borderSide: BorderSide(),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("People Search For",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18,),),
                ),
              ],
            ),
            StaggeredGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              children: const [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Card(
                    child: Image(image: AssetImage("assets/captainmiller.jpg"),
                    fit: BoxFit.fill,),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    child: Image(image: AssetImage("assets/dada.jpg"),
                    fit: BoxFit.fill,),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    child: Image(image: AssetImage("assets/joe1.jpg"),
                      fit: BoxFit.fill,),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    child: Image(image: AssetImage("assets/goodnyt.jpg"),
                      fit: BoxFit.fill,),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    child: Image(image: AssetImage("assets/joe1.jpg"),
                      fit: BoxFit.fill,),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    child: Image(image: AssetImage("assets/dada.jpg"),
                      fit: BoxFit.fill,),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    child: Image(
                      image: AssetImage("assets/joe1.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Card(
                    child: Image(
                      image: AssetImage("assets/dada.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    child: Image(
                      image: AssetImage("assets/goodnyt.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    child: Image(image: AssetImage("assets/dada.jpg"),
                      fit: BoxFit.fill,),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    child: Image(image: AssetImage("assets/joe1.jpg"),
                      fit: BoxFit.fill,),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    child: Image(image: AssetImage("assets/goodnyt.jpg"),
                      fit: BoxFit.fill,),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Card(
                    child: Image(image: AssetImage("assets/captainmiller.jpg"),
                      fit: BoxFit.fill,),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    child: Image(image: AssetImage("assets/dada.jpg"),
                      fit: BoxFit.fill,),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    child: Image(image: AssetImage("assets/joe1.jpg"),
                      fit: BoxFit.fill,),
                  ),
                ),
              ],
            ),
            ],
        ),
      )
    );
  }
}
