import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:ott/watchlistott.dart';
import 'package:video_player/video_player.dart';
class video extends StatefulWidget {
  const video({Key? key}) : super(key: key);

  @override
  _videoState createState() => _videoState();
}

class _videoState extends State<video> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
      autoPlay: true,
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
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
                MaterialPageRoute(builder: (context) => watchl()));
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FlickVideoPlayer(
              flickManager: flickManager,
              flickVideoWithControls: FlickVideoWithControls(
                videoFit: BoxFit.cover,
                controls: FlickPortraitControls(),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text("Picked For You",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 18),),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height *0.20,
              width: MediaQuery.of(context).size.width*1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: a.length,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.50,
                        width: MediaQuery.of(context).size.width * 0.37,
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Recently Played",
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("More Like This",
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
