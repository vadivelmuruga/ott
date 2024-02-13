import 'package:flutter/material.dart';
import 'package:ott/homeott.dart';
import 'package:ott/subscribeott.dart';
import 'package:ott/themeprovider.dart';
import 'package:ott/validationott.dart';
import 'package:provider/provider.dart';
class space extends StatefulWidget {
  const space({super.key});

  @override
  State<space> createState() => _spaceState();
}

class _spaceState extends State<space> {
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
        title: Text("Profile",
        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.10,
              width: MediaQuery.of(context).size.width*0.50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/disney1.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 10,),
            Text("Disney",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 16),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Personal Details"),
                tileColor: Colors.grey,
                trailing: Icon(Icons.more_vert),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                tileColor: Colors.grey,
                trailing: Icon(Icons.more_vert),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.brightness_4),
                  onPressed:(){
                    setState(() {
                      Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                    });
                  },
                ),
                title: Text("Dark&light"),
                tileColor: Colors.grey,
                trailing: Icon(Icons.more_vert),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings/Help"),
                tileColor: Colors.grey,
                trailing: Icon(Icons.more_vert),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>subsc()));
            },
                child: Text("Subscribe",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color:Colors.black,fontSize: 16),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
            ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>valid()));
            },
              child: Text("Log Out",
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black, fontSize: 16),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
