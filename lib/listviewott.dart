import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:ott/watchlistott.dart';
import 'homeott.dart';
class splash extends StatefulWidget {
  const splash({super.key});
  // var height,width,size;

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  List a =[
    "assets/captainmiller.jpg",
    "assets/joe1.jpg",
    "assets/goodnyt.jpg",
    "assets/dada.jpg",
    "assets/lovetoday.jpg",
  ];
  List b =[
    "assets/captainmiller.jpg",
    "assets/joe1.jpg",
    "assets/goodnyt.jpg",
    "assets/dada.jpg",
    "assets/lovetoday.jpg",
    "assets/mahan.jpg",
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     height: 200,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //         shape: BoxShape.rectangle,
              //       image: DecorationImage(
              //           image: AssetImage("bird.jpg"),
              //       fit: BoxFit.fitWidth,
              //       )
              //     ),
              //   ),
              // ),
              // Switch(
              //   value: currentBrightness == Brightness.dark,
              //   onChanged: (value) {
              //     setState(() {
              //       currentBrightness =
              //       value ? Brightness.dark : Brightness.light;
              //     });
              //   },
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider.builder(
                    options: CarouselOptions(
                        height:  MediaQuery.of(context).size.height*0.45,
                        aspectRatio: 16/9,
                        viewportFraction: 1,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        onPageChanged:(index,reason){
                          setState(() {
                            currentindex=index;
                          }
                          );
                        }
                    ),
                    itemCount: a.length,
                    itemBuilder: (BuildContext context, int itemindex,
                        intpageviewIndex)
                    {
                      return Container(
                        height: MediaQuery.of(context).size.height*0.45,
                        width: MediaQuery.of(context).size.width*1,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(a[itemindex]),
                              fit: BoxFit.fill),
                        ),
                      );
                    }
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.05,
                    width: MediaQuery.of(context).size.width*0.45,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      shape: BoxShape.rectangle,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.play_arrow,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>watchl()));
                          },
                          child: Text(" Watch Free",
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.05,
                      width: MediaQuery.of(context).size.width*0.10,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        shape: BoxShape.rectangle,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(Icons.add,),
                    ),
                  ),
                ],
              ),
              DotsIndicator(
                dotsCount: 5,
                position: currentindex,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Latest Releases",
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold,),),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.20,
                width: MediaQuery.of(context).size.width*1,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: b.length,
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
                                image: AssetImage(b[index]),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      );
                    }
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Popular Shows",
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.20,
                width: MediaQuery.of(context).size.width*1,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: b.length,
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
                                image: AssetImage(b[index]),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      );
                    }
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Drama Movies",
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.20,
                width: MediaQuery.of(context).size.width*1,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: b.length,
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
                                image: AssetImage(b[index]),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      );
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
